#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  GinStatsData ;
typedef  TYPE_1__ GinBtreeStack ;
typedef  int /*<<< orphan*/  GinBtree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(GinBtree btree, GinBtreeStack *stack, void *insertdata,
			   GinStatsData *buildStats)
{
	bool		done;

	/* If the leaf page was incompletely split, finish the split first */
	if (FUNC1(FUNC0(stack->buffer)))
		FUNC4(btree, stack, false, buildStats);

	done = FUNC5(btree, stack,
						  insertdata, InvalidBlockNumber,
						  InvalidBuffer, buildStats);
	if (done)
	{
		FUNC2(stack->buffer, GIN_UNLOCK);
		FUNC3(stack);
	}
	else
		FUNC4(btree, stack, true, buildStats);
}