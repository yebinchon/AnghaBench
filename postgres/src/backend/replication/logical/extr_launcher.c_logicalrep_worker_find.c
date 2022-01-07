
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* workers; } ;
struct TYPE_4__ {scalar_t__ subid; scalar_t__ relid; scalar_t__ proc; scalar_t__ in_use; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ LogicalRepWorker ;


 int Assert (int ) ;
 int LWLockHeldByMe (int ) ;
 TYPE_3__* LogicalRepCtx ;
 int LogicalRepWorkerLock ;
 int max_logical_replication_workers ;

LogicalRepWorker *
logicalrep_worker_find(Oid subid, Oid relid, bool only_running)
{
 int i;
 LogicalRepWorker *res = ((void*)0);

 Assert(LWLockHeldByMe(LogicalRepWorkerLock));


 for (i = 0; i < max_logical_replication_workers; i++)
 {
  LogicalRepWorker *w = &LogicalRepCtx->workers[i];

  if (w->in_use && w->subid == subid && w->relid == relid &&
   (!only_running || w->proc))
  {
   res = w;
   break;
  }
 }

 return res;
}
