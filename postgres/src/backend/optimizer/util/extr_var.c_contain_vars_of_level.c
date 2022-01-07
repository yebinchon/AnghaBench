
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_vars_of_level_walker ;
 int query_or_expression_tree_walker (int *,int ,void*,int ) ;

bool
contain_vars_of_level(Node *node, int levelsup)
{
 int sublevels_up = levelsup;

 return query_or_expression_tree_walker(node,
             contain_vars_of_level_walker,
             (void *) &sublevels_up,
             0);
}
