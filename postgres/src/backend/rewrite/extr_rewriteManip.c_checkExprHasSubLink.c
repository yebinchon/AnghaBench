
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int QTW_IGNORE_RC_SUBQUERIES ;
 int checkExprHasSubLink_walker ;
 int query_or_expression_tree_walker (int *,int ,int *,int ) ;

bool
checkExprHasSubLink(Node *node)
{




 return query_or_expression_tree_walker(node,
             checkExprHasSubLink_walker,
             ((void*)0),
             QTW_IGNORE_RC_SUBQUERIES);
}
