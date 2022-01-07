
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* workers; } ;
struct TYPE_3__ {scalar_t__ proc; int in_use; } ;
typedef int Datum ;


 int Assert (int) ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* LogicalRepCtx ;
 int LogicalRepWorkerLock ;
 TYPE_1__* MyLogicalRepWorker ;
 scalar_t__ MyProc ;
 int before_shmem_exit (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int logicalrep_worker_onexit ;
 int max_logical_replication_workers ;

void
logicalrep_worker_attach(int slot)
{

 LWLockAcquire(LogicalRepWorkerLock, LW_EXCLUSIVE);

 Assert(slot >= 0 && slot < max_logical_replication_workers);
 MyLogicalRepWorker = &LogicalRepCtx->workers[slot];

 if (!MyLogicalRepWorker->in_use)
 {
  LWLockRelease(LogicalRepWorkerLock);
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("logical replication worker slot %d is empty, cannot attach",
      slot)));
 }

 if (MyLogicalRepWorker->proc)
 {
  LWLockRelease(LogicalRepWorkerLock);
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("logical replication worker slot %d is already used by "
      "another worker, cannot attach", slot)));
 }

 MyLogicalRepWorker->proc = MyProc;
 before_shmem_exit(logicalrep_worker_onexit, (Datum) 0);

 LWLockRelease(LogicalRepWorkerLock);
}
