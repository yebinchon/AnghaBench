
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {double rows; double startup_cost; double total_cost; } ;
struct TYPE_11__ {scalar_t__ num_workers; TYPE_1__ path; } ;
struct TYPE_10__ {double ppi_rows; } ;
struct TYPE_9__ {double rows; } ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ ParamPathInfo ;
typedef TYPE_4__ GatherMergePath ;
typedef double Cost ;


 int Assert (int) ;
 double LOG2 (double) ;
 double cpu_operator_cost ;
 double disable_cost ;
 int enable_gathermerge ;
 double parallel_setup_cost ;
 double parallel_tuple_cost ;

void
cost_gather_merge(GatherMergePath *path, PlannerInfo *root,
      RelOptInfo *rel, ParamPathInfo *param_info,
      Cost input_startup_cost, Cost input_total_cost,
      double *rows)
{
 Cost startup_cost = 0;
 Cost run_cost = 0;
 Cost comparison_cost;
 double N;
 double logN;


 if (rows)
  path->path.rows = *rows;
 else if (param_info)
  path->path.rows = param_info->ppi_rows;
 else
  path->path.rows = rel->rows;

 if (!enable_gathermerge)
  startup_cost += disable_cost;






 Assert(path->num_workers > 0);
 N = (double) path->num_workers + 1;
 logN = LOG2(N);


 comparison_cost = 2.0 * cpu_operator_cost;


 startup_cost += comparison_cost * N * logN;


 run_cost += path->path.rows * comparison_cost * logN;


 run_cost += cpu_operator_cost * path->path.rows;







 startup_cost += parallel_setup_cost;
 run_cost += parallel_tuple_cost * path->path.rows * 1.05;

 path->path.startup_cost = startup_cost + input_startup_cost;
 path->path.total_cost = (startup_cost + run_cost + input_total_cost);
}
