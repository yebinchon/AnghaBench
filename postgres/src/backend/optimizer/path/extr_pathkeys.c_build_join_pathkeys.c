
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;
typedef scalar_t__ JoinType ;


 scalar_t__ JOIN_FULL ;
 scalar_t__ JOIN_RIGHT ;
 int * NIL ;
 int * truncate_useless_pathkeys (int *,int *,int *) ;

List *
build_join_pathkeys(PlannerInfo *root,
     RelOptInfo *joinrel,
     JoinType jointype,
     List *outer_pathkeys)
{
 if (jointype == JOIN_FULL || jointype == JOIN_RIGHT)
  return NIL;
 return truncate_useless_pathkeys(root, joinrel, outer_pathkeys);
}
