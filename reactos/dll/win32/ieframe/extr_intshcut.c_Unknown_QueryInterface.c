
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IPropertySetStorage_iface; int IPersistFile_iface; int IUniformResourceLocatorW_iface; int IUniformResourceLocatorA_iface; } ;
typedef int REFIID ;
typedef int * PVOID ;
typedef TYPE_1__ InternetShortcut ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_NOINTERFACE ;
 int FIXME (char*,...) ;
 int IID_IPersistFile ;
 int IID_IPropertySetStorage ;
 int IID_IShellLinkA ;
 int IID_IShellLinkW ;
 int IID_IUniformResourceLocatorA ;
 int IID_IUniformResourceLocatorW ;
 int IID_IUnknown ;
 int IUnknown_AddRef (int *) ;
 scalar_t__ IsEqualGUID (int *,int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,int ,int **) ;
 int debugstr_guid (int ) ;

__attribute__((used)) static HRESULT Unknown_QueryInterface(InternetShortcut *This, REFIID riid, PVOID *ppvObject)
{
    TRACE("(%p, %s, %p)\n", This, debugstr_guid(riid), ppvObject);
    *ppvObject = ((void*)0);
    if (IsEqualGUID(&IID_IUnknown, riid))
        *ppvObject = &This->IUniformResourceLocatorA_iface;
    else if (IsEqualGUID(&IID_IUniformResourceLocatorA, riid))
        *ppvObject = &This->IUniformResourceLocatorA_iface;
    else if (IsEqualGUID(&IID_IUniformResourceLocatorW, riid))
        *ppvObject = &This->IUniformResourceLocatorW_iface;
    else if (IsEqualGUID(&IID_IPersistFile, riid))
        *ppvObject = &This->IPersistFile_iface;
    else if (IsEqualGUID(&IID_IPropertySetStorage, riid))
        *ppvObject = &This->IPropertySetStorage_iface;
    else if (IsEqualGUID(&IID_IShellLinkA, riid))
    {
        FIXME("The IShellLinkA interface is not yet supported by InternetShortcut\n");
        return E_NOINTERFACE;
    }
    else if (IsEqualGUID(&IID_IShellLinkW, riid))
    {
        FIXME("The IShellLinkW interface is not yet supported by InternetShortcut\n");
        return E_NOINTERFACE;
    }
    else
    {
        FIXME("Interface with GUID %s not yet implemented by InternetShortcut\n", debugstr_guid(riid));
        return E_NOINTERFACE;
    }
    IUnknown_AddRef((IUnknown*)*ppvObject);
    return S_OK;
}
