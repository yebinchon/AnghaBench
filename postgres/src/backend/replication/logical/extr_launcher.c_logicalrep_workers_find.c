
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* workers; } ;
struct TYPE_4__ {scalar_t__ subid; scalar_t__ proc; scalar_t__ in_use; } ;
typedef scalar_t__ Oid ;
typedef TYPE_1__ LogicalRepWorker ;
typedef int List ;


 int Assert (int ) ;
 int LWLockHeldByMe (int ) ;
 TYPE_3__* LogicalRepCtx ;
 int LogicalRepWorkerLock ;
 int * NIL ;
 int * lappend (int *,TYPE_1__*) ;
 int max_logical_replication_workers ;

List *
logicalrep_workers_find(Oid subid, bool only_running)
{
 int i;
 List *res = NIL;

 Assert(LWLockHeldByMe(LogicalRepWorkerLock));


 for (i = 0; i < max_logical_replication_workers; i++)
 {
  LogicalRepWorker *w = &LogicalRepCtx->workers[i];

  if (w->in_use && w->subid == subid && (!only_running || w->proc))
   res = lappend(res, w);
 }

 return res;
}
