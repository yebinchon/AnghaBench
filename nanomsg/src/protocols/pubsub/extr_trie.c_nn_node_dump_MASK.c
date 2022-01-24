#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int min; int max; scalar_t__ nbr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * children; } ;
struct TYPE_6__ {TYPE_2__ dense; TYPE_1__ sparse; } ;
struct nn_trie_node {int prefix_len; int type; TYPE_3__ u; int /*<<< orphan*/ * prefix; scalar_t__ refcount; } ;

/* Variables and functions */
 int NN_TRIE_DENSE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void FUNC3 (struct nn_trie_node *self, int indent)
{
    int i;
    int children;

    if (!self) {
        FUNC0 (indent);
        FUNC2 ("NULL\n");
        return;
    }

    FUNC0 (indent);
    FUNC2 ("===================\n");
    FUNC0 (indent);
    FUNC2 ("refcount=%d\n", (int) self->refcount);
    FUNC0 (indent);
    FUNC2 ("prefix_len=%d\n", (int) self->prefix_len);
    FUNC0 (indent);
    if (self->type == NN_TRIE_DENSE_TYPE)
        FUNC2 ("type=dense\n");
    else
        FUNC2 ("type=sparse\n");
    FUNC0 (indent);
    FUNC2 ("prefix=\"");
    for (i = 0; i != self->prefix_len; ++i)
        FUNC1 (self->prefix [i]);
    FUNC2 ("\"\n");
    if (self->type <= 8) {
        FUNC0 (indent);
        FUNC2 ("sparse.children=\"");
        for (i = 0; i != self->type; ++i)
            FUNC1 (self->u.sparse.children [i]);
        FUNC2 ("\"\n");
        children = self->type;
    }
    else {
        FUNC0 (indent);
        FUNC2 ("dense.min='%c' (%d)\n", (char) self->u.dense.min,
            (int) self->u.dense.min);
        FUNC0 (indent);
        FUNC2 ("dense.max='%c' (%d)\n", (char) self->u.dense.max,
            (int) self->u.dense.max);
        FUNC0 (indent);
        FUNC2 ("dense.nbr=%d\n", (int) self->u.dense.nbr);
        children = self->u.dense.max - self->u.dense.min + 1;
    }

    for (i = 0; i != children; ++i)
        FUNC3 (((struct nn_trie_node**) (self + 1)) [i], indent + 1);

    FUNC0 (indent);
    FUNC2 ("===================\n");
}