
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_node {scalar_t__ leaf; int str; struct text_node* next; struct text_node* first_subnode; } ;


 int bfree (struct text_node*) ;
 int dstr_free (int *) ;
 int text_leaf_destroy (scalar_t__) ;

__attribute__((used)) static void text_node_destroy(struct text_node *node)
{
 struct text_node *subnode;

 if (!node)
  return;

 subnode = node->first_subnode;
 while (subnode) {
  struct text_node *destroy_node = subnode;

  subnode = subnode->next;
  text_node_destroy(destroy_node);
 }

 dstr_free(&node->str);
 if (node->leaf)
  text_leaf_destroy(node->leaf);
 bfree(node);
}
