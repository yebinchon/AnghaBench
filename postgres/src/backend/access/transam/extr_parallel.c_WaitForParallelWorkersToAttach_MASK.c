#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shm_mq ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_5__ {int nworkers_launched; int* known_attached_workers; int nknown_attached_workers; TYPE_1__* worker; } ;
struct TYPE_4__ {int /*<<< orphan*/ * error_mqh; int /*<<< orphan*/  bgwhandle; } ;
typedef  TYPE_2__ ParallelContext ;
typedef  scalar_t__ BgwHandleStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BGWH_STARTED ; 
 scalar_t__ BGWH_STOPPED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_BGWORKER_STARTUP ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

void
FUNC11(ParallelContext *pcxt)
{
	int			i;

	/* Skip this if we have no launched workers. */
	if (pcxt->nworkers_launched == 0)
		return;

	for (;;)
	{
		/*
		 * This will process any parallel messages that are pending and it may
		 * also throw an error propagated from a worker.
		 */
		FUNC1();

		for (i = 0; i < pcxt->nworkers_launched; ++i)
		{
			BgwHandleStatus status;
			shm_mq	   *mq;
			int			rc;
			pid_t		pid;

			if (pcxt->known_attached_workers[i])
				continue;

			/*
			 * If error_mqh is NULL, then the worker has already exited
			 * cleanly.
			 */
			if (pcxt->worker[i].error_mqh == NULL)
			{
				pcxt->known_attached_workers[i] = true;
				++pcxt->nknown_attached_workers;
				continue;
			}

			status = FUNC2(pcxt->worker[i].bgwhandle, &pid);
			if (status == BGWH_STARTED)
			{
				/* Has the worker attached to the error queue? */
				mq = FUNC9(pcxt->worker[i].error_mqh);
				if (FUNC10(mq) != NULL)
				{
					/* Yes, so it is known to be attached. */
					pcxt->known_attached_workers[i] = true;
					++pcxt->nknown_attached_workers;
				}
			}
			else if (status == BGWH_STOPPED)
			{
				/*
				 * If the worker stopped without attaching to the error queue,
				 * throw an error.
				 */
				mq = FUNC9(pcxt->worker[i].error_mqh);
				if (FUNC10(mq) == NULL)
					FUNC5(ERROR,
							(FUNC6(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
							 FUNC8("parallel worker failed to initialize"),
							 FUNC7("More details may be available in the server log.")));

				pcxt->known_attached_workers[i] = true;
				++pcxt->nknown_attached_workers;
			}
			else
			{
				/*
				 * Worker not yet started, so we must wait.  The postmaster
				 * will notify us if the worker's state changes.  Our latch
				 * might also get set for some other reason, but if so we'll
				 * just end up waiting for the same worker again.
				 */
				rc = FUNC4(MyLatch,
							   WL_LATCH_SET | WL_EXIT_ON_PM_DEATH,
							   -1, WAIT_EVENT_BGWORKER_STARTUP);

				if (rc & WL_LATCH_SET)
					FUNC3(MyLatch);
			}
		}

		/* If all workers are known to have started, we're done. */
		if (pcxt->nknown_attached_workers >= pcxt->nworkers_launched)
		{
			FUNC0(pcxt->nknown_attached_workers == pcxt->nworkers_launched);
			break;
		}
	}
}