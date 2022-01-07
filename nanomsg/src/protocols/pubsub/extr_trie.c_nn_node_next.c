
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {scalar_t__ min; scalar_t__ max; } ;
struct TYPE_4__ {scalar_t__* children; } ;
struct TYPE_6__ {TYPE_2__ dense; TYPE_1__ sparse; } ;
struct nn_trie_node {int type; TYPE_3__ u; } ;


 struct nn_trie_node** nn_node_child (struct nn_trie_node*,scalar_t__) ;

struct nn_trie_node **nn_node_next (struct nn_trie_node *self, uint8_t c)
{



    int i;

    if (self->type == 0)
        return ((void*)0);


    if (self->type <= 8) {
        for (i = 0; i != self->type; ++i)
            if (self->u.sparse.children [i] == c)
                return nn_node_child (self, i);
        return ((void*)0);
    }


    if (c < self->u.dense.min || c > self->u.dense.max)
        return ((void*)0);
    return nn_node_child (self, c - self->u.dense.min);
}
