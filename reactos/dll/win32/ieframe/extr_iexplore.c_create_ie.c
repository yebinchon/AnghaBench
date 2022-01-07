
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ref; int entry; int doc_host; int IWebBrowser2_iface; int hlink_frame; } ;
typedef TYPE_1__ InternetExplorer ;
typedef int IUnknown ;
typedef int HRESULT ;


 int DocHostContainerVtbl ;
 int DocHost_Init (int *,int *,int *) ;
 int E_OUTOFMEMORY ;
 int HlinkFrame_Init (int *,int *,int *) ;
 int InterlockedIncrement (int *) ;
 int InternetExplorer_WebBrowser_Init (TYPE_1__*) ;
 int S_OK ;
 int create_frame_hwnd (TYPE_1__*) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int ie_list ;
 int list_add_tail (int *,int *) ;
 int obj_cnt ;

__attribute__((used)) static HRESULT create_ie(InternetExplorer **ret_obj)
{
    InternetExplorer *ret;

    ret = heap_alloc_zero(sizeof(InternetExplorer));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->ref = 1;

    DocHost_Init(&ret->doc_host, &ret->IWebBrowser2_iface, &DocHostContainerVtbl);

    InternetExplorer_WebBrowser_Init(ret);

    HlinkFrame_Init(&ret->hlink_frame, (IUnknown*)&ret->IWebBrowser2_iface, &ret->doc_host);

    create_frame_hwnd(ret);

    InterlockedIncrement(&obj_cnt);
    list_add_tail(&ie_list, &ret->entry);
    *ret_obj = ret;
    return S_OK;
}
