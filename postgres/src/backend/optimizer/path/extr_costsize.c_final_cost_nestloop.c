
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_21__ {double outer_match_frac; double match_count; } ;
struct TYPE_27__ {TYPE_3__ semifactors; scalar_t__ inner_unique; } ;
struct TYPE_18__ {double rows; scalar_t__ parallel_workers; double startup_cost; double total_cost; TYPE_5__* pathtarget; TYPE_2__* parent; TYPE_1__* param_info; } ;
struct TYPE_26__ {scalar_t__ jointype; TYPE_12__ path; int joinrestrictinfo; TYPE_7__* innerjoinpath; TYPE_7__* outerjoinpath; } ;
struct TYPE_25__ {double rows; } ;
struct TYPE_24__ {double startup; double per_tuple; } ;
struct TYPE_22__ {double startup; int per_tuple; } ;
struct TYPE_23__ {TYPE_4__ cost; } ;
struct TYPE_20__ {double rows; } ;
struct TYPE_19__ {double ppi_rows; } ;
struct TYPE_17__ {double startup_cost; double run_cost; double inner_run_cost; double inner_rescan_run_cost; } ;
typedef double Selectivity ;
typedef TYPE_6__ QualCost ;
typedef int PlannerInfo ;
typedef TYPE_7__ Path ;
typedef TYPE_8__ NestPath ;
typedef TYPE_9__ JoinPathExtraData ;
typedef TYPE_10__ JoinCostWorkspace ;
typedef double Cost ;


 scalar_t__ JOIN_ANTI ;
 scalar_t__ JOIN_SEMI ;
 double clamp_row_est (double) ;
 int cost_qual_eval (TYPE_6__*,int ,int *) ;
 double cpu_tuple_cost ;
 double disable_cost ;
 int enable_nestloop ;
 double get_parallel_divisor (TYPE_12__*) ;
 scalar_t__ has_indexed_join_quals (TYPE_8__*) ;
 scalar_t__ isnan (double) ;
 double rint (double) ;

void
final_cost_nestloop(PlannerInfo *root, NestPath *path,
     JoinCostWorkspace *workspace,
     JoinPathExtraData *extra)
{
 Path *outer_path = path->outerjoinpath;
 Path *inner_path = path->innerjoinpath;
 double outer_path_rows = outer_path->rows;
 double inner_path_rows = inner_path->rows;
 Cost startup_cost = workspace->startup_cost;
 Cost run_cost = workspace->run_cost;
 Cost cpu_per_tuple;
 QualCost restrict_qual_cost;
 double ntuples;


 if (outer_path_rows <= 0 || isnan(outer_path_rows))
  outer_path_rows = 1;
 if (inner_path_rows <= 0 || isnan(inner_path_rows))
  inner_path_rows = 1;


 if (path->path.param_info)
  path->path.rows = path->path.param_info->ppi_rows;
 else
  path->path.rows = path->path.parent->rows;


 if (path->path.parallel_workers > 0)
 {
  double parallel_divisor = get_parallel_divisor(&path->path);

  path->path.rows =
   clamp_row_est(path->path.rows / parallel_divisor);
 }






 if (!enable_nestloop)
  startup_cost += disable_cost;



 if (path->jointype == JOIN_SEMI || path->jointype == JOIN_ANTI ||
  extra->inner_unique)
 {




  Cost inner_run_cost = workspace->inner_run_cost;
  Cost inner_rescan_run_cost = workspace->inner_rescan_run_cost;
  double outer_matched_rows;
  double outer_unmatched_rows;
  Selectivity inner_scan_frac;
  outer_matched_rows = rint(outer_path_rows * extra->semifactors.outer_match_frac);
  outer_unmatched_rows = outer_path_rows - outer_matched_rows;
  inner_scan_frac = 2.0 / (extra->semifactors.match_count + 1.0);





  ntuples = outer_matched_rows * inner_path_rows * inner_scan_frac;
  if (has_indexed_join_quals(path))
  {
   run_cost += inner_run_cost * inner_scan_frac;
   if (outer_matched_rows > 1)
    run_cost += (outer_matched_rows - 1) * inner_rescan_run_cost * inner_scan_frac;







   run_cost += outer_unmatched_rows *
    inner_rescan_run_cost / inner_path_rows;





  }
  else
  {
   ntuples += outer_unmatched_rows * inner_path_rows;


   run_cost += inner_run_cost;
   if (outer_unmatched_rows >= 1)
    outer_unmatched_rows -= 1;
   else
    outer_matched_rows -= 1;


   if (outer_matched_rows > 0)
    run_cost += outer_matched_rows * inner_rescan_run_cost * inner_scan_frac;


   if (outer_unmatched_rows > 0)
    run_cost += outer_unmatched_rows * inner_rescan_run_cost;
  }
 }
 else
 {



  ntuples = outer_path_rows * inner_path_rows;
 }


 cost_qual_eval(&restrict_qual_cost, path->joinrestrictinfo, root);
 startup_cost += restrict_qual_cost.startup;
 cpu_per_tuple = cpu_tuple_cost + restrict_qual_cost.per_tuple;
 run_cost += cpu_per_tuple * ntuples;


 startup_cost += path->path.pathtarget->cost.startup;
 run_cost += path->path.pathtarget->cost.per_tuple * path->path.rows;

 path->path.startup_cost = startup_cost;
 path->path.total_cost = startup_cost + run_cost;
}
