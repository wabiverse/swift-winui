// WARNING: Please don't edit this file. It was generated by Swift/WinRT v0.0.1
// swiftlint:disable all
import Foundation
@_spi(WinRTInternal) @_spi(WinRTImplements) import WindowsFoundation
import CWinRT

/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedaction)
public typealias NotifyCollectionChangedAction = __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CNotifyCollectionChangedAction
/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedeventargs)
open class NotifyCollectionChangedEventArgs : WinRTClass {
    private typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Interop.INotifyCollectionChangedEventArgs
    private typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CINotifyCollectionChangedEventArgs
    private lazy var _default: SwiftABI! = getInterfaceForCaching()
    @_spi(WinRTInternal)
    override open func _getABI<T>() -> UnsafeMutablePointer<T>? {
        if T.self == CABI.self {
            return RawPointer(_default)
        }
        return super._getABI()
    }

    @_spi(WinRTInternal)
    public static func from(abi: ComPtr<__x_ABI_CMicrosoft_CUI_CXaml_CInterop_CINotifyCollectionChangedEventArgs>?) -> NotifyCollectionChangedEventArgs? {
        guard let abi = abi else { return nil }
        return UnsealedWinRTClassWrapper<Composable>.unwrapFrom(base: abi)
    }

    @_spi(WinRTInternal)
    public init(fromAbi: WindowsFoundation.IInspectable) {
        super.init(fromAbi)
    }

    @_spi(WinRTInternal)
    public init<Composable: ComposableImpl>(
        composing: Composable.Type,
        _ createCallback: (UnsealedWinRTClassWrapper<Composable>?, inout WindowsFoundation.IInspectable?) -> Composable.Default.SwiftABI)
    {
        super.init()
        MakeComposed(composing: composing, (self as! Composable.Class), createCallback)
    }
    override open func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        return super.queryInterface(iid)
    }
    private static var _INotifyCollectionChangedEventArgsFactory : __ABI_Microsoft_UI_Xaml_Interop.INotifyCollectionChangedEventArgsFactory =  try! RoGetActivationFactory(HString("Microsoft.UI.Xaml.Interop.NotifyCollectionChangedEventArgs"))

    public init(_ action: NotifyCollectionChangedAction, _ newItems: AnyIBindableVector!, _ oldItems: AnyIBindableVector!, _ newIndex: Int32, _ oldIndex: Int32) {
        super.init()
        MakeComposed(composing: Self.Composable.self, self) { baseInterface, innerInterface in 
            try! Self._INotifyCollectionChangedEventArgsFactory.CreateInstanceWithAllParametersImpl(action, newItems, oldItems, newIndex, oldIndex, baseInterface, &innerInterface)
        }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedeventargs.action)
    public var action : NotifyCollectionChangedAction {
        get { try! _default.get_ActionImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedeventargs.newitems)
    public var newItems : AnyIBindableVector! {
        get { try! _default.get_NewItemsImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedeventargs.newstartingindex)
    public var newStartingIndex : Int32 {
        get { try! _default.get_NewStartingIndexImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedeventargs.olditems)
    public var oldItems : AnyIBindableVector! {
        get { try! _default.get_OldItemsImpl() }
    }

    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.notifycollectionchangedeventargs.oldstartingindex)
    public var oldStartingIndex : Int32 {
        get { try! _default.get_OldStartingIndexImpl() }
    }

    internal enum INotifyCollectionChangedEventArgs : ComposableImpl {
        internal typealias CABI = C_IInspectable
        internal typealias SwiftABI = WindowsFoundation.IInspectable
        internal typealias Class = NotifyCollectionChangedEventArgs
        internal typealias SwiftProjection = WinRTClassWeakReference<Class>
        internal enum Default : AbiInterface {
            internal typealias CABI = __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CINotifyCollectionChangedEventArgs
            internal typealias SwiftABI = __ABI_Microsoft_UI_Xaml_Interop.INotifyCollectionChangedEventArgs
        }
    }
    internal typealias Composable = INotifyCollectionChangedEventArgs
    deinit {
        _default = nil
    }
}

public typealias NotifyCollectionChangedEventHandler = (Any?, NotifyCollectionChangedEventArgs?) -> ()
/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindableiterable)
public protocol IBindableIterable : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindableiterable.first)
    func first() throws -> WinUI.AnyIBindableIterator!
}

extension IBindableIterable {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Microsoft_UI_Xaml_Interop.IBindableIterableWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.IBindableIterableWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBindableIterable = any IBindableIterable

/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindableiterator)
public protocol IBindableIterator : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindableiterator.movenext)
    func moveNext() throws -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindableiterator.current)
    var current: Any! { get }
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindableiterator.hascurrent)
    var hasCurrent: Bool { get }
}

extension IBindableIterator {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Microsoft_UI_Xaml_Interop.IBindableIteratorWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.IBindableIteratorWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBindableIterator = any IBindableIterator

/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector)
public protocol IBindableVector : IBindableIterable {
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.getat)
    func getAt(_ index: UInt32) throws -> Any!
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.getview)
    func getView() throws -> WinUI.AnyIBindableVectorView!
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.indexof)
    func indexOf(_ value: Any!, _ index: inout UInt32) throws -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.setat)
    func setAt(_ index: UInt32, _ value: Any!) throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.insertat)
    func insertAt(_ index: UInt32, _ value: Any!) throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.removeat)
    func removeAt(_ index: UInt32) throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.append)
    func append(_ value: Any!) throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.removeatend)
    func removeAtEnd() throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.clear)
    func clear() throws
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevector.size)
    var size: UInt32 { get }
}

extension IBindableVector {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Microsoft_UI_Xaml_Interop.IBindableVectorWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.IBindableVectorWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Microsoft_UI_Xaml_Interop.IBindableIterableWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.IBindableIterableWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBindableVector = any IBindableVector

/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevectorview)
public protocol IBindableVectorView : IBindableIterable {
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevectorview.getat)
    func getAt(_ index: UInt32) throws -> Any!
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevectorview.indexof)
    func indexOf(_ value: Any!, _ index: inout UInt32) throws -> Bool
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.ibindablevectorview.size)
    var size: UInt32 { get }
}

extension IBindableVectorView {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Microsoft_UI_Xaml_Interop.IBindableVectorViewWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.IBindableVectorViewWrapper(self)
                return wrapper!.queryInterface(iid)
            case __ABI_Microsoft_UI_Xaml_Interop.IBindableIterableWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.IBindableIterableWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyIBindableVectorView = any IBindableVectorView

/// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.inotifycollectionchanged)
public protocol INotifyCollectionChanged : WinRTInterface {
    /// [Open Microsoft documentation](https://learn.microsoft.com/windows/windows-app-sdk/api/winrt/microsoft.ui.xaml.interop.inotifycollectionchanged.collectionchanged)
    var collectionChanged: Event<NotifyCollectionChangedEventHandler> { get }
}

public extension EventSource where Handler == NotifyCollectionChangedEventHandler {
    func invoke(_ sender: Any!, _ e: NotifyCollectionChangedEventArgs!) {
        for handler in getInvocationList() {
            handler(sender, e)
        }
    }
}

extension INotifyCollectionChanged {
    public func queryInterface(_ iid: WindowsFoundation.IID) -> IUnknownRef? {
        switch iid {
            case __ABI_Microsoft_UI_Xaml_Interop.INotifyCollectionChangedWrapper.IID:
                let wrapper = __ABI_Microsoft_UI_Xaml_Interop.INotifyCollectionChangedWrapper(self)
                return wrapper!.queryInterface(iid)
            default: return nil
        }
    }
}
public typealias AnyINotifyCollectionChanged = any INotifyCollectionChanged

extension WinUI.NotifyCollectionChangedAction {
    public static var add : WinUI.NotifyCollectionChangedAction {
        __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CNotifyCollectionChangedAction_Add
    }
    public static var remove : WinUI.NotifyCollectionChangedAction {
        __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CNotifyCollectionChangedAction_Remove
    }
    public static var replace : WinUI.NotifyCollectionChangedAction {
        __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CNotifyCollectionChangedAction_Replace
    }
    public static var move : WinUI.NotifyCollectionChangedAction {
        __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CNotifyCollectionChangedAction_Move
    }
    public static var reset : WinUI.NotifyCollectionChangedAction {
        __x_ABI_CMicrosoft_CUI_CXaml_CInterop_CNotifyCollectionChangedAction_Reset
    }
}
extension WinUI.NotifyCollectionChangedAction: @retroactive Hashable, @retroactive Codable {}
