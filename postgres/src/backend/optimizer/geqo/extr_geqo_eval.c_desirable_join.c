
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelOptInfo ;
typedef int PlannerInfo ;


 scalar_t__ have_join_order_restriction (int *,int *,int *) ;
 scalar_t__ have_relevant_joinclause (int *,int *,int *) ;

__attribute__((used)) static bool
desirable_join(PlannerInfo *root,
      RelOptInfo *outer_rel, RelOptInfo *inner_rel)
{




 if (have_relevant_joinclause(root, outer_rel, inner_rel) ||
  have_join_order_restriction(root, outer_rel, inner_rel))
  return 1;


 return 0;
}
