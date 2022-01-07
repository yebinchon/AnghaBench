
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nn_trie {int root; } ;


 int nn_node_unsubscribe (int *,int const*,size_t) ;

int nn_trie_unsubscribe (struct nn_trie *self, const uint8_t *data, size_t size)
{
    return nn_node_unsubscribe (&self->root, data, size);
}
