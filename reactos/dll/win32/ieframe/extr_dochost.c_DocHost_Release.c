
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ log; scalar_t__ length; } ;
struct TYPE_8__ {scalar_t__ url; TYPE_1__ travellog; int cps; scalar_t__ shell_ui_helper; } ;
typedef TYPE_2__ DocHost ;


 int ConnectionPointContainer_Destroy (int *) ;
 int DocHost_ClientSite_Release (TYPE_2__*) ;
 int IShellUIHelper2_Release (scalar_t__) ;
 int abort_dochost_tasks (TYPE_2__*,int *) ;
 int free_travellog_entry (scalar_t__) ;
 int heap_free (scalar_t__) ;
 int release_dochost_client (TYPE_2__*) ;

void DocHost_Release(DocHost *This)
{
    if(This->shell_ui_helper)
        IShellUIHelper2_Release(This->shell_ui_helper);

    abort_dochost_tasks(This, ((void*)0));
    release_dochost_client(This);
    DocHost_ClientSite_Release(This);

    ConnectionPointContainer_Destroy(&This->cps);

    while(This->travellog.length)
        free_travellog_entry(This->travellog.log + --This->travellog.length);
    heap_free(This->travellog.log);

    heap_free(This->url);
}
