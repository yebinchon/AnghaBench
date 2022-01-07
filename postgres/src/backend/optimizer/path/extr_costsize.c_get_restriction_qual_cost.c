
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int ppi_clauses; } ;
struct TYPE_9__ {scalar_t__ per_tuple; scalar_t__ startup; } ;
struct TYPE_8__ {TYPE_2__ baserestrictcost; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ QualCost ;
typedef int PlannerInfo ;
typedef TYPE_3__ ParamPathInfo ;


 int cost_qual_eval (TYPE_2__*,int ,int *) ;

__attribute__((used)) static void
get_restriction_qual_cost(PlannerInfo *root, RelOptInfo *baserel,
        ParamPathInfo *param_info,
        QualCost *qpqual_cost)
{
 if (param_info)
 {

  cost_qual_eval(qpqual_cost, param_info->ppi_clauses, root);

  qpqual_cost->startup += baserel->baserestrictcost.startup;
  qpqual_cost->per_tuple += baserel->baserestrictcost.per_tuple;
 }
 else
  *qpqual_cost = baserel->baserestrictcost;
}
