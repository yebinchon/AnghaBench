#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pivot_field ;
struct TYPE_7__ {int /*<<< orphan*/  count; TYPE_2__* end; } ;
typedef  TYPE_1__ avl_tree ;
struct TYPE_8__ {int height; struct TYPE_8__** children; int /*<<< orphan*/  field; } ;
typedef  TYPE_2__ avl_node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__**) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(avl_tree *tree, avl_node **node, pivot_field field)
{
	avl_node   *current = *node;

	if (current == tree->end)
	{
		avl_node   *new_node = (avl_node *)
		FUNC1(sizeof(avl_node));

		new_node->height = 1;
		new_node->field = field;
		new_node->children[0] = new_node->children[1] = tree->end;
		tree->count++;
		*node = new_node;
	}
	else
	{
		int			cmp = FUNC2(&field, &current->field);

		if (cmp != 0)
		{
			FUNC3(tree,
						  cmp > 0 ? &current->children[1] : &current->children[0],
						  field);
			FUNC0(tree, node);
		}
	}
}