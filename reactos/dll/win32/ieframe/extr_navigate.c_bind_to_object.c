
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int IOleClientSite_iface; } ;
typedef int LPOLESTR ;
typedef int LPCWSTR ;
typedef int IUnknown ;
typedef int IMoniker ;
typedef int IBindStatusCallback ;
typedef int IBindCtx ;
typedef int HRESULT ;
typedef TYPE_1__ DocHost ;


 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int IBindCtx_RegisterObjectParam (int *,int ,int *) ;
 int IID_IUnknown ;
 int IMoniker_AddRef (int *) ;
 int IMoniker_BindToObject (int *,int *,int *,int *,void**) ;
 int IMoniker_GetDisplayName (int *,int ,int *,int **) ;
 int IMoniker_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ SZ_HTML_CLIENTSITE_OBJECTPARAM ;
 int S_OK ;
 int create_moniker (int ,int **) ;
 int set_dochost_url (TYPE_1__*,int *) ;
 scalar_t__ try_application_url (int ) ;

__attribute__((used)) static HRESULT bind_to_object(DocHost *This, IMoniker *mon, LPCWSTR url, IBindCtx *bindctx,
                              IBindStatusCallback *callback)
{
    IUnknown *unk = ((void*)0);
    WCHAR *display_name;
    HRESULT hres;

    if(mon) {
        IMoniker_AddRef(mon);
    }else {
        hres = create_moniker(url, &mon);
        if(FAILED(hres))
            return hres;
    }

    hres = IMoniker_GetDisplayName(mon, 0, ((void*)0), &display_name);
    if(FAILED(hres)) {
        FIXME("GetDisplayName failed: %08x\n", hres);
        IMoniker_Release(mon);
        return hres;
    }

    hres = set_dochost_url(This, display_name);
    CoTaskMemFree(display_name);
    if(FAILED(hres)) {
        IMoniker_Release(mon);
        return hres;
    }

    IBindCtx_RegisterObjectParam(bindctx, (LPOLESTR)SZ_HTML_CLIENTSITE_OBJECTPARAM,
                                 (IUnknown*)&This->IOleClientSite_iface);

    hres = IMoniker_BindToObject(mon, bindctx, ((void*)0), &IID_IUnknown, (void**)&unk);
    if(SUCCEEDED(hres)) {
        hres = S_OK;
        if(unk)
            IUnknown_Release(unk);
    }else if(try_application_url(url)) {
        hres = S_OK;
    }else {
        FIXME("BindToObject failed: %08x\n", hres);
    }

    IMoniker_Release(mon);
    return S_OK;
}
