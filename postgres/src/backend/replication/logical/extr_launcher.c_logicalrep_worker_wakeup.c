
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int LogicalRepWorker ;


 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 int LogicalRepWorkerLock ;
 int * logicalrep_worker_find (int ,int ,int) ;
 int logicalrep_worker_wakeup_ptr (int *) ;

void
logicalrep_worker_wakeup(Oid subid, Oid relid)
{
 LogicalRepWorker *worker;

 LWLockAcquire(LogicalRepWorkerLock, LW_SHARED);

 worker = logicalrep_worker_find(subid, relid, 1);

 if (worker)
  logicalrep_worker_wakeup_ptr(worker);

 LWLockRelease(LogicalRepWorkerLock);
}
