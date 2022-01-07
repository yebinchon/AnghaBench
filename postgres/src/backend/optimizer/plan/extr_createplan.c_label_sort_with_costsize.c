
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int total_cost; int startup_cost; } ;
struct TYPE_9__ {int parallel_safe; int plan_width; int plan_rows; int total_cost; } ;
struct TYPE_7__ {int parallel_aware; int parallel_safe; int plan_width; int plan_rows; int total_cost; int startup_cost; TYPE_3__* lefttree; } ;
struct TYPE_8__ {TYPE_1__ plan; } ;
typedef TYPE_2__ Sort ;
typedef int PlannerInfo ;
typedef TYPE_3__ Plan ;
typedef TYPE_4__ Path ;


 int NIL ;
 int cost_sort (TYPE_4__*,int *,int ,int ,int ,int ,double,int ,double) ;
 int work_mem ;

__attribute__((used)) static void
label_sort_with_costsize(PlannerInfo *root, Sort *plan, double limit_tuples)
{
 Plan *lefttree = plan->plan.lefttree;
 Path sort_path;

 cost_sort(&sort_path, root, NIL,
     lefttree->total_cost,
     lefttree->plan_rows,
     lefttree->plan_width,
     0.0,
     work_mem,
     limit_tuples);
 plan->plan.startup_cost = sort_path.startup_cost;
 plan->plan.total_cost = sort_path.total_cost;
 plan->plan.plan_rows = lefttree->plan_rows;
 plan->plan.plan_width = lefttree->plan_width;
 plan->plan.parallel_aware = 0;
 plan->plan.parallel_safe = lefttree->parallel_safe;
}
