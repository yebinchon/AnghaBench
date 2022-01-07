
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IOleClientSite_iface; scalar_t__ ole_obj; } ;
typedef TYPE_1__ WebBrowserContainer ;
struct TYPE_5__ {TYPE_1__* web_browser; } ;
typedef int IOleInPlaceSite ;
typedef int HRESULT ;
typedef TYPE_2__ HHInfo ;


 int IID_IOleInPlaceSite ;
 int IOleClientSite_Release (int *) ;
 int IOleInPlaceSite_OnInPlaceDeactivate (int *) ;
 int IOleInPlaceSite_Release (int *) ;
 int IOleObject_QueryInterface (scalar_t__,int *,void**) ;
 int IOleObject_SetClientSite (scalar_t__,int *) ;
 scalar_t__ SUCCEEDED (int ) ;

void ReleaseWebBrowser(HHInfo *info)
{
    WebBrowserContainer *container = info->web_browser;
    HRESULT hres;

    if(!container)
        return;

    if(container->ole_obj) {
        IOleInPlaceSite *inplace;

        hres = IOleObject_QueryInterface(container->ole_obj, &IID_IOleInPlaceSite, (void**)&inplace);
        if(SUCCEEDED(hres)) {
            IOleInPlaceSite_OnInPlaceDeactivate(inplace);
            IOleInPlaceSite_Release(inplace);
        }

        IOleObject_SetClientSite(container->ole_obj, ((void*)0));
    }

    info->web_browser = ((void*)0);
    IOleClientSite_Release(&container->IOleClientSite_iface);
}
