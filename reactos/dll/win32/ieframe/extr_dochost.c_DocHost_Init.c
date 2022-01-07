
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int loading_pos; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_15__ {int cps; TYPE_3__ travellog; int task_queue; int ready_state; int const* container_vtbl; int * wb; TYPE_2__ IPropertyNotifySink_iface; TYPE_1__ IOleCommandTarget_iface; TYPE_4__ IDocHostUIHandler2_iface; } ;
typedef int IWebBrowser2 ;
typedef int IUnknown ;
typedef int IDocHostContainerVtbl ;
typedef TYPE_5__ DocHost ;


 int ConnectionPointContainer_Init (int *,int *) ;
 int DocHostUIHandler2Vtbl ;
 int DocHost_ClientSite_Init (TYPE_5__*) ;
 int DocHost_Frame_Init (TYPE_5__*) ;
 int IEHTMLWindow_Init (TYPE_5__*) ;
 int NewWindowManager_Init (TYPE_5__*) ;
 int OleCommandTargetVtbl ;
 int PropertyNotifySinkVtbl ;
 int READYSTATE_UNINITIALIZED ;
 int list_init (int *) ;

void DocHost_Init(DocHost *This, IWebBrowser2 *wb, const IDocHostContainerVtbl* container)
{
    This->IDocHostUIHandler2_iface.lpVtbl = &DocHostUIHandler2Vtbl;
    This->IOleCommandTarget_iface.lpVtbl = &OleCommandTargetVtbl;
    This->IPropertyNotifySink_iface.lpVtbl = &PropertyNotifySinkVtbl;

    This->wb = wb;
    This->container_vtbl = container;

    This->ready_state = READYSTATE_UNINITIALIZED;
    list_init(&This->task_queue);

    This->travellog.loading_pos = -1;

    DocHost_ClientSite_Init(This);
    DocHost_Frame_Init(This);

    ConnectionPointContainer_Init(&This->cps, (IUnknown*)wb);
    IEHTMLWindow_Init(This);
    NewWindowManager_Init(This);
}
