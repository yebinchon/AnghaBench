
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rtekind; int values_lists; } ;
struct TYPE_6__ {scalar_t__ relid; int tuples; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ RangeTblEntry ;
typedef int PlannerInfo ;


 int Assert (int) ;
 scalar_t__ RTE_VALUES ;
 int list_length (int ) ;
 TYPE_2__* planner_rt_fetch (scalar_t__,int *) ;
 int set_baserel_size_estimates (int *,TYPE_1__*) ;

void
set_values_size_estimates(PlannerInfo *root, RelOptInfo *rel)
{
 RangeTblEntry *rte;


 Assert(rel->relid > 0);
 rte = planner_rt_fetch(rel->relid, root);
 Assert(rte->rtekind == RTE_VALUES);







 rel->tuples = list_length(rte->values_lists);


 set_baserel_size_estimates(root, rel);
}
