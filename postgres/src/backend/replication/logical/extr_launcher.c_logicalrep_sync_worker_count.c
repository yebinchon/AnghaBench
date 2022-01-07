
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* workers; } ;
struct TYPE_3__ {scalar_t__ subid; int relid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ LogicalRepWorker ;


 int Assert (int ) ;
 int LWLockHeldByMe (int ) ;
 TYPE_2__* LogicalRepCtx ;
 int LogicalRepWorkerLock ;
 scalar_t__ OidIsValid (int ) ;
 int max_logical_replication_workers ;

int
logicalrep_sync_worker_count(Oid subid)
{
 int i;
 int res = 0;

 Assert(LWLockHeldByMe(LogicalRepWorkerLock));


 for (i = 0; i < max_logical_replication_workers; i++)
 {
  LogicalRepWorker *w = &LogicalRepCtx->workers[i];

  if (w->subid == subid && OidIsValid(w->relid))
   res++;
 }

 return res;
}
