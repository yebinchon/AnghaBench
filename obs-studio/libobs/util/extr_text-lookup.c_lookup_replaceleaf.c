
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_node {struct text_leaf* leaf; } ;
struct text_leaf {int dummy; } ;


 int text_leaf_destroy (struct text_leaf*) ;

__attribute__((used)) static inline void lookup_replaceleaf(struct text_node *node,
          struct text_leaf *leaf)
{
 text_leaf_destroy(node->leaf);
 node->leaf = leaf;
}
