
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_30__ {scalar_t__ inner_unique; } ;
struct TYPE_20__ {double rows; scalar_t__ parallel_workers; double startup_cost; double total_cost; TYPE_5__* pathtarget; TYPE_2__* parent; TYPE_1__* param_info; } ;
struct TYPE_21__ {scalar_t__ jointype; TYPE_11__ path; int * joinrestrictinfo; TYPE_7__* innerjoinpath; TYPE_7__* outerjoinpath; } ;
struct TYPE_29__ {int skip_mark_restore; int materialize_inner; TYPE_16__ jpath; int * path_mergeclauses; int * innersortkeys; } ;
struct TYPE_28__ {double rows; TYPE_3__* pathtarget; } ;
struct TYPE_27__ {double startup; double per_tuple; } ;
struct TYPE_25__ {double startup; int per_tuple; } ;
struct TYPE_26__ {TYPE_4__ cost; } ;
struct TYPE_24__ {int width; } ;
struct TYPE_23__ {double rows; } ;
struct TYPE_22__ {double ppi_rows; } ;
struct TYPE_19__ {double startup_cost; double run_cost; double inner_run_cost; double outer_rows; double inner_rows; double outer_skip_rows; double inner_skip_rows; } ;
typedef TYPE_6__ QualCost ;
typedef int PlannerInfo ;
typedef TYPE_7__ Path ;
typedef TYPE_8__ MergePath ;
typedef int List ;
typedef TYPE_9__ JoinPathExtraData ;
typedef TYPE_10__ JoinCostWorkspace ;
typedef double Cost ;


 int ExecSupportsMarkRestore (TYPE_7__*) ;
 scalar_t__ IsA (TYPE_7__*,int ) ;
 scalar_t__ JOIN_ANTI ;
 scalar_t__ JOIN_SEMI ;
 int * NIL ;
 int UniquePath ;
 double approx_tuple_count (int *,TYPE_16__*,int *) ;
 double clamp_row_est (double) ;
 int cost_qual_eval (TYPE_6__*,int *,int *) ;
 double cpu_operator_cost ;
 double cpu_tuple_cost ;
 double disable_cost ;
 scalar_t__ enable_material ;
 int enable_mergejoin ;
 double get_parallel_divisor (TYPE_11__*) ;
 scalar_t__ isnan (double) ;
 scalar_t__ list_length (int *) ;
 long relation_byte_size (double,int ) ;
 long work_mem ;

void
final_cost_mergejoin(PlannerInfo *root, MergePath *path,
      JoinCostWorkspace *workspace,
      JoinPathExtraData *extra)
{
 Path *outer_path = path->jpath.outerjoinpath;
 Path *inner_path = path->jpath.innerjoinpath;
 double inner_path_rows = inner_path->rows;
 List *mergeclauses = path->path_mergeclauses;
 List *innersortkeys = path->innersortkeys;
 Cost startup_cost = workspace->startup_cost;
 Cost run_cost = workspace->run_cost;
 Cost inner_run_cost = workspace->inner_run_cost;
 double outer_rows = workspace->outer_rows;
 double inner_rows = workspace->inner_rows;
 double outer_skip_rows = workspace->outer_skip_rows;
 double inner_skip_rows = workspace->inner_skip_rows;
 Cost cpu_per_tuple,
    bare_inner_cost,
    mat_inner_cost;
 QualCost merge_qual_cost;
 QualCost qp_qual_cost;
 double mergejointuples,
    rescannedtuples;
 double rescanratio;


 if (inner_path_rows <= 0 || isnan(inner_path_rows))
  inner_path_rows = 1;


 if (path->jpath.path.param_info)
  path->jpath.path.rows = path->jpath.path.param_info->ppi_rows;
 else
  path->jpath.path.rows = path->jpath.path.parent->rows;


 if (path->jpath.path.parallel_workers > 0)
 {
  double parallel_divisor = get_parallel_divisor(&path->jpath.path);

  path->jpath.path.rows =
   clamp_row_est(path->jpath.path.rows / parallel_divisor);
 }






 if (!enable_mergejoin)
  startup_cost += disable_cost;





 cost_qual_eval(&merge_qual_cost, mergeclauses, root);
 cost_qual_eval(&qp_qual_cost, path->jpath.joinrestrictinfo, root);
 qp_qual_cost.startup -= merge_qual_cost.startup;
 qp_qual_cost.per_tuple -= merge_qual_cost.per_tuple;







 if ((path->jpath.jointype == JOIN_SEMI ||
   path->jpath.jointype == JOIN_ANTI ||
   extra->inner_unique) &&
  (list_length(path->jpath.joinrestrictinfo) ==
   list_length(path->path_mergeclauses)))
  path->skip_mark_restore = 1;
 else
  path->skip_mark_restore = 0;





 mergejointuples = approx_tuple_count(root, &path->jpath, mergeclauses);
 if (IsA(outer_path, UniquePath) ||path->skip_mark_restore)
  rescannedtuples = 0;
 else
 {
  rescannedtuples = mergejointuples - inner_path_rows;

  if (rescannedtuples < 0)
   rescannedtuples = 0;
 }






 rescanratio = 1.0 + (rescannedtuples / inner_rows);
 bare_inner_cost = inner_run_cost * rescanratio;
 mat_inner_cost = inner_run_cost +
  cpu_operator_cost * inner_rows * rescanratio;




 if (path->skip_mark_restore)
  path->materialize_inner = 0;





 else if (enable_material && mat_inner_cost < bare_inner_cost)
  path->materialize_inner = 1;
 else if (innersortkeys == NIL &&
    !ExecSupportsMarkRestore(inner_path))
  path->materialize_inner = 1;
 else if (enable_material && innersortkeys != NIL &&
    relation_byte_size(inner_path_rows,
        inner_path->pathtarget->width) >
    (work_mem * 1024L))
  path->materialize_inner = 1;
 else
  path->materialize_inner = 0;


 if (path->materialize_inner)
  run_cost += mat_inner_cost;
 else
  run_cost += bare_inner_cost;
 startup_cost += merge_qual_cost.startup;
 startup_cost += merge_qual_cost.per_tuple *
  (outer_skip_rows + inner_skip_rows * rescanratio);
 run_cost += merge_qual_cost.per_tuple *
  ((outer_rows - outer_skip_rows) +
   (inner_rows - inner_skip_rows) * rescanratio);
 startup_cost += qp_qual_cost.startup;
 cpu_per_tuple = cpu_tuple_cost + qp_qual_cost.per_tuple;
 run_cost += cpu_per_tuple * mergejointuples;


 startup_cost += path->jpath.path.pathtarget->cost.startup;
 run_cost += path->jpath.path.pathtarget->cost.per_tuple * path->jpath.path.rows;

 path->jpath.path.startup_cost = startup_cost;
 path->jpath.path.total_cost = startup_cost + run_cost;
}
