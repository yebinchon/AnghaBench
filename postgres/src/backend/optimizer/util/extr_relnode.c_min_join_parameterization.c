
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lateral_relids; } ;
typedef int * Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int * bms_del_members (int *,int *) ;
 scalar_t__ bms_is_empty (int *) ;
 int * bms_union (int ,int ) ;

Relids
min_join_parameterization(PlannerInfo *root,
        Relids joinrelids,
        RelOptInfo *outer_rel,
        RelOptInfo *inner_rel)
{
 Relids result;
 result = bms_union(outer_rel->lateral_relids, inner_rel->lateral_relids);
 result = bms_del_members(result, joinrelids);


 if (bms_is_empty(result))
  result = ((void*)0);

 return result;
}
