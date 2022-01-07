
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {double startup_cost; double total_cost; } ;
struct TYPE_8__ {int group_pathkeys; TYPE_1__* parse; } ;
struct TYPE_7__ {int groupClause; } ;
typedef TYPE_2__ PlannerInfo ;
typedef TYPE_3__ Path ;
typedef int List ;
typedef double Cost ;


 double DEFAULT_FDW_SORT_MULTIPLIER ;
 int cost_sort (TYPE_3__*,TYPE_2__*,int *,double,double,double,double,int ,double) ;
 int grouping_is_sortable (int ) ;
 int pathkeys_contained_in (int *,int ) ;
 int work_mem ;

__attribute__((used)) static void
adjust_foreign_grouping_path_cost(PlannerInfo *root,
          List *pathkeys,
          double retrieved_rows,
          double width,
          double limit_tuples,
          Cost *p_startup_cost,
          Cost *p_run_cost)
{
 if (!grouping_is_sortable(root->parse->groupClause) ||
  !pathkeys_contained_in(pathkeys, root->group_pathkeys))
 {
  Path sort_path;

  cost_sort(&sort_path,
      root,
      pathkeys,
      *p_startup_cost + *p_run_cost,
      retrieved_rows,
      width,
      0.0,
      work_mem,
      limit_tuples);

  *p_startup_cost = sort_path.startup_cost;
  *p_run_cost = sort_path.total_cost - sort_path.startup_cost;
 }
 else
 {




  double sort_multiplier = 1.0 + (DEFAULT_FDW_SORT_MULTIPLIER
            - 1.0) * 0.25;

  *p_startup_cost *= sort_multiplier;
  *p_run_cost *= sort_multiplier;
 }
}
