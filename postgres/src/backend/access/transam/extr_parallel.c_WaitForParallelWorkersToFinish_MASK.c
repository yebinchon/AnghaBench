#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shm_mq ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_8__ {scalar_t__ last_xlog_end; } ;
struct TYPE_7__ {int nworkers_launched; int /*<<< orphan*/ * toc; TYPE_1__* worker; scalar_t__* known_attached_workers; } ;
struct TYPE_6__ {int /*<<< orphan*/ * error_mqh; int /*<<< orphan*/ * bgwhandle; } ;
typedef  TYPE_2__ ParallelContext ;
typedef  TYPE_3__ FixedParallelState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BGWH_STOPPED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  PARALLEL_KEY_FIXED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_PARALLEL_FINISH ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ XactLastRecEnd ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC12(ParallelContext *pcxt)
{
	for (;;)
	{
		bool		anyone_alive = false;
		int			nfinished = 0;
		int			i;

		/*
		 * This will process any parallel messages that are pending, which may
		 * change the outcome of the loop that follows.  It may also throw an
		 * error propagated from a worker.
		 */
		FUNC1();

		for (i = 0; i < pcxt->nworkers_launched; ++i)
		{
			/*
			 * If error_mqh is NULL, then the worker has already exited
			 * cleanly.  If we have received a message through error_mqh from
			 * the worker, we know it started up cleanly, and therefore we're
			 * certain to be notified when it exits.
			 */
			if (pcxt->worker[i].error_mqh == NULL)
				++nfinished;
			else if (pcxt->known_attached_workers[i])
			{
				anyone_alive = true;
				break;
			}
		}

		if (!anyone_alive)
		{
			/* If all workers are known to have finished, we're done. */
			if (nfinished >= pcxt->nworkers_launched)
			{
				FUNC0(nfinished == pcxt->nworkers_launched);
				break;
			}

			/*
			 * We didn't detect any living workers, but not all workers are
			 * known to have exited cleanly.  Either not all workers have
			 * launched yet, or maybe some of them failed to start or
			 * terminated abnormally.
			 */
			for (i = 0; i < pcxt->nworkers_launched; ++i)
			{
				pid_t		pid;
				shm_mq	   *mq;

				/*
				 * If the worker is BGWH_NOT_YET_STARTED or BGWH_STARTED, we
				 * should just keep waiting.  If it is BGWH_STOPPED, then
				 * further investigation is needed.
				 */
				if (pcxt->worker[i].error_mqh == NULL ||
					pcxt->worker[i].bgwhandle == NULL ||
					FUNC2(pcxt->worker[i].bgwhandle,
										   &pid) != BGWH_STOPPED)
					continue;

				/*
				 * Check whether the worker ended up stopped without ever
				 * attaching to the error queue.  If so, the postmaster was
				 * unable to fork the worker or it exited without initializing
				 * properly.  We must throw an error, since the caller may
				 * have been expecting the worker to do some work before
				 * exiting.
				 */
				mq = FUNC9(pcxt->worker[i].error_mqh);
				if (FUNC10(mq) == NULL)
					FUNC5(ERROR,
							(FUNC6(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
							 FUNC8("parallel worker failed to initialize"),
							 FUNC7("More details may be available in the server log.")));

				/*
				 * The worker is stopped, but is attached to the error queue.
				 * Unless there's a bug somewhere, this will only happen when
				 * the worker writes messages and terminates after the
				 * CHECK_FOR_INTERRUPTS() near the top of this function and
				 * before the call to GetBackgroundWorkerPid().  In that case,
				 * or latch should have been set as well and the right things
				 * will happen on the next pass through the loop.
				 */
			}
		}

		(void) FUNC4(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, -1,
						 WAIT_EVENT_PARALLEL_FINISH);
		FUNC3(MyLatch);
	}

	if (pcxt->toc != NULL)
	{
		FixedParallelState *fps;

		fps = FUNC11(pcxt->toc, PARALLEL_KEY_FIXED, false);
		if (fps->last_xlog_end > XactLastRecEnd)
			XactLastRecEnd = fps->last_xlog_end;
	}
}