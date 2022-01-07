
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * query_pathkeys; } ;
typedef TYPE_1__ PlannerInfo ;
typedef int List ;


 int * NIL ;
 int list_length (int *) ;
 scalar_t__ pathkeys_contained_in (int *,int *) ;

__attribute__((used)) static int
pathkeys_useful_for_ordering(PlannerInfo *root, List *pathkeys)
{
 if (root->query_pathkeys == NIL)
  return 0;

 if (pathkeys == NIL)
  return 0;

 if (pathkeys_contained_in(root->query_pathkeys, pathkeys))
 {

  return list_length(root->query_pathkeys);
 }

 return 0;
}
