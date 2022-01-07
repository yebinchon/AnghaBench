
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
typedef int errbuf ;
struct TYPE_8__ {int * connCancel; } ;
struct TYPE_7__ {int numWorkers; TYPE_1__* parallelSlot; } ;
struct TYPE_6__ {scalar_t__ pid; TYPE_3__* AH; int pipeWrite; } ;
typedef TYPE_2__ ParallelState ;
typedef TYPE_3__ ArchiveHandle ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int PQcancel (int *,char*,int) ;
 int SIGTERM ;
 int WaitForTerminatingWorkers (TYPE_2__*) ;
 int closesocket (int ) ;
 int kill (scalar_t__,int ) ;
 int signal_info_lock ;

__attribute__((used)) static void
ShutdownWorkersHard(ParallelState *pstate)
{
 int i;





 for (i = 0; i < pstate->numWorkers; i++)
  closesocket(pstate->parallelSlot[i].pipeWrite);






 for (i = 0; i < pstate->numWorkers; i++)
 {
  pid_t pid = pstate->parallelSlot[i].pid;

  if (pid != 0)
   kill(pid, SIGTERM);
 }
 WaitForTerminatingWorkers(pstate);
}
