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
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC4(RBTree *tree, int size, int step)
{
	int		   *permutation = FUNC0(size);
	IntRBTreeNode node;
	bool		isNew;
	int			i;

	/* Insert values.  We don't expect any collisions. */
	for (i = 0; i < size; i++)
	{
		node.key = step * permutation[i];
		FUNC3(tree, (RBTNode *) &node, &isNew);
		if (!isNew)
			FUNC1(ERROR, "unexpected !isNew result from rbt_insert");
	}

	/*
	 * Re-insert the first value to make sure collisions work right.  It's
	 * probably not useful to test that case over again for all the values.
	 */
	if (size > 0)
	{
		node.key = step * permutation[0];
		FUNC3(tree, (RBTNode *) &node, &isNew);
		if (isNew)
			FUNC1(ERROR, "unexpected isNew result from rbt_insert");
	}

	FUNC2(permutation);
}