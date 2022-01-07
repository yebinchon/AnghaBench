
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int instrument; TYPE_1__* plan; } ;
struct TYPE_12__ {int num_plan_nodes; int* plan_node_id; int num_workers; } ;
struct TYPE_11__ {int plan_node_id; } ;
typedef TYPE_2__ SharedExecutorInstrumentation ;
typedef TYPE_3__ PlanState ;
typedef int Instrumentation ;


 int Assert (int) ;
 int ERROR ;
 int * GetInstrumentationArray (TYPE_2__*) ;
 int InstrAggNode (int *,int ) ;
 int InstrEndLoop (int ) ;
 int IsParallelWorker () ;
 size_t ParallelWorkerNumber ;
 int elog (int ,char*,int) ;
 int planstate_tree_walker (TYPE_3__*,int (*) (TYPE_3__*,TYPE_2__*),TYPE_2__*) ;

__attribute__((used)) static bool
ExecParallelReportInstrumentation(PlanState *planstate,
          SharedExecutorInstrumentation *instrumentation)
{
 int i;
 int plan_node_id = planstate->plan->plan_node_id;
 Instrumentation *instrument;

 InstrEndLoop(planstate->instrument);







 for (i = 0; i < instrumentation->num_plan_nodes; ++i)
  if (instrumentation->plan_node_id[i] == plan_node_id)
   break;
 if (i >= instrumentation->num_plan_nodes)
  elog(ERROR, "plan node %d not found", plan_node_id);





 instrument = GetInstrumentationArray(instrumentation);
 instrument += i * instrumentation->num_workers;
 Assert(IsParallelWorker());
 Assert(ParallelWorkerNumber < instrumentation->num_workers);
 InstrAggNode(&instrument[ParallelWorkerNumber], planstate->instrument);

 return planstate_tree_walker(planstate, ExecParallelReportInstrumentation,
         instrumentation);
}
