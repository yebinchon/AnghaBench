
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pages; double ntuples; } ;
struct TYPE_6__ {double startup; double per_tuple; } ;
struct TYPE_7__ {TYPE_1__ baserestrictcost; } ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef TYPE_3__ FileFdwPlanState ;
typedef double Cost ;
typedef int BlockNumber ;


 int cpu_tuple_cost ;
 int seq_page_cost ;

__attribute__((used)) static void
estimate_costs(PlannerInfo *root, RelOptInfo *baserel,
      FileFdwPlanState *fdw_private,
      Cost *startup_cost, Cost *total_cost)
{
 BlockNumber pages = fdw_private->pages;
 double ntuples = fdw_private->ntuples;
 Cost run_cost = 0;
 Cost cpu_per_tuple;
 run_cost += seq_page_cost * pages;

 *startup_cost = baserel->baserestrictcost.startup;
 cpu_per_tuple = cpu_tuple_cost * 10 + baserel->baserestrictcost.per_tuple;
 run_cost += cpu_per_tuple * ntuples;
 *total_cost = *startup_cost + run_cost;
}
