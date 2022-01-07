
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* relid; void* subid; } ;
struct TYPE_5__ {int nestDepth; int workers; struct TYPE_5__* parent; } ;
typedef TYPE_1__ StopWorkersData ;
typedef void* Oid ;
typedef int MemoryContext ;
typedef TYPE_2__ LogicalRepWorkerId ;


 int Assert (int) ;
 int GetCurrentTransactionNestLevel () ;
 int MemoryContextSwitchTo (int ) ;
 int NIL ;
 int TopTransactionContext ;
 int lappend (int ,TYPE_2__*) ;
 TYPE_1__* on_commit_stop_workers ;
 void* palloc (int) ;

void
logicalrep_worker_stop_at_commit(Oid subid, Oid relid)
{
 int nestDepth = GetCurrentTransactionNestLevel();
 LogicalRepWorkerId *wid;
 MemoryContext oldctx;


 oldctx = MemoryContextSwitchTo(TopTransactionContext);


 Assert(on_commit_stop_workers == ((void*)0) ||
     nestDepth >= on_commit_stop_workers->nestDepth);





 if (on_commit_stop_workers == ((void*)0) ||
  nestDepth > on_commit_stop_workers->nestDepth)
 {
  StopWorkersData *newdata = palloc(sizeof(StopWorkersData));

  newdata->nestDepth = nestDepth;
  newdata->workers = NIL;
  newdata->parent = on_commit_stop_workers;
  on_commit_stop_workers = newdata;
 }





 wid = palloc(sizeof(LogicalRepWorkerId));
 wid->subid = subid;
 wid->relid = relid;
 on_commit_stop_workers->workers =
  lappend(on_commit_stop_workers->workers, wid);

 MemoryContextSwitchTo(oldctx);
}
