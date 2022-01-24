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
struct TYPE_4__ {int memtupcount; int /*<<< orphan*/ * memtuples; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  SortTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Tuplesortstate *state, SortTuple *tuple)
{
	SortTuple  *memtuples = state->memtuples;
	unsigned int i,
				n;

	FUNC0(state->memtupcount >= 1);

	FUNC1();

	/*
	 * state->memtupcount is "int", but we use "unsigned int" for i, j, n.
	 * This prevents overflow in the "2 * i + 1" calculation, since at the top
	 * of the loop we must have i < n <= INT_MAX <= UINT_MAX/2.
	 */
	n = state->memtupcount;
	i = 0;						/* i is where the "hole" is */
	for (;;)
	{
		unsigned int j = 2 * i + 1;

		if (j >= n)
			break;
		if (j + 1 < n &&
			FUNC2(state, &memtuples[j], &memtuples[j + 1]) > 0)
			j++;
		if (FUNC2(state, tuple, &memtuples[j]) <= 0)
			break;
		memtuples[i] = memtuples[j];
		i = j;
	}
	memtuples[i] = *tuple;
}