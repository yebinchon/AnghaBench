
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_trie_node {int dummy; } ;



struct nn_trie_node **nn_node_child (struct nn_trie_node *self, int index)
{


    return ((struct nn_trie_node**) (self + 1)) + index;
}
