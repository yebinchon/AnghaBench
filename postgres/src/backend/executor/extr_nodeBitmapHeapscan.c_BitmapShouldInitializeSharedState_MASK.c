#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ state; int /*<<< orphan*/  cv; int /*<<< orphan*/  mutex; } ;
typedef  scalar_t__ SharedBitmapState ;
typedef  TYPE_1__ ParallelBitmapHeapState ;

/* Variables and functions */
 scalar_t__ BM_INITIAL ; 
 scalar_t__ BM_INPROGRESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_PARALLEL_BITMAP_SCAN ; 

__attribute__((used)) static bool
FUNC4(ParallelBitmapHeapState *pstate)
{
	SharedBitmapState state;

	while (1)
	{
		FUNC2(&pstate->mutex);
		state = pstate->state;
		if (pstate->state == BM_INITIAL)
			pstate->state = BM_INPROGRESS;
		FUNC3(&pstate->mutex);

		/* Exit if bitmap is done, or if we're the leader. */
		if (state != BM_INPROGRESS)
			break;

		/* Wait for the leader to wake us up. */
		FUNC1(&pstate->cv, WAIT_EVENT_PARALLEL_BITMAP_SCAN);
	}

	FUNC0();

	return (state == BM_INITIAL);
}