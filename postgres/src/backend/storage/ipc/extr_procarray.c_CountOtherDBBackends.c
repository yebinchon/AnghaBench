
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ databaseId; int pid; } ;
struct TYPE_9__ {int vacuumFlags; } ;
struct TYPE_8__ {int numProcs; int* pgprocnos; } ;
typedef TYPE_1__ ProcArrayStruct ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;
typedef scalar_t__ Oid ;


 int CHECK_FOR_INTERRUPTS () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int MAXAUTOVACPIDS ;
 TYPE_3__* MyProc ;
 int PROC_IS_AUTOVACUUM ;
 int ProcArrayLock ;
 int SIGTERM ;
 TYPE_2__* allPgXact ;
 TYPE_3__* allProcs ;
 int kill (int,int ) ;
 int pg_usleep (int) ;
 TYPE_1__* procArray ;

bool
CountOtherDBBackends(Oid databaseId, int *nbackends, int *nprepared)
{
 ProcArrayStruct *arrayP = procArray;


 int autovac_pids[10];
 int tries;


 for (tries = 0; tries < 50; tries++)
 {
  int nautovacs = 0;
  bool found = 0;
  int index;

  CHECK_FOR_INTERRUPTS();

  *nbackends = *nprepared = 0;

  LWLockAcquire(ProcArrayLock, LW_SHARED);

  for (index = 0; index < arrayP->numProcs; index++)
  {
   int pgprocno = arrayP->pgprocnos[index];
   PGPROC *proc = &allProcs[pgprocno];
   PGXACT *pgxact = &allPgXact[pgprocno];

   if (proc->databaseId != databaseId)
    continue;
   if (proc == MyProc)
    continue;

   found = 1;

   if (proc->pid == 0)
    (*nprepared)++;
   else
   {
    (*nbackends)++;
    if ((pgxact->vacuumFlags & PROC_IS_AUTOVACUUM) &&
     nautovacs < 10)
     autovac_pids[nautovacs++] = proc->pid;
   }
  }

  LWLockRelease(ProcArrayLock);

  if (!found)
   return 0;







  for (index = 0; index < nautovacs; index++)
   (void) kill(autovac_pids[index], SIGTERM);


  pg_usleep(100 * 1000L);
 }

 return 1;
}
