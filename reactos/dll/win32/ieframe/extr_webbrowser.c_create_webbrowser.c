
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; int version; TYPE_8__ IWebBrowser2_iface; int doc_host; int hlink_frame; void* tool_bar; void* status_bar; void* address_bar; void* menu_bar; void* visible; TYPE_1__ IServiceProvider_iface; } ;
typedef TYPE_2__ WebBrowser ;
typedef int REFIID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int DocHostContainerVtbl ;
 int DocHost_Init (int *,TYPE_8__*,int *) ;
 int HlinkFrame_Init (int *,int *,int *) ;
 int IWebBrowser2_QueryInterface (TYPE_8__*,int ,void**) ;
 int IWebBrowser2_Release (TYPE_8__*) ;
 int ServiceProviderVtbl ;
 int TRACE (char*,int *,int ,void**,int) ;
 void* VARIANT_TRUE ;
 int WebBrowser2Vtbl ;
 int WebBrowser_ClassInfo_Init (TYPE_2__*) ;
 int WebBrowser_OleObject_Init (TYPE_2__*) ;
 int WebBrowser_Persist_Init (TYPE_2__*) ;
 int WebBrowser_ViewObject_Init (TYPE_2__*) ;
 int debugstr_guid (int ) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int lock_module () ;

__attribute__((used)) static HRESULT create_webbrowser(int version, IUnknown *outer, REFIID riid, void **ppv)
{
    WebBrowser *ret;
    HRESULT hres;

    TRACE("(%p %s %p) version=%d\n", outer, debugstr_guid(riid), ppv, version);

    ret = heap_alloc_zero(sizeof(WebBrowser));

    ret->IWebBrowser2_iface.lpVtbl = &WebBrowser2Vtbl;
    ret->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
    ret->ref = 1;
    ret->version = version;

    DocHost_Init(&ret->doc_host, &ret->IWebBrowser2_iface, &DocHostContainerVtbl);

    ret->visible = VARIANT_TRUE;
    ret->menu_bar = VARIANT_TRUE;
    ret->address_bar = VARIANT_TRUE;
    ret->status_bar = VARIANT_TRUE;
    ret->tool_bar = VARIANT_TRUE;

    WebBrowser_OleObject_Init(ret);
    WebBrowser_ViewObject_Init(ret);
    WebBrowser_Persist_Init(ret);
    WebBrowser_ClassInfo_Init(ret);

    HlinkFrame_Init(&ret->hlink_frame, (IUnknown*)&ret->IWebBrowser2_iface, &ret->doc_host);

    lock_module();

    hres = IWebBrowser2_QueryInterface(&ret->IWebBrowser2_iface, riid, ppv);

    IWebBrowser2_Release(&ret->IWebBrowser2_iface);
    return hres;
}
