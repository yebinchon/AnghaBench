#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tuplen ;
struct TYPE_6__ {int /*<<< orphan*/  slabAllocatorUsed; int /*<<< orphan*/  tapeset; scalar_t__ randomAccess; } ;
typedef  TYPE_1__ Tuplesortstate ;
struct TYPE_7__ {int /*<<< orphan*/  tuple; } ;
typedef  TYPE_2__ SortTuple ;
typedef  scalar_t__ IndexTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(Tuplesortstate *state, int tapenum, SortTuple *stup)
{
	IndexTuple	tuple = (IndexTuple) stup->tuple;
	unsigned int tuplen;

	tuplen = FUNC2(tuple) + sizeof(tuplen);
	FUNC3(state->tapeset, tapenum,
					 (void *) &tuplen, sizeof(tuplen));
	FUNC3(state->tapeset, tapenum,
					 (void *) tuple, FUNC2(tuple));
	if (state->randomAccess)	/* need trailing length word? */
		FUNC3(state->tapeset, tapenum,
						 (void *) &tuplen, sizeof(tuplen));

	if (!state->slabAllocatorUsed)
	{
		FUNC0(state, FUNC1(tuple));
		FUNC4(tuple);
	}
}