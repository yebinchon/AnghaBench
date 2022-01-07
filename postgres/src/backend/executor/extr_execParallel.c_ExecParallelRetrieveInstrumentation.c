
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {int num_workers; int instrument; } ;
struct TYPE_17__ {TYPE_9__* worker_instrument; TYPE_2__* state; int instrument; TYPE_1__* plan; } ;
struct TYPE_16__ {int num_plan_nodes; int* plan_node_id; int num_workers; } ;
struct TYPE_15__ {int es_query_cxt; } ;
struct TYPE_14__ {int plan_node_id; } ;
typedef int SortState ;
typedef TYPE_3__ SharedExecutorInstrumentation ;
typedef TYPE_4__ PlanState ;
typedef int MemoryContext ;
typedef int Instrumentation ;
typedef int HashState ;


 int ERROR ;
 int ExecHashRetrieveInstrumentation (int *) ;
 int ExecSortRetrieveInstrumentation (int *) ;
 int * GetInstrumentationArray (TYPE_3__*) ;
 int InstrAggNode (int ,int *) ;
 int MemoryContextSwitchTo (int ) ;


 int WorkerInstrumentation ;
 int elog (int ,char*,int) ;
 int memcpy (int *,int *,int) ;
 int mul_size (int,int) ;
 int nodeTag (TYPE_4__*) ;
 scalar_t__ offsetof (int ,int *) ;
 TYPE_9__* palloc (scalar_t__) ;
 int planstate_tree_walker (TYPE_4__*,int (*) (TYPE_4__*,TYPE_3__*),TYPE_3__*) ;

__attribute__((used)) static bool
ExecParallelRetrieveInstrumentation(PlanState *planstate,
         SharedExecutorInstrumentation *instrumentation)
{
 Instrumentation *instrument;
 int i;
 int n;
 int ibytes;
 int plan_node_id = planstate->plan->plan_node_id;
 MemoryContext oldcontext;


 for (i = 0; i < instrumentation->num_plan_nodes; ++i)
  if (instrumentation->plan_node_id[i] == plan_node_id)
   break;
 if (i >= instrumentation->num_plan_nodes)
  elog(ERROR, "plan node %d not found", plan_node_id);


 instrument = GetInstrumentationArray(instrumentation);
 instrument += i * instrumentation->num_workers;
 for (n = 0; n < instrumentation->num_workers; ++n)
  InstrAggNode(planstate->instrument, &instrument[n]);
 oldcontext = MemoryContextSwitchTo(planstate->state->es_query_cxt);
 ibytes = mul_size(instrumentation->num_workers, sizeof(Instrumentation));
 planstate->worker_instrument =
  palloc(ibytes + offsetof(WorkerInstrumentation, instrument));
 MemoryContextSwitchTo(oldcontext);

 planstate->worker_instrument->num_workers = instrumentation->num_workers;
 memcpy(&planstate->worker_instrument->instrument, instrument, ibytes);


 switch (nodeTag(planstate))
 {
  case 128:
   ExecSortRetrieveInstrumentation((SortState *) planstate);
   break;
  case 129:
   ExecHashRetrieveInstrumentation((HashState *) planstate);
   break;
  default:
   break;
 }

 return planstate_tree_walker(planstate, ExecParallelRetrieveInstrumentation,
         instrumentation);
}
