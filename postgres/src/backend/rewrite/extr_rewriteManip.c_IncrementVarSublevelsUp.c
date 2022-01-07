
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int delta_sublevels_up; int min_sublevels_up; } ;
typedef int Node ;
typedef TYPE_1__ IncrementVarSublevelsUp_context ;


 int IncrementVarSublevelsUp_walker ;
 int QTW_EXAMINE_RTES_BEFORE ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

void
IncrementVarSublevelsUp(Node *node, int delta_sublevels_up,
      int min_sublevels_up)
{
 IncrementVarSublevelsUp_context context;

 context.delta_sublevels_up = delta_sublevels_up;
 context.min_sublevels_up = min_sublevels_up;





 query_or_expression_tree_walker(node,
         IncrementVarSublevelsUp_walker,
         (void *) &context,
         QTW_EXAMINE_RTES_BEFORE);
}
