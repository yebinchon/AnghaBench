
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sublevels_up; int * vars; } ;
typedef TYPE_1__ pull_vars_context ;
typedef int Node ;
typedef int List ;


 int * NIL ;
 int pull_vars_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

List *
pull_vars_of_level(Node *node, int levelsup)
{
 pull_vars_context context;

 context.vars = NIL;
 context.sublevels_up = levelsup;





 query_or_expression_tree_walker(node,
         pull_vars_walker,
         (void *) &context,
         0);

 return context.vars;
}
