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
struct TYPE_4__ {scalar_t__ memtupcount; scalar_t__ memtupsize; int /*<<< orphan*/ * memtuples; } ;
typedef  TYPE_1__ Tuplesortstate ;
typedef  int /*<<< orphan*/  SortTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(Tuplesortstate *state, SortTuple *tuple)
{
	SortTuple  *memtuples;
	int			j;

	memtuples = state->memtuples;
	FUNC0(state->memtupcount < state->memtupsize);

	FUNC1();

	/*
	 * Sift-up the new entry, per Knuth 5.2.3 exercise 16. Note that Knuth is
	 * using 1-based array indexes, not 0-based.
	 */
	j = state->memtupcount++;
	while (j > 0)
	{
		int			i = (j - 1) >> 1;

		if (FUNC2(state, tuple, &memtuples[i]) >= 0)
			break;
		memtuples[j] = memtuples[i];
		j = i;
	}
	memtuples[j] = *tuple;
}