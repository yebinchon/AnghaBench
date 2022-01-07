
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int nullsFirst; int collations; int sortOperators; int sortColIdx; int numCols; } ;
struct TYPE_5__ {scalar_t__ plan; } ;
struct TYPE_6__ {TYPE_1__ ps; } ;
typedef int PlanState ;
typedef TYPE_2__ MergeAppendState ;
typedef TYPE_3__ MergeAppend ;
typedef int List ;
typedef int ExplainState ;


 int show_sort_group_keys (int *,char*,int ,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void
show_merge_append_keys(MergeAppendState *mstate, List *ancestors,
        ExplainState *es)
{
 MergeAppend *plan = (MergeAppend *) mstate->ps.plan;

 show_sort_group_keys((PlanState *) mstate, "Sort Key",
       plan->numCols, plan->sortColIdx,
       plan->sortOperators, plan->collations,
       plan->nullsFirst,
       ancestors, es);
}
