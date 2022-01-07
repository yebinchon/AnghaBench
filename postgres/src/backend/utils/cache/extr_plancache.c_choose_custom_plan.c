
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor_options; int num_custom_plans; double total_custom_cost; double generic_cost; scalar_t__ is_oneshot; } ;
typedef int * ParamListInfo ;
typedef TYPE_1__ CachedPlanSource ;


 int CURSOR_OPT_CUSTOM_PLAN ;
 int CURSOR_OPT_GENERIC_PLAN ;
 scalar_t__ IsTransactionStmtPlan (TYPE_1__*) ;
 scalar_t__ PLAN_CACHE_MODE_FORCE_CUSTOM_PLAN ;
 scalar_t__ PLAN_CACHE_MODE_FORCE_GENERIC_PLAN ;
 scalar_t__ plan_cache_mode ;

__attribute__((used)) static bool
choose_custom_plan(CachedPlanSource *plansource, ParamListInfo boundParams)
{
 double avg_custom_cost;


 if (plansource->is_oneshot)
  return 1;


 if (boundParams == ((void*)0))
  return 0;

 if (IsTransactionStmtPlan(plansource))
  return 0;


 if (plan_cache_mode == PLAN_CACHE_MODE_FORCE_GENERIC_PLAN)
  return 0;
 if (plan_cache_mode == PLAN_CACHE_MODE_FORCE_CUSTOM_PLAN)
  return 1;


 if (plansource->cursor_options & CURSOR_OPT_GENERIC_PLAN)
  return 0;
 if (plansource->cursor_options & CURSOR_OPT_CUSTOM_PLAN)
  return 1;


 if (plansource->num_custom_plans < 5)
  return 1;

 avg_custom_cost = plansource->total_custom_cost / plansource->num_custom_plans;
 if (plansource->generic_cost < avg_custom_cost)
  return 0;

 return 1;
}
