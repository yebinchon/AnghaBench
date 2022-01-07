
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int es_top_eflags; int es_crosscheck_snapshot; int es_snapshot; int es_query_cxt; scalar_t__ es_finished; } ;
struct TYPE_6__ {int * totaltime; int * planstate; TYPE_2__* estate; int * tupDesc; } ;
typedef TYPE_1__ QueryDesc ;
typedef int MemoryContext ;
typedef TYPE_2__ EState ;


 int Assert (int) ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int ExecEndPlan (int *,TYPE_2__*) ;
 int FreeExecutorState (TYPE_2__*) ;
 int MemoryContextSwitchTo (int ) ;
 int UnregisterSnapshot (int ) ;

void
standard_ExecutorEnd(QueryDesc *queryDesc)
{
 EState *estate;
 MemoryContext oldcontext;


 Assert(queryDesc != ((void*)0));

 estate = queryDesc->estate;

 Assert(estate != ((void*)0));






 Assert(estate->es_finished ||
     (estate->es_top_eflags & EXEC_FLAG_EXPLAIN_ONLY));




 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);

 ExecEndPlan(queryDesc->planstate, estate);


 UnregisterSnapshot(estate->es_snapshot);
 UnregisterSnapshot(estate->es_crosscheck_snapshot);




 MemoryContextSwitchTo(oldcontext);





 FreeExecutorState(estate);


 queryDesc->tupDesc = ((void*)0);
 queryDesc->estate = ((void*)0);
 queryDesc->planstate = ((void*)0);
 queryDesc->totaltime = ((void*)0);
}
