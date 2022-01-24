#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int key; } ;
typedef  int /*<<< orphan*/  RBTreeIterator ;
typedef  int /*<<< orphan*/  RBTree ;
typedef  TYPE_1__ IntRBTreeNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  LeftRightWalk ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC5(int size)
{
	RBTree	   *tree = FUNC0();
	IntRBTreeNode *node;
	RBTreeIterator iter;
	int			lastKey = -1;
	int			count = 0;

	/* check iteration over empty tree */
	FUNC2(tree, LeftRightWalk, &iter);
	if (FUNC3(&iter) != NULL)
		FUNC1(ERROR, "left-right walk over empty tree produced an element");

	/* fill tree with consecutive natural numbers */
	FUNC4(tree, size, 1);

	/* iterate over the tree */
	FUNC2(tree, LeftRightWalk, &iter);

	while ((node = (IntRBTreeNode *) FUNC3(&iter)) != NULL)
	{
		/* check that order is increasing */
		if (node->key <= lastKey)
			FUNC1(ERROR, "left-right walk gives elements not in sorted order");
		lastKey = node->key;
		count++;
	}

	if (lastKey != size - 1)
		FUNC1(ERROR, "left-right walk did not reach end");
	if (count != size)
		FUNC1(ERROR, "left-right walk missed some elements");
}