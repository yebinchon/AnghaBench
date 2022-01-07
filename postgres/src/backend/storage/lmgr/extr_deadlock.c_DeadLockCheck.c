
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int nProcs; TYPE_2__** procs; TYPE_3__* lock; } ;
struct TYPE_12__ {int size; int links; } ;
struct TYPE_14__ {TYPE_1__ waitProcs; } ;
struct TYPE_13__ {int links; } ;
typedef TYPE_1__ PROC_QUEUE ;
typedef TYPE_2__ PGPROC ;
typedef TYPE_3__ LOCK ;
typedef int DeadLockState ;


 int Assert (int) ;
 int DS_BLOCKED_BY_AUTOVACUUM ;
 int DS_HARD_DEADLOCK ;
 int DS_NO_DEADLOCK ;
 int DS_SOFT_DEADLOCK ;
 scalar_t__ DeadLockCheckRecurse (TYPE_2__*) ;
 int FATAL ;
 int FindLockCycle (TYPE_2__*,int ,int*) ;
 int GetLocksMethodTable (TYPE_3__*) ;
 int PrintLockQueue (TYPE_3__*,char*) ;
 int ProcLockWakeup (int ,TYPE_3__*) ;
 int ProcQueueInit (TYPE_1__*) ;
 int SHMQueueInsertBefore (int *,int *) ;
 int TRACE_POSTGRESQL_DEADLOCK_FOUND () ;
 int * blocking_autovacuum_proc ;
 int elog (int ,char*) ;
 scalar_t__ nCurConstraints ;
 scalar_t__ nPossibleConstraints ;
 int nWaitOrders ;
 int possibleConstraints ;
 TYPE_4__* waitOrders ;

DeadLockState
DeadLockCheck(PGPROC *proc)
{
 int i,
    j;


 nCurConstraints = 0;
 nPossibleConstraints = 0;
 nWaitOrders = 0;


 blocking_autovacuum_proc = ((void*)0);


 if (DeadLockCheckRecurse(proc))
 {




  int nSoftEdges;

  TRACE_POSTGRESQL_DEADLOCK_FOUND();

  nWaitOrders = 0;
  if (!FindLockCycle(proc, possibleConstraints, &nSoftEdges))
   elog(FATAL, "deadlock seems to have disappeared");

  return DS_HARD_DEADLOCK;
 }


 for (i = 0; i < nWaitOrders; i++)
 {
  LOCK *lock = waitOrders[i].lock;
  PGPROC **procs = waitOrders[i].procs;
  int nProcs = waitOrders[i].nProcs;
  PROC_QUEUE *waitQueue = &(lock->waitProcs);

  Assert(nProcs == waitQueue->size);






  ProcQueueInit(waitQueue);
  for (j = 0; j < nProcs; j++)
  {
   SHMQueueInsertBefore(&(waitQueue->links), &(procs[j]->links));
   waitQueue->size++;
  }






  ProcLockWakeup(GetLocksMethodTable(lock), lock);
 }


 if (nWaitOrders > 0)
  return DS_SOFT_DEADLOCK;
 else if (blocking_autovacuum_proc != ((void*)0))
  return DS_BLOCKED_BY_AUTOVACUUM;
 else
  return DS_NO_DEADLOCK;
}
