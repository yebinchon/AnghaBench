#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_2__ {int completePasses; int /*<<< orphan*/  buffer_strategy_lock; int /*<<< orphan*/  numBufferAllocs; int /*<<< orphan*/  nextVictimBuffer; } ;

/* Variables and functions */
 int NBuffers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* StrategyControl ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(uint32 *complete_passes, uint32 *num_buf_alloc)
{
	uint32		nextVictimBuffer;
	int			result;

	FUNC0(&StrategyControl->buffer_strategy_lock);
	nextVictimBuffer = FUNC3(&StrategyControl->nextVictimBuffer);
	result = nextVictimBuffer % NBuffers;

	if (complete_passes)
	{
		*complete_passes = StrategyControl->completePasses;

		/*
		 * Additionally add the number of wraparounds that happened before
		 * completePasses could be incremented. C.f. ClockSweepTick().
		 */
		*complete_passes += nextVictimBuffer / NBuffers;
	}

	if (num_buf_alloc)
	{
		*num_buf_alloc = FUNC2(&StrategyControl->numBufferAllocs, 0);
	}
	FUNC1(&StrategyControl->buffer_strategy_lock);
	return result;
}