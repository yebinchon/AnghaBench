
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_6__ {scalar_t__ pid; scalar_t__ workerStatus; uintptr_t hThread; } ;
struct TYPE_5__ {int numWorkers; int ** te; TYPE_2__* parallelSlot; } ;
typedef TYPE_1__ ParallelState ;
typedef TYPE_2__ ParallelSlot ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int Assert (int) ;
 int CloseHandle (scalar_t__) ;
 int HasEveryWorkerTerminated (TYPE_1__*) ;
 int INFINITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ WAIT_FAILED ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WRKR_TERMINATED ;
 scalar_t__ WaitForMultipleObjects (int,scalar_t__*,int,int ) ;
 int free (scalar_t__*) ;
 scalar_t__* pg_malloc (int) ;
 scalar_t__ wait (int*) ;

__attribute__((used)) static void
WaitForTerminatingWorkers(ParallelState *pstate)
{
 while (!HasEveryWorkerTerminated(pstate))
 {
  ParallelSlot *slot = ((void*)0);
  int j;



  int status;
  pid_t pid = wait(&status);


  for (j = 0; j < pstate->numWorkers; j++)
  {
   slot = &(pstate->parallelSlot[j]);
   if (slot->pid == pid)
   {
    slot->pid = 0;
    break;
   }
  }
  Assert(j < pstate->numWorkers);
  slot->workerStatus = WRKR_TERMINATED;
  pstate->te[j] = ((void*)0);
 }
}
