
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sublevels_up; } ;
typedef TYPE_1__ contain_aggs_of_level_context ;
typedef int Node ;


 int contain_aggs_of_level_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

bool
contain_aggs_of_level(Node *node, int levelsup)
{
 contain_aggs_of_level_context context;

 context.sublevels_up = levelsup;





 return query_or_expression_tree_walker(node,
             contain_aggs_of_level_walker,
             (void *) &context,
             0);
}
