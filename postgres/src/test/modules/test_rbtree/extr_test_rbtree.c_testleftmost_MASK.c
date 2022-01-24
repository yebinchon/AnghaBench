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
struct TYPE_2__ {scalar_t__ key; } ;
typedef  int /*<<< orphan*/  RBTree ;
typedef  TYPE_1__ IntRBTreeNode ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(int size)
{
	RBTree	   *tree = FUNC0();
	IntRBTreeNode *result;

	/* Check that empty tree has no leftmost element */
	if (FUNC2(tree) != NULL)
		FUNC1(ERROR, "leftmost node of empty tree is not NULL");

	/* fill tree with consecutive natural numbers */
	FUNC3(tree, size, 1);

	/* Check that leftmost element is the smallest one */
	result = (IntRBTreeNode *) FUNC2(tree);
	if (result == NULL || result->key != 0)
		FUNC1(ERROR, "rbt_leftmost gave wrong result");
}