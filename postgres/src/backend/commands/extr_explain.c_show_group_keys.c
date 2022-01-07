
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int grpColIdx; int numCols; } ;
struct TYPE_8__ {scalar_t__ plan; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;
struct TYPE_10__ {TYPE_2__ ss; } ;
typedef int List ;
typedef TYPE_3__ GroupState ;
typedef TYPE_4__ Group ;
typedef int ExplainState ;


 int * lcons (TYPE_3__*,int *) ;
 int * list_delete_first (int *) ;
 int outerPlanState (TYPE_3__*) ;
 int show_sort_group_keys (int ,char*,int ,int ,int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
show_group_keys(GroupState *gstate, List *ancestors,
    ExplainState *es)
{
 Group *plan = (Group *) gstate->ss.ps.plan;


 ancestors = lcons(gstate, ancestors);
 show_sort_group_keys(outerPlanState(gstate), "Group Key",
       plan->numCols, plan->grpColIdx,
       ((void*)0), ((void*)0), ((void*)0),
       ancestors, es);
 ancestors = list_delete_first(ancestors);
}
