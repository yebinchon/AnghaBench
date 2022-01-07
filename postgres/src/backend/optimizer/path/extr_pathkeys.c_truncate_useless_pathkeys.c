
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int * NIL ;
 int list_copy (int *) ;
 int list_length (int *) ;
 int * list_truncate (int ,int) ;
 int pathkeys_useful_for_merging (int *,int *,int *) ;
 int pathkeys_useful_for_ordering (int *,int *) ;

List *
truncate_useless_pathkeys(PlannerInfo *root,
        RelOptInfo *rel,
        List *pathkeys)
{
 int nuseful;
 int nuseful2;

 nuseful = pathkeys_useful_for_merging(root, rel, pathkeys);
 nuseful2 = pathkeys_useful_for_ordering(root, pathkeys);
 if (nuseful2 > nuseful)
  nuseful = nuseful2;





 if (nuseful == 0)
  return NIL;
 else if (nuseful == list_length(pathkeys))
  return pathkeys;
 else
  return list_truncate(list_copy(pathkeys), nuseful);
}
