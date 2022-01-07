
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {double rows; double startup_cost; double total_cost; } ;
struct TYPE_5__ {double per_tuple; scalar_t__ startup; } ;
typedef TYPE_1__ QualCost ;
typedef int PlannerInfo ;
typedef TYPE_2__ Path ;
typedef int List ;
typedef double Cost ;


 int JOIN_INNER ;
 double clamp_row_est (double) ;
 double clauselist_selectivity (int *,int *,int ,int ,int *) ;
 int cost_qual_eval (TYPE_1__*,int *,int *) ;
 double cpu_operator_cost ;

void
cost_group(Path *path, PlannerInfo *root,
     int numGroupCols, double numGroups,
     List *quals,
     Cost input_startup_cost, Cost input_total_cost,
     double input_tuples)
{
 double output_tuples;
 Cost startup_cost;
 Cost total_cost;

 output_tuples = numGroups;
 startup_cost = input_startup_cost;
 total_cost = input_total_cost;





 total_cost += cpu_operator_cost * input_tuples * numGroupCols;





 if (quals)
 {
  QualCost qual_cost;

  cost_qual_eval(&qual_cost, quals, root);
  startup_cost += qual_cost.startup;
  total_cost += qual_cost.startup + output_tuples * qual_cost.per_tuple;

  output_tuples = clamp_row_est(output_tuples *
           clauselist_selectivity(root,
                quals,
                0,
                JOIN_INNER,
                ((void*)0)));
 }

 path->rows = output_tuples;
 path->startup_cost = startup_cost;
 path->total_cost = total_cost;
}
