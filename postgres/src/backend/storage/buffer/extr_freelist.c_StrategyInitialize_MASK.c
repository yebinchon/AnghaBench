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
struct TYPE_3__ {int bgwprocno; int /*<<< orphan*/  numBufferAllocs; scalar_t__ completePasses; int /*<<< orphan*/  nextVictimBuffer; scalar_t__ lastFreeBuffer; scalar_t__ firstFreeBuffer; int /*<<< orphan*/  buffer_strategy_lock; } ;
typedef  TYPE_1__ BufferStrategyControl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NBuffers ; 
 scalar_t__ NUM_BUFFER_PARTITIONS ; 
 scalar_t__ FUNC2 (char*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* StrategyControl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(bool init)
{
	bool		found;

	/*
	 * Initialize the shared buffer lookup hashtable.
	 *
	 * Since we can't tolerate running out of lookup table entries, we must be
	 * sure to specify an adequate table size here.  The maximum steady-state
	 * usage is of course NBuffers entries, but BufferAlloc() tries to insert
	 * a new entry before deleting the old.  In principle this could be
	 * happening in each partition concurrently, so we could need as many as
	 * NBuffers + NUM_BUFFER_PARTITIONS entries.
	 */
	FUNC1(NBuffers + NUM_BUFFER_PARTITIONS);

	/*
	 * Get or create the shared strategy control block
	 */
	StrategyControl = (BufferStrategyControl *)
		FUNC2("Buffer Strategy Status",
						sizeof(BufferStrategyControl),
						&found);

	if (!found)
	{
		/*
		 * Only done once, usually in postmaster
		 */
		FUNC0(init);

		FUNC3(&StrategyControl->buffer_strategy_lock);

		/*
		 * Grab the whole linked list of free buffers for our strategy. We
		 * assume it was previously set up by InitBufferPool().
		 */
		StrategyControl->firstFreeBuffer = 0;
		StrategyControl->lastFreeBuffer = NBuffers - 1;

		/* Initialize the clock sweep pointer */
		FUNC4(&StrategyControl->nextVictimBuffer, 0);

		/* Clear statistics */
		StrategyControl->completePasses = 0;
		FUNC4(&StrategyControl->numBufferAllocs, 0);

		/* No pending notification */
		StrategyControl->bgwprocno = -1;
	}
	else
		FUNC0(!init);
}