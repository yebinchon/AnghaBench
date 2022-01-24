#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_4__ {int /*<<< orphan*/  procLatch; } ;
struct TYPE_3__ {scalar_t__ bgworker_pid; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ InvalidPid ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_2__* MyProc ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  PG_WAIT_EXTENSION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apw_detach_shmem ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  apw_sighup_handler ; 
 int /*<<< orphan*/  apw_sigterm_handler ; 
 TYPE_1__* apw_state ; 
 int autoprewarm_interval ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned long) ; 
 int got_sighup ; 
 int /*<<< orphan*/  got_sigterm ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procsignal_sigusr1_handler ; 

void
FUNC16(Datum main_arg)
{
	bool		first_time = true;
	TimestampTz last_dump_time = 0;

	/* Establish signal handlers; once that's done, unblock signals. */
	FUNC15(SIGTERM, apw_sigterm_handler);
	FUNC15(SIGHUP, apw_sighup_handler);
	FUNC15(SIGUSR1, procsignal_sigusr1_handler);
	FUNC0();

	/* Create (if necessary) and attach to our shared memory area. */
	if (FUNC10())
		first_time = false;

	/* Set on-detach hook so that our PID will be cleared on exit. */
	FUNC14(apw_detach_shmem, 0);

	/*
	 * Store our PID in the shared memory area --- unless there's already
	 * another worker running, in which case just exit.
	 */
	FUNC2(&apw_state->lock, LW_EXCLUSIVE);
	if (apw_state->bgworker_pid != InvalidPid)
	{
		FUNC3(&apw_state->lock);
		FUNC12(LOG,
				(FUNC13("autoprewarm worker is already running under PID %lu",
						(unsigned long) apw_state->bgworker_pid)));
		return;
	}
	apw_state->bgworker_pid = MyProcPid;
	FUNC3(&apw_state->lock);

	/*
	 * Preload buffers from the dump file only if we just created the shared
	 * memory region.  Otherwise, it's either already been done or shouldn't
	 * be done - e.g. because the old dump file has been overwritten since the
	 * server was started.
	 *
	 * There's not much point in performing a dump immediately after we finish
	 * preloading; so, if we do end up preloading, consider the last dump time
	 * to be equal to the current time.
	 */
	if (first_time)
	{
		FUNC11();
		last_dump_time = FUNC1();
	}

	/* Periodically dump buffers until terminated. */
	while (!got_sigterm)
	{
		/* In case of a SIGHUP, just reload the configuration. */
		if (got_sighup)
		{
			got_sighup = false;
			FUNC4(PGC_SIGHUP);
		}

		if (autoprewarm_interval <= 0)
		{
			/* We're only dumping at shutdown, so just wait forever. */
			(void) FUNC8(&MyProc->procLatch,
							 WL_LATCH_SET | WL_EXIT_ON_PM_DEATH,
							 -1L,
							 PG_WAIT_EXTENSION);
		}
		else
		{
			long		delay_in_ms = 0;
			TimestampTz next_dump_time = 0;
			long		secs = 0;
			int			usecs = 0;

			/* Compute the next dump time. */
			next_dump_time =
				FUNC7(last_dump_time,
											autoprewarm_interval * 1000);
			FUNC6(FUNC1(), next_dump_time,
								&secs, &usecs);
			delay_in_ms = secs + (usecs / 1000);

			/* Perform a dump if it's time. */
			if (delay_in_ms <= 0)
			{
				last_dump_time = FUNC1();
				FUNC9(true, false);
				continue;
			}

			/* Sleep until the next dump time. */
			(void) FUNC8(&MyProc->procLatch,
							 WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
							 delay_in_ms,
							 PG_WAIT_EXTENSION);
		}

		/* Reset the latch, loop. */
		FUNC5(&MyProc->procLatch);
	}

	/*
	 * Dump one last time.  We assume this is probably the result of a system
	 * shutdown, although it's possible that we've merely been terminated.
	 */
	FUNC9(true, true);
}