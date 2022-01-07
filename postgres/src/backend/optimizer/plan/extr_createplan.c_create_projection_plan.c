
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int parallel_safe; TYPE_10__* pathtarget; int rows; int total_cost; int startup_cost; } ;
struct TYPE_13__ {int parallel_safe; int plan_width; int plan_rows; int total_cost; int startup_cost; int * targetlist; } ;
struct TYPE_12__ {TYPE_3__ path; int subpath; } ;
struct TYPE_11__ {int width; } ;
typedef TYPE_1__ ProjectionPath ;
typedef int PlannerInfo ;
typedef TYPE_2__ Plan ;
typedef int Path ;
typedef int List ;


 int CP_IGNORE_TLIST ;
 int CP_LABEL_TLIST ;
 int apply_pathtarget_labeling_to_tlist (int *,TYPE_10__*) ;
 int * build_path_tlist (int *,TYPE_3__*) ;
 int copy_generic_path_info (TYPE_2__*,int *) ;
 TYPE_2__* create_plan_recurse (int *,int ,int ) ;
 scalar_t__ is_projection_capable_path (int ) ;
 scalar_t__ make_result (int *,int *,TYPE_2__*) ;
 int tlist_same_exprs (int *,int *) ;
 scalar_t__ use_physical_tlist (int *,TYPE_3__*,int) ;

__attribute__((used)) static Plan *
create_projection_plan(PlannerInfo *root, ProjectionPath *best_path, int flags)
{
 Plan *plan;
 Plan *subplan;
 List *tlist;
 bool needs_result_node = 0;
 if (use_physical_tlist(root, &best_path->path, flags))
 {





  subplan = create_plan_recurse(root, best_path->subpath, 0);
  tlist = subplan->targetlist;
  if (flags & CP_LABEL_TLIST)
   apply_pathtarget_labeling_to_tlist(tlist,
              best_path->path.pathtarget);
 }
 else if (is_projection_capable_path(best_path->subpath))
 {






  subplan = create_plan_recurse(root, best_path->subpath,
           CP_IGNORE_TLIST);
  tlist = build_path_tlist(root, &best_path->path);
 }
 else
 {




  subplan = create_plan_recurse(root, best_path->subpath, 0);
  tlist = build_path_tlist(root, &best_path->path);
  needs_result_node = !tlist_same_exprs(tlist, subplan->targetlist);
 }
 if (!needs_result_node)
 {

  plan = subplan;
  plan->targetlist = tlist;


  plan->startup_cost = best_path->path.startup_cost;
  plan->total_cost = best_path->path.total_cost;
  plan->plan_rows = best_path->path.rows;
  plan->plan_width = best_path->path.pathtarget->width;
  plan->parallel_safe = best_path->path.parallel_safe;

 }
 else
 {

  plan = (Plan *) make_result(tlist, ((void*)0), subplan);

  copy_generic_path_info(plan, (Path *) best_path);
 }

 return plan;
}
