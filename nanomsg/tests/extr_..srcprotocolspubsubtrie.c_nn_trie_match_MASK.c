#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct nn_trie_node {scalar_t__ prefix_len; } ;
struct nn_trie {struct nn_trie_node* root; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nn_trie_node*,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC1 (struct nn_trie_node*) ; 
 struct nn_trie_node** FUNC2 (struct nn_trie_node*,int /*<<< orphan*/  const) ; 

int FUNC3 (struct nn_trie *self, const uint8_t *data, size_t size)
{
    struct nn_trie_node *node;
    struct nn_trie_node **tmp;

    node = self->root;
    while (1) {

        /*  If we are at the end of the trie, return. */
        if (!node)
            return 0;

        /*  Check whether whole prefix matches the data. If not so,
            the whole string won't match. */
        if (FUNC0 (node, data, size) != node->prefix_len)
            return 0;

        /*  Skip the prefix. */
        data += node->prefix_len;
        size -= node->prefix_len;

        /*  If all the data are matched, return. */
        if (FUNC1 (node))
            return 1;

        /*  Move to the next node. */
        tmp = FUNC2 (node, *data);
        node = tmp ? *tmp : NULL;
        ++data;
        --size;
    }
}