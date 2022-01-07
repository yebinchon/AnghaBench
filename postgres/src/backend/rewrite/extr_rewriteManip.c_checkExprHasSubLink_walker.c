
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 scalar_t__ IsA (int *,int ) ;
 int SubLink ;
 int expression_tree_walker (int *,int (*) (int *,void*),void*) ;

__attribute__((used)) static bool
checkExprHasSubLink_walker(Node *node, void *context)
{
 if (node == ((void*)0))
  return 0;
 if (IsA(node, SubLink))
  return 1;
 return expression_tree_walker(node, checkExprHasSubLink_walker, context);
}
