
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {double total_cost; double plan_rows; double startup_cost; } ;
struct TYPE_9__ {double per_tuple; int startup; } ;
struct TYPE_8__ {scalar_t__ subLinkType; scalar_t__ parParam; double per_call_cost; int startup_cost; scalar_t__ useHashTable; scalar_t__ testexpr; } ;
typedef TYPE_1__ SubPlan ;
typedef TYPE_2__ QualCost ;
typedef int PlannerInfo ;
typedef TYPE_3__ Plan ;
typedef int Expr ;
typedef double Cost ;


 scalar_t__ ALL_SUBLINK ;
 scalar_t__ ANY_SUBLINK ;
 scalar_t__ EXISTS_SUBLINK ;
 scalar_t__ ExecMaterializesOutput (int ) ;
 scalar_t__ NIL ;
 double clamp_row_est (double) ;
 int cost_qual_eval (TYPE_2__*,int ,int *) ;
 double cpu_operator_cost ;
 int make_ands_implicit (int *) ;
 int nodeTag (TYPE_3__*) ;

void
cost_subplan(PlannerInfo *root, SubPlan *subplan, Plan *plan)
{
 QualCost sp_cost;


 cost_qual_eval(&sp_cost,
       make_ands_implicit((Expr *) subplan->testexpr),
       root);

 if (subplan->useHashTable)
 {






  sp_cost.startup += plan->total_cost +
   cpu_operator_cost * plan->plan_rows;
 }
 else
 {







  Cost plan_run_cost = plan->total_cost - plan->startup_cost;

  if (subplan->subLinkType == EXISTS_SUBLINK)
  {

   sp_cost.per_tuple += plan_run_cost / clamp_row_est(plan->plan_rows);
  }
  else if (subplan->subLinkType == ALL_SUBLINK ||
     subplan->subLinkType == ANY_SUBLINK)
  {

   sp_cost.per_tuple += 0.50 * plan_run_cost;

   sp_cost.per_tuple += 0.50 * plan->plan_rows * cpu_operator_cost;
  }
  else
  {

   sp_cost.per_tuple += plan_run_cost;
  }
  if (subplan->parParam == NIL &&
   ExecMaterializesOutput(nodeTag(plan)))
   sp_cost.startup += plan->startup_cost;
  else
   sp_cost.per_tuple += plan->startup_cost;
 }

 subplan->startup_cost = sp_cost.startup;
 subplan->per_call_cost = sp_cost.per_tuple;
}
