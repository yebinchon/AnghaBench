
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ query_pathkeys; } ;
struct TYPE_5__ {scalar_t__ joininfo; scalar_t__ has_eclass_joins; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;


 scalar_t__ NIL ;

bool
has_useful_pathkeys(PlannerInfo *root, RelOptInfo *rel)
{
 if (rel->joininfo != NIL || rel->has_eclass_joins)
  return 1;
 if (root->query_pathkeys != NIL)
  return 1;
 return 0;
}
