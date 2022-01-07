
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* proc; } ;
struct TYPE_4__ {int procLatch; } ;
typedef TYPE_2__ LogicalRepWorker ;


 int Assert (int ) ;
 int LWLockHeldByMe (int ) ;
 int LogicalRepWorkerLock ;
 int SetLatch (int *) ;

void
logicalrep_worker_wakeup_ptr(LogicalRepWorker *worker)
{
 Assert(LWLockHeldByMe(LogicalRepWorkerLock));

 SetLatch(&worker->proc->procLatch);
}
