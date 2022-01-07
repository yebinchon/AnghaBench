
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_trie {int root; } ;


 int nn_node_dump (int ,int ) ;

void nn_trie_dump (struct nn_trie *self)
{
    nn_node_dump (self->root, 0);
}
