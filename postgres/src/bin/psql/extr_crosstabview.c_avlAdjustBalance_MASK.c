#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* end; } ;
typedef  TYPE_1__ avl_tree ;
struct TYPE_10__ {struct TYPE_10__** children; } ;
typedef  TYPE_2__ avl_node ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__**,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(avl_tree *tree, avl_node **node)
{
	avl_node   *current = *node;
	int			b = FUNC0(current) / 2;

	if (b != 0)
	{
		int			dir = (1 - b) / 2;

		if (FUNC0(current->children[dir]) == -b)
			FUNC1(&current->children[dir], !dir);
		current = FUNC1(node, dir);
	}
	if (current != tree->end)
		FUNC2(current);
}