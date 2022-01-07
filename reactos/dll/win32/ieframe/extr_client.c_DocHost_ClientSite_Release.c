
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ view; scalar_t__ browser_service; } ;
typedef TYPE_1__ DocHost ;


 int IOleDocumentView_Release (scalar_t__) ;
 int detach_browser_service (scalar_t__) ;

void DocHost_ClientSite_Release(DocHost *This)
{
    if(This->browser_service)
        detach_browser_service(This->browser_service);
    if(This->view)
        IOleDocumentView_Release(This->view);
}
