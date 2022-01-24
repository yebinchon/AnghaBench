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
struct TYPE_3__ {int max; int min; } ;
struct TYPE_4__ {TYPE_1__ dense; } ;
struct nn_trie_node {int type; TYPE_2__ u; } ;

/* Variables and functions */
 int NN_TRIE_SPARSE_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct nn_trie_node*) ; 
 struct nn_trie_node** FUNC1 (struct nn_trie_node*,int) ; 

void FUNC2 (struct nn_trie_node *self)
{
    int children;
    int i;

    /*  Trivial case of the recursive algorithm. */
    if (!self)
        return;

    /*  Recursively destroy the child nodes. */
    children = self->type <= NN_TRIE_SPARSE_MAX ?
        self->type : (self->u.dense.max - self->u.dense.min + 1);
    for (i = 0; i != children; ++i)
        FUNC2 (*FUNC1 (self, i));

    /*  Deallocate this node. */
    FUNC0 (self);
}