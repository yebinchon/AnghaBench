
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nn_trie_node {scalar_t__ prefix_len; } ;
struct nn_trie {struct nn_trie_node* root; } ;


 scalar_t__ nn_node_check_prefix (struct nn_trie_node*,int const*,size_t) ;
 scalar_t__ nn_node_has_subscribers (struct nn_trie_node*) ;
 struct nn_trie_node** nn_node_next (struct nn_trie_node*,int const) ;

int nn_trie_match (struct nn_trie *self, const uint8_t *data, size_t size)
{
    struct nn_trie_node *node;
    struct nn_trie_node **tmp;

    node = self->root;
    while (1) {


        if (!node)
            return 0;



        if (nn_node_check_prefix (node, data, size) != node->prefix_len)
            return 0;


        data += node->prefix_len;
        size -= node->prefix_len;


        if (nn_node_has_subscribers (node))
            return 1;


        tmp = nn_node_next (node, *data);
        node = tmp ? *tmp : ((void*)0);
        ++data;
        --size;
    }
}
