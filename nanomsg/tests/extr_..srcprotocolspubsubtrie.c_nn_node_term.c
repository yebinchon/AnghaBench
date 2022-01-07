
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ dense; } ;
struct nn_trie_node {int type; TYPE_2__ u; } ;


 int NN_TRIE_SPARSE_MAX ;
 int nn_free (struct nn_trie_node*) ;
 struct nn_trie_node** nn_node_child (struct nn_trie_node*,int) ;

void nn_node_term (struct nn_trie_node *self)
{
    int children;
    int i;


    if (!self)
        return;


    children = self->type <= NN_TRIE_SPARSE_MAX ?
        self->type : (self->u.dense.max - self->u.dense.min + 1);
    for (i = 0; i != children; ++i)
        nn_node_term (*nn_node_child (self, i));


    nn_free (self);
}
