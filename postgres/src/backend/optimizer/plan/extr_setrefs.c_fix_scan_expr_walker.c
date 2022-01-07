
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int root; } ;
typedef TYPE_1__ fix_scan_expr_context ;
typedef int Node ;


 int Assert (int) ;
 int IsA (int *,int ) ;
 int PlaceHolderVar ;
 int expression_tree_walker (int *,int (*) (int *,TYPE_1__*),void*) ;
 int fix_expr_common (int ,int *) ;

__attribute__((used)) static bool
fix_scan_expr_walker(Node *node, fix_scan_expr_context *context)
{
 if (node == ((void*)0))
  return 0;
 Assert(!IsA(node, PlaceHolderVar));
 fix_expr_common(context->root, node);
 return expression_tree_walker(node, fix_scan_expr_walker,
          (void *) context);
}
