#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Tuplesortstate ;
struct TYPE_6__ {int /*<<< orphan*/  ps_ResultTupleSlot; } ;
struct TYPE_7__ {TYPE_1__ ps; int /*<<< orphan*/  ss_ScanTupleSlot; } ;
struct TYPE_8__ {int /*<<< orphan*/ * tuplesortstate; TYPE_2__ ss; } ;
typedef  TYPE_3__ SortState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(SortState *node)
{
	FUNC2("ExecEndSort: %s\n",
			   "shutting down sort node");

	/*
	 * clean out the tuple table
	 */
	FUNC0(node->ss.ss_ScanTupleSlot);
	/* must drop pointer to sort result tuple */
	FUNC0(node->ss.ps.ps_ResultTupleSlot);

	/*
	 * Release tuplesort resources
	 */
	if (node->tuplesortstate != NULL)
		FUNC4((Tuplesortstate *) node->tuplesortstate);
	node->tuplesortstate = NULL;

	/*
	 * shut down the subplan
	 */
	FUNC1(FUNC3(node));

	FUNC2("ExecEndSort: %s\n",
			   "sort node shutdown");
}