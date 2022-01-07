
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ per_tuple; scalar_t__ startup; } ;
struct TYPE_5__ {TYPE_2__ total; int * root; } ;
typedef TYPE_1__ cost_qual_eval_context ;
typedef TYPE_2__ QualCost ;
typedef int PlannerInfo ;
typedef int Node ;


 int cost_qual_eval_walker (int *,TYPE_1__*) ;

void
cost_qual_eval_node(QualCost *cost, Node *qual, PlannerInfo *root)
{
 cost_qual_eval_context context;

 context.root = root;
 context.total.startup = 0;
 context.total.per_tuple = 0;

 cost_qual_eval_walker(qual, &context);

 *cost = context.total;
}
