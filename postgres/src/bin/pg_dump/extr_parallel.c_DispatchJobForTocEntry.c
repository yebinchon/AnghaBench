
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buf ;
typedef int TocEntry ;
typedef int T_Action ;
struct TYPE_8__ {int ** te; TYPE_1__* parallelSlot; } ;
struct TYPE_7__ {void* callback_data; int callback; int workerStatus; } ;
typedef TYPE_2__ ParallelState ;
typedef int ParallelCompletionPtr ;
typedef int ArchiveHandle ;


 int GetIdleWorker (TYPE_2__*) ;
 int NO_SLOT ;
 int WFW_ONE_IDLE ;
 int WRKR_WORKING ;
 int WaitForWorkers (int *,TYPE_2__*,int ) ;
 int buildWorkerCommand (int *,int *,int ,char*,int) ;
 int sendMessageToWorker (TYPE_2__*,int,char*) ;

void
DispatchJobForTocEntry(ArchiveHandle *AH,
        ParallelState *pstate,
        TocEntry *te,
        T_Action act,
        ParallelCompletionPtr callback,
        void *callback_data)
{
 int worker;
 char buf[256];


 while ((worker = GetIdleWorker(pstate)) == NO_SLOT)
  WaitForWorkers(AH, pstate, WFW_ONE_IDLE);


 buildWorkerCommand(AH, te, act, buf, sizeof(buf));

 sendMessageToWorker(pstate, worker, buf);


 pstate->parallelSlot[worker].workerStatus = WRKR_WORKING;
 pstate->parallelSlot[worker].callback = callback;
 pstate->parallelSlot[worker].callback_data = callback_data;
 pstate->te[worker] = te;
}
