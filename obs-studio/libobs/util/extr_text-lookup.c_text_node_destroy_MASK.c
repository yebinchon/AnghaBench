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
struct text_node {scalar_t__ leaf; int /*<<< orphan*/  str; struct text_node* next; struct text_node* first_subnode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct text_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct text_node *node)
{
	struct text_node *subnode;

	if (!node)
		return;

	subnode = node->first_subnode;
	while (subnode) {
		struct text_node *destroy_node = subnode;

		subnode = subnode->next;
		FUNC3(destroy_node);
	}

	FUNC1(&node->str);
	if (node->leaf)
		FUNC2(node->leaf);
	FUNC0(node);
}