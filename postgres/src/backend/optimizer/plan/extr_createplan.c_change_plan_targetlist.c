
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parallel_safe; int * targetlist; } ;
typedef TYPE_1__ Plan ;
typedef int List ;


 TYPE_1__* inject_projection_plan (TYPE_1__*,int *,int) ;
 int is_projection_capable_plan (TYPE_1__*) ;
 int tlist_same_exprs (int *,int *) ;

Plan *
change_plan_targetlist(Plan *subplan, List *tlist, bool tlist_parallel_safe)
{





 if (!is_projection_capable_plan(subplan) &&
  !tlist_same_exprs(tlist, subplan->targetlist))
  subplan = inject_projection_plan(subplan, tlist,
           subplan->parallel_safe &&
           tlist_parallel_safe);
 else
 {

  subplan->targetlist = tlist;
  subplan->parallel_safe &= tlist_parallel_safe;
 }
 return subplan;
}
