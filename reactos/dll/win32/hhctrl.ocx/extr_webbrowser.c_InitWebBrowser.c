
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct IUnknown {int dummy; } ;
struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_14__ {int ref; int web_browser; scalar_t__ ole_obj; TYPE_8__ IOleClientSite_iface; int hwndWindow; TYPE_3__ IDocHostUIHandler_iface; TYPE_2__ IOleInPlaceFrame_iface; TYPE_1__ IOleInPlaceSite_iface; } ;
typedef TYPE_4__ WebBrowserContainer ;
struct TYPE_15__ {TYPE_4__* web_browser; } ;
typedef int RECT ;
typedef int IOleInPlaceObject ;
typedef int HWND ;
typedef int HRESULT ;
typedef TYPE_5__ HHInfo ;
typedef int BOOL ;


 int CLSID_WebBrowser ;
 int DocHostUIHandlerVtbl ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int GetClientRect (int ,int *) ;
 int IID_IOleInPlaceObject ;
 int IID_IOleObject ;
 int IID_IWebBrowser2 ;
 int IOleInPlaceObject_Release (int *) ;
 int IOleInPlaceObject_SetObjectRects (int *,int *,int *) ;
 int IOleObject_DoVerb (scalar_t__,int ,int *,TYPE_8__*,int,int ,int *) ;
 int IOleObject_QueryInterface (scalar_t__,int *,void**) ;
 int MyIStorage ;
 int OLEIVERB_SHOW ;
 int OLERENDER_DRAW ;
 int OleClientSiteVtbl ;
 int OleCreate (int *,int *,int ,int ,TYPE_8__*,int *,void**) ;
 int OleInPlaceFrameVtbl ;
 int OleInPlaceSiteVtbl ;
 int OleSetContainedObject (struct IUnknown*,int ) ;
 int ReleaseWebBrowser (TYPE_5__*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 TYPE_4__* heap_alloc_zero (int) ;

BOOL InitWebBrowser(HHInfo *info, HWND hwndParent)
{
    WebBrowserContainer *container;
    IOleInPlaceObject *inplace;
    HRESULT hr;
    RECT rc;

    container = heap_alloc_zero(sizeof(*container));
    if (!container)
        return FALSE;

    container->IOleClientSite_iface.lpVtbl = &OleClientSiteVtbl;
    container->IOleInPlaceSite_iface.lpVtbl = &OleInPlaceSiteVtbl;
    container->IOleInPlaceFrame_iface.lpVtbl = &OleInPlaceFrameVtbl;
    container->IDocHostUIHandler_iface.lpVtbl = &DocHostUIHandlerVtbl;
    container->ref = 1;
    container->hwndWindow = hwndParent;

    info->web_browser = container;

    hr = OleCreate(&CLSID_WebBrowser, &IID_IOleObject, OLERENDER_DRAW, 0,
                   &container->IOleClientSite_iface, &MyIStorage,
                   (void **)&container->ole_obj);

    if (FAILED(hr)) goto error;

    GetClientRect(hwndParent, &rc);

    hr = OleSetContainedObject((struct IUnknown *)container->ole_obj, TRUE);
    if (FAILED(hr)) goto error;

    hr = IOleObject_DoVerb(container->ole_obj, OLEIVERB_SHOW, ((void*)0),
                           &container->IOleClientSite_iface, -1, hwndParent, &rc);
    if (FAILED(hr)) goto error;

    hr = IOleObject_QueryInterface(container->ole_obj, &IID_IOleInPlaceObject, (void**)&inplace);
    if (FAILED(hr)) goto error;

    IOleInPlaceObject_SetObjectRects(inplace, &rc, &rc);
    IOleInPlaceObject_Release(inplace);

    hr = IOleObject_QueryInterface(container->ole_obj, &IID_IWebBrowser2, (void **)&container->web_browser);
    if (SUCCEEDED(hr))
        return TRUE;

error:
    ReleaseWebBrowser(info);
    return FALSE;
}
