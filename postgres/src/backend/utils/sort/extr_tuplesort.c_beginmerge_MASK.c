#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ memtupcount; int* mergeactive; int maxTapes; int tapeRange; scalar_t__* tp_dummy; scalar_t__* tp_runs; int* tp_tapenum; int activeTapes; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_9__ {int srctape; } ;
typedef  TYPE_2__ SortTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(Tuplesortstate *state)
{
	int			activeTapes;
	int			tapenum;
	int			srcTape;

	/* Heap should be empty here */
	FUNC0(state->memtupcount == 0);

	/* Adjust run counts and mark the active tapes */
	FUNC1(state->mergeactive, 0,
		   state->maxTapes * sizeof(*state->mergeactive));
	activeTapes = 0;
	for (tapenum = 0; tapenum < state->tapeRange; tapenum++)
	{
		if (state->tp_dummy[tapenum] > 0)
			state->tp_dummy[tapenum]--;
		else
		{
			FUNC0(state->tp_runs[tapenum] > 0);
			state->tp_runs[tapenum]--;
			srcTape = state->tp_tapenum[tapenum];
			state->mergeactive[srcTape] = true;
			activeTapes++;
		}
	}
	FUNC0(activeTapes > 0);
	state->activeTapes = activeTapes;

	/* Load the merge heap with the first tuple from each input tape */
	for (srcTape = 0; srcTape < state->maxTapes; srcTape++)
	{
		SortTuple	tup;

		if (FUNC2(state, srcTape, &tup))
		{
			tup.srctape = srcTape;
			FUNC3(state, &tup);
		}
	}
}