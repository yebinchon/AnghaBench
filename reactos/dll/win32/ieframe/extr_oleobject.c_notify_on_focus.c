
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client; } ;
typedef TYPE_1__ WebBrowser ;
typedef int IOleControlSite ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int IID_IOleControlSite ;
 int IOleClientSite_QueryInterface (int ,int *,void**) ;
 int IOleControlSite_OnFocus (int *,int ) ;
 int IOleControlSite_Release (int *) ;

__attribute__((used)) static void notify_on_focus(WebBrowser *This, BOOL got_focus)
{
    IOleControlSite *control_site;
    HRESULT hres;

    if(!This->client)
        return;

    hres = IOleClientSite_QueryInterface(This->client, &IID_IOleControlSite, (void**)&control_site);
    if(FAILED(hres))
        return;

    IOleControlSite_OnFocus(control_site, got_focus);
    IOleControlSite_Release(control_site);
}
