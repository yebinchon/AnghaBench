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
struct TYPE_6__ {int nworkers; } ;
typedef  TYPE_1__ worker_state ;
struct TYPE_7__ {int workers_ready; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ test_shm_mq_header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  PG_WAIT_EXTENSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(worker_state *wstate,
								 volatile test_shm_mq_header *hdr)
{
	bool		result = false;

	for (;;)
	{
		int			workers_ready;

		/* If all the workers are ready, we have succeeded. */
		FUNC2(&hdr->mutex);
		workers_ready = hdr->workers_ready;
		FUNC3(&hdr->mutex);
		if (workers_ready >= wstate->nworkers)
		{
			result = true;
			break;
		}

		/* If any workers (or the postmaster) have died, we have failed. */
		if (!FUNC5(wstate))
		{
			result = false;
			break;
		}

		/* Wait to be signalled. */
		(void) FUNC4(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
						 PG_WAIT_EXTENSION);

		/* Reset the latch so we don't spin. */
		FUNC1(MyLatch);

		/* An interrupt may have occurred while we were waiting. */
		FUNC0();
	}

	if (!result)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_INSUFFICIENT_RESOURCES),
				 FUNC8("one or more background workers failed to start")));
}