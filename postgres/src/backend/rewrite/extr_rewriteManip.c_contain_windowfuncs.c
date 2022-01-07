
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int contain_windowfuncs_walker ;
 int query_or_expression_tree_walker (int *,int ,int *,int ) ;

bool
contain_windowfuncs(Node *node)
{




 return query_or_expression_tree_walker(node,
             contain_windowfuncs_walker,
             ((void*)0),
             0);
}
