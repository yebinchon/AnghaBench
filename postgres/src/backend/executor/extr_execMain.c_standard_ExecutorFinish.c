
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int es_top_eflags; int es_finished; int es_query_cxt; } ;
struct TYPE_6__ {scalar_t__ totaltime; TYPE_2__* estate; } ;
typedef TYPE_1__ QueryDesc ;
typedef int MemoryContext ;
typedef TYPE_2__ EState ;


 int AfterTriggerEndQuery (TYPE_2__*) ;
 int Assert (int) ;
 int EXEC_FLAG_EXPLAIN_ONLY ;
 int EXEC_FLAG_SKIP_TRIGGERS ;
 int ExecPostprocessPlan (TYPE_2__*) ;
 int InstrStartNode (scalar_t__) ;
 int InstrStopNode (scalar_t__,int ) ;
 int MemoryContextSwitchTo (int ) ;

void
standard_ExecutorFinish(QueryDesc *queryDesc)
{
 EState *estate;
 MemoryContext oldcontext;


 Assert(queryDesc != ((void*)0));

 estate = queryDesc->estate;

 Assert(estate != ((void*)0));
 Assert(!(estate->es_top_eflags & EXEC_FLAG_EXPLAIN_ONLY));


 Assert(!estate->es_finished);


 oldcontext = MemoryContextSwitchTo(estate->es_query_cxt);


 if (queryDesc->totaltime)
  InstrStartNode(queryDesc->totaltime);


 ExecPostprocessPlan(estate);


 if (!(estate->es_top_eflags & EXEC_FLAG_SKIP_TRIGGERS))
  AfterTriggerEndQuery(estate);

 if (queryDesc->totaltime)
  InstrStopNode(queryDesc->totaltime, 0);

 MemoryContextSwitchTo(oldcontext);

 estate->es_finished = 1;
}
