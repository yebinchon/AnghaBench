
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parallel_safe; } ;
typedef TYPE_1__ Plan ;
typedef int List ;


 int copy_plan_costsize (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ make_result (int *,int *,TYPE_1__*) ;

__attribute__((used)) static Plan *
inject_projection_plan(Plan *subplan, List *tlist, bool parallel_safe)
{
 Plan *plan;

 plan = (Plan *) make_result(tlist, ((void*)0), subplan);
 copy_plan_costsize(plan, subplan);
 plan->parallel_safe = parallel_safe;

 return plan;
}
