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
typedef  int /*<<< orphan*/  Tuplestorestate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  scalar_t__ MinimalTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int*) ; 

bool
FUNC4(Tuplestorestate *state, bool forward,
						bool copy, TupleTableSlot *slot)
{
	MinimalTuple tuple;
	bool		should_free;

	tuple = (MinimalTuple) FUNC3(state, forward, &should_free);

	if (tuple)
	{
		if (copy && !should_free)
		{
			tuple = FUNC2(tuple);
			should_free = true;
		}
		FUNC1(tuple, slot, should_free);
		return true;
	}
	else
	{
		FUNC0(slot);
		return false;
	}
}