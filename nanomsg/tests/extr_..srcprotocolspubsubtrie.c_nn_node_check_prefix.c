
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct nn_trie_node {int prefix_len; scalar_t__ const* prefix; } ;



int nn_node_check_prefix (struct nn_trie_node *self,
    const uint8_t *data, size_t size)
{


    int i;

    for (i = 0; i != self->prefix_len; ++i) {
        if (!size || self->prefix [i] != *data)
            return i;
        ++data;
        --size;
    }
    return self->prefix_len;
}
