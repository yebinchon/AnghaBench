
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;


 int check_index_predicates (int *,int *) ;
 int set_baserel_size_estimates (int *,int *) ;

__attribute__((used)) static void
set_plain_rel_size(PlannerInfo *root, RelOptInfo *rel, RangeTblEntry *rte)
{




 check_index_predicates(root, rel);


 set_baserel_size_estimates(root, rel);
}
