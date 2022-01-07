
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rtekind; } ;
struct TYPE_5__ {scalar_t__ relid; int tuples; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;


 int Assert (int) ;
 scalar_t__ RTE_TABLEFUNC ;
 TYPE_4__* planner_rt_fetch (scalar_t__,int *) ;
 int set_baserel_size_estimates (int *,TYPE_1__*) ;

void
set_tablefunc_size_estimates(PlannerInfo *root, RelOptInfo *rel)
{

 Assert(rel->relid > 0);
 Assert(planner_rt_fetch(rel->relid, root)->rtekind == RTE_TABLEFUNC);

 rel->tuples = 100;


 set_baserel_size_estimates(root, rel);
}
