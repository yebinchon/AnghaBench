
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* end; TYPE_2__* root; } ;
typedef TYPE_1__ avl_tree ;
struct TYPE_7__ {struct TYPE_7__** children; } ;
typedef TYPE_2__ avl_node ;


 int pg_free (TYPE_2__*) ;

__attribute__((used)) static void
avlFree(avl_tree *tree, avl_node *node)
{
 if (node->children[0] != tree->end)
 {
  avlFree(tree, node->children[0]);
  pg_free(node->children[0]);
 }
 if (node->children[1] != tree->end)
 {
  avlFree(tree, node->children[1]);
  pg_free(node->children[1]);
 }
 if (node == tree->root)
 {

  if (node != tree->end)
   pg_free(node);

  pg_free(tree->end);
 }
}
