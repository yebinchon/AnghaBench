
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_use; void* relid; void* subid; void* userid; void* dbid; int * proc; } ;
typedef TYPE_1__ LogicalRepWorker ;


 int Assert (int ) ;
 void* InvalidOid ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int LogicalRepWorkerLock ;

__attribute__((used)) static void
logicalrep_worker_cleanup(LogicalRepWorker *worker)
{
 Assert(LWLockHeldByMeInMode(LogicalRepWorkerLock, LW_EXCLUSIVE));

 worker->in_use = 0;
 worker->proc = ((void*)0);
 worker->dbid = InvalidOid;
 worker->userid = InvalidOid;
 worker->subid = InvalidOid;
 worker->relid = InvalidOid;
}
