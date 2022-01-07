
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int Const ;
 scalar_t__ IsA (int *,int ) ;
 int List ;
 int expression_tree_walker (int *,int (*) (int *,void*),void*) ;

__attribute__((used)) static bool
contain_non_const_walker(Node *node, void *context)
{
 if (node == ((void*)0))
  return 0;
 if (IsA(node, Const))
  return 0;
 if (IsA(node, List))
  return expression_tree_walker(node, contain_non_const_walker, context);

 return 1;
}
