
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int nullsFirst; int collations; int sortOperators; int sortColIdx; int numCols; } ;
struct TYPE_6__ {scalar_t__ plan; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;
struct TYPE_8__ {TYPE_2__ ss; } ;
typedef TYPE_3__ SortState ;
typedef TYPE_4__ Sort ;
typedef int PlanState ;
typedef int List ;
typedef int ExplainState ;


 int show_sort_group_keys (int *,char*,int ,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void
show_sort_keys(SortState *sortstate, List *ancestors, ExplainState *es)
{
 Sort *plan = (Sort *) sortstate->ss.ps.plan;

 show_sort_group_keys((PlanState *) sortstate, "Sort Key",
       plan->numCols, plan->sortColIdx,
       plan->sortOperators, plan->collations,
       plan->nullsFirst,
       ancestors, es);
}
