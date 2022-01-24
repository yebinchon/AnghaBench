#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ array; } ;
struct text_node {struct text_leaf* leaf; TYPE_1__ str; struct text_node* first_subnode; } ;
struct text_leaf {int dummy; } ;

/* Variables and functions */
 struct text_node* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct text_leaf*,struct text_node*) ; 

__attribute__((used)) static void FUNC4(const char *lookup_val, size_t len,
			     struct text_leaf *leaf, struct text_node *node)
{
	struct text_node *split = FUNC0(sizeof(struct text_node));

	FUNC1(&split->str, node->str.array + len);
	split->leaf = node->leaf;
	split->first_subnode = node->first_subnode;
	node->first_subnode = split;

	FUNC2(&node->str, len);

	if (lookup_val[len] != 0) {
		node->leaf = NULL;
		FUNC3(lookup_val + len, leaf, node);
	} else {
		node->leaf = leaf;
	}
}