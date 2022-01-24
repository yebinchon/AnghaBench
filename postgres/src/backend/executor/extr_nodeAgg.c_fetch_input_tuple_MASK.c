#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_4__ {scalar_t__ sort_out; int /*<<< orphan*/ * sort_slot; scalar_t__ sort_in; } ;
typedef  TYPE_1__ AggState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static TupleTableSlot *
FUNC6(AggState *aggstate)
{
	TupleTableSlot *slot;

	if (aggstate->sort_in)
	{
		/* make sure we check for interrupts in either path through here */
		FUNC0();
		if (!FUNC4(aggstate->sort_in, true, false,
									aggstate->sort_slot, NULL))
			return NULL;
		slot = aggstate->sort_slot;
	}
	else
		slot = FUNC1(FUNC3(aggstate));

	if (!FUNC2(slot) && aggstate->sort_out)
		FUNC5(aggstate->sort_out, slot);

	return slot;
}