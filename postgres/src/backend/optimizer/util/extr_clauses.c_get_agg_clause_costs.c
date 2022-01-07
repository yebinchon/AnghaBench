
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * costs; int aggsplit; int * root; } ;
typedef TYPE_1__ get_agg_clause_costs_context ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int AggSplit ;
typedef int AggClauseCosts ;


 int get_agg_clause_costs_walker (int *,TYPE_1__*) ;

void
get_agg_clause_costs(PlannerInfo *root, Node *clause, AggSplit aggsplit,
      AggClauseCosts *costs)
{
 get_agg_clause_costs_context context;

 context.root = root;
 context.aggsplit = aggsplit;
 context.costs = costs;
 (void) get_agg_clause_costs_walker(clause, &context);
}
