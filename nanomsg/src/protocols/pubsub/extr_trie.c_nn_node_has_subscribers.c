
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_trie_node {scalar_t__ refcount; } ;



int nn_node_has_subscribers (struct nn_trie_node *node)
{

    return node->refcount ? 1 : 0;
}
