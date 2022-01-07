
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__ const* parent; struct TYPE_3__ const* right; struct TYPE_3__ const* left; } ;
typedef TYPE_1__ const index_tree_node ;



__attribute__((used)) static void *
index_tree_next(const index_tree_node *node)
{
 if (node->right != ((void*)0)) {
  node = node->right;
  while (node->left != ((void*)0))
   node = node->left;

  return (void *)(node);
 }

 while (node->parent != ((void*)0) && node->parent->right == node)
  node = node->parent;

 return (void *)(node->parent);
}
