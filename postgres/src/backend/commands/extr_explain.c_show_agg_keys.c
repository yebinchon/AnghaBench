
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ numCols; int grpColIdx; scalar_t__ groupingSets; } ;
struct TYPE_9__ {scalar_t__ plan; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; } ;
typedef int List ;
typedef int ExplainState ;
typedef TYPE_3__ AggState ;
typedef TYPE_4__ Agg ;


 int * lcons (TYPE_3__*,int *) ;
 int * list_delete_first (int *) ;
 int outerPlanState (TYPE_3__*) ;
 int show_grouping_sets (int ,TYPE_4__*,int *,int *) ;
 int show_sort_group_keys (int ,char*,scalar_t__,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
show_agg_keys(AggState *astate, List *ancestors,
     ExplainState *es)
{
 Agg *plan = (Agg *) astate->ss.ps.plan;

 if (plan->numCols > 0 || plan->groupingSets)
 {

  ancestors = lcons(astate, ancestors);

  if (plan->groupingSets)
   show_grouping_sets(outerPlanState(astate), plan, ancestors, es);
  else
   show_sort_group_keys(outerPlanState(astate), "Group Key",
         plan->numCols, plan->grpColIdx,
         ((void*)0), ((void*)0), ((void*)0),
         ancestors, es);

  ancestors = list_delete_first(ancestors);
 }
}
