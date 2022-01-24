#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sortKeys; int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_2__ Tuplesortstate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_9__ {int /*<<< orphan*/ * tuple; int /*<<< orphan*/  datum1; } ;
struct TYPE_7__ {scalar_t__ abbrev_converter; } ;
typedef  TYPE_3__ SortTuple ;
typedef  int /*<<< orphan*/  MinimalTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,TYPE_3__*) ; 

bool
FUNC5(Tuplesortstate *state, bool forward, bool copy,
					   TupleTableSlot *slot, Datum *abbrev)
{
	MemoryContext oldcontext = FUNC2(state->sortcontext);
	SortTuple	stup;

	if (!FUNC4(state, forward, &stup))
		stup.tuple = NULL;

	FUNC2(oldcontext);

	if (stup.tuple)
	{
		/* Record abbreviated key for caller */
		if (state->sortKeys->abbrev_converter && abbrev)
			*abbrev = stup.datum1;

		if (copy)
			stup.tuple = FUNC3((MinimalTuple) stup.tuple);

		FUNC1((MinimalTuple) stup.tuple, slot, copy);
		return true;
	}
	else
	{
		FUNC0(slot);
		return false;
	}
}