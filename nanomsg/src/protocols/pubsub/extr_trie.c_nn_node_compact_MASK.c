#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * children; } ;
struct TYPE_4__ {TYPE_1__ sparse; } ;
struct nn_trie_node {int type; scalar_t__ prefix_len; TYPE_2__ u; int /*<<< orphan*/ * prefix; } ;

/* Variables and functions */
 scalar_t__ NN_TRIE_PREFIX_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nn_trie_node*) ; 
 struct nn_trie_node** FUNC3 (struct nn_trie_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nn_trie_node*) ; 

struct nn_trie_node *FUNC5 (struct nn_trie_node *self)
{
    /*  Tries to merge the node with the child node. Returns pointer to
        the compacted node. */

    struct nn_trie_node *ch;

    /*  Node that is a subscription cannot be compacted. */
    if (FUNC4 (self))
        return self;

    /*  Only a node with a single child can be compacted. */
    if (self->type != 1)
        return self;

    /*  Check whether combined prefixes would fix into a single node. */
    ch = *FUNC3 (self, 0);
    if (self->prefix_len + ch->prefix_len + 1 > NN_TRIE_PREFIX_MAX)
        return self;

    /*  Concatenate the prefixes. */
    FUNC1 (ch->prefix + self->prefix_len + 1, ch->prefix, ch->prefix_len);
    FUNC0 (ch->prefix, self->prefix, self->prefix_len);
    ch->prefix [self->prefix_len] = self->u.sparse.children [0];
    ch->prefix_len += self->prefix_len + 1;

    /*  Get rid of the obsolete parent node. */
    FUNC2 (self);

    /*  Return the new compacted node. */
    return ch;
}