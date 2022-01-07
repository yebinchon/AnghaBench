
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {int * lpDevModeOnInit; TYPE_1__* DeskExtInterface; } ;
struct TYPE_4__ {int Context; int (* SetCurrentMode ) (int ,int *) ;} ;
typedef TYPE_2__* PDESKMONITOR ;


 int stub1 (int ,int *) ;

__attribute__((used)) static VOID
ResetMonitorChanges(PDESKMONITOR This)
{
    if (This->DeskExtInterface != ((void*)0) && This->lpDevModeOnInit != ((void*)0))
    {
        This->DeskExtInterface->SetCurrentMode(This->DeskExtInterface->Context,
                                               This->lpDevModeOnInit);
    }
}
