
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * pstate; } ;
struct TYPE_7__ {int numWorkers; struct TYPE_7__* parallelSlot; struct TYPE_7__* te; int pipeWrite; int pipeRead; } ;
typedef TYPE_1__ ParallelState ;
typedef int ArchiveHandle ;


 int Assert (int ) ;
 int IsEveryWorkerIdle (TYPE_1__*) ;
 int WaitForTerminatingWorkers (TYPE_1__*) ;
 int closesocket (int ) ;
 int free (TYPE_1__*) ;
 int set_cancel_pstate (int *) ;
 TYPE_2__ shutdown_info ;

void
ParallelBackupEnd(ArchiveHandle *AH, ParallelState *pstate)
{
 int i;


 if (pstate->numWorkers == 1)
  return;


 Assert(IsEveryWorkerIdle(pstate));


 for (i = 0; i < pstate->numWorkers; i++)
 {
  closesocket(pstate->parallelSlot[i].pipeRead);
  closesocket(pstate->parallelSlot[i].pipeWrite);
 }


 WaitForTerminatingWorkers(pstate);





 shutdown_info.pstate = ((void*)0);
 set_cancel_pstate(((void*)0));


 free(pstate->te);
 free(pstate->parallelSlot);
 free(pstate);
}
