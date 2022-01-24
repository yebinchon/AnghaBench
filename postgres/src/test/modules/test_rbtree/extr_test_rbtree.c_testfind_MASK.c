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
typedef  int /*<<< orphan*/  RBTree ;
typedef  int /*<<< orphan*/  RBTNode ;
typedef  TYPE_1__ IntRBTreeNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(int size)
{
	RBTree	   *tree = FUNC0();
	int			i;

	/* Insert even integers from 0 to 2 * (size-1) */
	FUNC3(tree, size, 2);

	/* Check that all inserted elements can be found */
	for (i = 0; i < size; i++)
	{
		IntRBTreeNode node;
		IntRBTreeNode *resultNode;

		node.key = 2 * i;
		resultNode = (IntRBTreeNode *) FUNC2(tree, (RBTNode *) &node);
		if (resultNode == NULL)
			FUNC1(ERROR, "inserted element was not found");
		if (node.key != resultNode->key)
			FUNC1(ERROR, "find operation in rbtree gave wrong result");
	}

	/*
	 * Check that not-inserted elements can not be found, being sure to try
	 * values before the first and after the last element.
	 */
	for (i = -1; i <= 2 * size; i += 2)
	{
		IntRBTreeNode node;
		IntRBTreeNode *resultNode;

		node.key = i;
		resultNode = (IntRBTreeNode *) FUNC2(tree, (RBTNode *) &node);
		if (resultNode != NULL)
			FUNC1(ERROR, "not-inserted element was found");
	}
}