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
struct TYPE_5__ {int memtupcount; int /*<<< orphan*/  comparetup; int /*<<< orphan*/  memtuples; int /*<<< orphan*/ * onlyKey; } ;
typedef  TYPE_1__ Tuplesortstate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(Tuplesortstate *state)
{
	FUNC0(!FUNC1(state));

	if (state->memtupcount > 1)
	{
		/* Can we use the single-key sort function? */
		if (state->onlyKey != NULL)
			FUNC2(state->memtuples, state->memtupcount,
					   state->onlyKey);
		else
			FUNC3(state->memtuples,
						state->memtupcount,
						state->comparetup,
						state);
	}
}