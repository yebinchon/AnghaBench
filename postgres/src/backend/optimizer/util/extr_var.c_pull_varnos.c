
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * varnos; scalar_t__ sublevels_up; } ;
typedef TYPE_1__ pull_varnos_context ;
typedef int * Relids ;
typedef int Node ;


 int pull_varnos_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

Relids
pull_varnos(Node *node)
{
 pull_varnos_context context;

 context.varnos = ((void*)0);
 context.sublevels_up = 0;





 query_or_expression_tree_walker(node,
         pull_varnos_walker,
         (void *) &context,
         0);

 return context.varnos;
}
