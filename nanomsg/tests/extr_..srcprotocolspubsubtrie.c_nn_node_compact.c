
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * children; } ;
struct TYPE_4__ {TYPE_1__ sparse; } ;
struct nn_trie_node {int type; scalar_t__ prefix_len; TYPE_2__ u; int * prefix; } ;


 scalar_t__ NN_TRIE_PREFIX_MAX ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int nn_free (struct nn_trie_node*) ;
 struct nn_trie_node** nn_node_child (struct nn_trie_node*,int ) ;
 scalar_t__ nn_node_has_subscribers (struct nn_trie_node*) ;

struct nn_trie_node *nn_node_compact (struct nn_trie_node *self)
{



    struct nn_trie_node *ch;


    if (nn_node_has_subscribers (self))
        return self;


    if (self->type != 1)
        return self;


    ch = *nn_node_child (self, 0);
    if (self->prefix_len + ch->prefix_len + 1 > NN_TRIE_PREFIX_MAX)
        return self;


    memmove (ch->prefix + self->prefix_len + 1, ch->prefix, ch->prefix_len);
    memcpy (ch->prefix, self->prefix, self->prefix_len);
    ch->prefix [self->prefix_len] = self->u.sparse.children [0];
    ch->prefix_len += self->prefix_len + 1;


    nn_free (self);


    return ch;
}
