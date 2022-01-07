
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_15__ {TYPE_2__ IServiceProvider_iface; TYPE_1__ IDispatch_iface; TYPE_6__ IOleControlSite_iface; TYPE_5__ IOleDocumentSite_iface; TYPE_4__ IOleInPlaceSiteEx_iface; TYPE_3__ IOleClientSite_iface; } ;
typedef TYPE_7__ DocHost ;


 int DispatchVtbl ;
 int OleClientSiteVtbl ;
 int OleControlSiteVtbl ;
 int OleDocumentSiteVtbl ;
 int OleInPlaceSiteExVtbl ;
 int ServiceProviderVtbl ;

void DocHost_ClientSite_Init(DocHost *This)
{
    This->IOleClientSite_iface.lpVtbl = &OleClientSiteVtbl;
    This->IOleInPlaceSiteEx_iface.lpVtbl = &OleInPlaceSiteExVtbl;
    This->IOleDocumentSite_iface.lpVtbl = &OleDocumentSiteVtbl;
    This->IOleControlSite_iface.lpVtbl = &OleControlSiteVtbl;
    This->IDispatch_iface.lpVtbl = &DispatchVtbl;
    This->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
}
