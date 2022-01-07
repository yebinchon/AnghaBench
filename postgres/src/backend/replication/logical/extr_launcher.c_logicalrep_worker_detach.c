
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int LogicalRepWorkerLock ;
 int MyLogicalRepWorker ;
 int logicalrep_worker_cleanup (int ) ;

__attribute__((used)) static void
logicalrep_worker_detach(void)
{

 LWLockAcquire(LogicalRepWorkerLock, LW_EXCLUSIVE);

 logicalrep_worker_cleanup(MyLogicalRepWorker);

 LWLockRelease(LogicalRepWorkerLock);
}
