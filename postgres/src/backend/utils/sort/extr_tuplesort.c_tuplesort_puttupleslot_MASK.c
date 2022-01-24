#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sortcontext; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  TupleTableSlot ;
typedef  int /*<<< orphan*/  SortTuple ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC3(Tuplesortstate *state, TupleTableSlot *slot)
{
	MemoryContext oldcontext = FUNC1(state->sortcontext);
	SortTuple	stup;

	/*
	 * Copy the given tuple into memory we control, and decrease availMem.
	 * Then call the common code.
	 */
	FUNC0(state, &stup, (void *) slot);

	FUNC2(state, &stup);

	FUNC1(oldcontext);
}