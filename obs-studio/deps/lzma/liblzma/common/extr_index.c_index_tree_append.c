
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ uncompressed_base; scalar_t__ compressed_base; struct TYPE_5__* parent; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ index_tree_node ;
struct TYPE_6__ {scalar_t__ count; TYPE_1__* root; TYPE_1__* rightmost; TYPE_1__* leftmost; } ;
typedef TYPE_2__ index_tree ;


 scalar_t__ UINT32_C (int) ;
 int assert (int) ;
 scalar_t__ bsr32 (scalar_t__) ;
 scalar_t__ ctz32 (scalar_t__) ;

__attribute__((used)) static void
index_tree_append(index_tree *tree, index_tree_node *node)
{
 node->parent = tree->rightmost;
 node->left = ((void*)0);
 node->right = ((void*)0);

 ++tree->count;


 if (tree->root == ((void*)0)) {
  tree->root = node;
  tree->leftmost = node;
  tree->rightmost = node;
  return;
 }


 assert(tree->rightmost->uncompressed_base <= node->uncompressed_base);
 assert(tree->rightmost->compressed_base < node->compressed_base);



 tree->rightmost->right = node;
 tree->rightmost = node;






 uint32_t up = tree->count ^ (UINT32_C(1) << bsr32(tree->count));
 if (up != 0) {

  up = ctz32(tree->count) + 2;
  do {
   node = node->parent;
  } while (--up > 0);


  index_tree_node *pivot = node->right;

  if (node->parent == ((void*)0)) {
   tree->root = pivot;
  } else {
   assert(node->parent->right == node);
   node->parent->right = pivot;
  }

  pivot->parent = node->parent;

  node->right = pivot->left;
  if (node->right != ((void*)0))
   node->right->parent = node;

  pivot->left = node;
  node->parent = pivot;
 }

 return;
}
