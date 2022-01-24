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
typedef  int /*<<< orphan*/  sigjmp_buf ;
typedef  int /*<<< orphan*/  WritebackContext ;
typedef  scalar_t__ TimestampTz ;
struct TYPE_2__ {int pgprocno; } ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BgSigHupHandler ; 
 int BgWriterDelay ; 
 int /*<<< orphan*/  BlockSig ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int ExitOnAnyError ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int HIBERNATE_FACTOR ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  LOG_SNAPSHOT_INTERVAL_MS ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyLatch ; 
 TYPE_1__* MyProc ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * PG_exception_stack ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  ReqShutdownHandler ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 scalar_t__ FUNC25 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  WAIT_EVENT_BGWRITER_HIBERNATE ; 
 int /*<<< orphan*/  WAIT_EVENT_BGWRITER_MAIN ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int FUNC27 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 () ; 
 int /*<<< orphan*/  bg_quickdie ; 
 int /*<<< orphan*/  bgwriter_flush_after ; 
 int /*<<< orphan*/  bgwriter_sigusr1_handler ; 
 int /*<<< orphan*/ * error_context_stack ; 
 int got_SIGHUP ; 
 scalar_t__ last_snapshot_lsn ; 
 void* last_snapshot_ts ; 
 int /*<<< orphan*/  FUNC30 (long) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 scalar_t__ shutdown_requested ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC37 () ; 

void
FUNC38(void)
{
	sigjmp_buf	local_sigjmp_buf;
	MemoryContext bgwriter_context;
	bool		prev_hibernate;
	WritebackContext wb_context;

	/*
	 * Properly accept or ignore signals the postmaster might send us.
	 *
	 * bgwriter doesn't participate in ProcSignal signalling, but a SIGUSR1
	 * handler is still needed for latch wakeups.
	 */
	FUNC33(SIGHUP, BgSigHupHandler);	/* set flag to read config file */
	FUNC33(SIGINT, SIG_IGN);
	FUNC33(SIGTERM, ReqShutdownHandler);	/* shutdown */
	FUNC33(SIGQUIT, bg_quickdie); /* hard crash time */
	FUNC33(SIGALRM, SIG_IGN);
	FUNC33(SIGPIPE, SIG_IGN);
	FUNC33(SIGUSR1, bgwriter_sigusr1_handler);
	FUNC33(SIGUSR2, SIG_IGN);

	/*
	 * Reset some signals that are accepted by postmaster but not here
	 */
	FUNC33(SIGCHLD, SIG_DFL);

	/* We allow SIGQUIT (quickdie) at all times */
	FUNC35(&BlockSig, SIGQUIT);

	/*
	 * We just started, assume there has been either a shutdown or
	 * end-of-recovery snapshot.
	 */
	last_snapshot_ts = FUNC11();

	/*
	 * Create a memory context that we will do all our work in.  We do this so
	 * that we can reset the context during error recovery and thereby avoid
	 * possible memory leaks.  Formerly this code just ran in
	 * TopMemoryContext, but resetting that would be a really bad idea.
	 */
	bgwriter_context = FUNC1(TopMemoryContext,
											 "Background Writer",
											 ALLOCSET_DEFAULT_SIZES);
	FUNC17(bgwriter_context);

	FUNC28(&wb_context, &bgwriter_flush_after);

	/*
	 * If an exception is encountered, processing resumes here.
	 *
	 * See notes in postgres.c about the design of this coding.
	 */
	if (FUNC36(local_sigjmp_buf, 1) != 0)
	{
		/* Since not using PG_TRY, must reset error stack by hand */
		error_context_stack = NULL;

		/* Prevent interrupts while cleaning up */
		FUNC13();

		/* Report the error to the server log */
		FUNC8();

		/*
		 * These operations are really just a minimal subset of
		 * AbortTransaction().  We don't have very many resources to worry
		 * about in bgwriter, but we do have LWLocks, buffers, and temp files.
		 */
		FUNC14();
		FUNC7();
		FUNC0();
		FUNC26();
		FUNC22(false);
		FUNC2(false);
		FUNC5();
		FUNC3(false);
		FUNC4(false);

		/*
		 * Now return to normal top-level context and clear ErrorContext for
		 * next time.
		 */
		FUNC17(bgwriter_context);
		FUNC10();

		/* Flush any leaked data in the top-level context */
		FUNC16(bgwriter_context);

		/* re-initialize to avoid repeated errors causing problems */
		FUNC28(&wb_context, &bgwriter_flush_after);

		/* Now we can allow interrupts again */
		FUNC20();

		/*
		 * Sleep at least 1 second after any error.  A write error is likely
		 * to be repeated, and we don't want to be filling the error logs as
		 * fast as we can.
		 */
		FUNC30(1000000L);

		/*
		 * Close all open files after any error.  This is helpful on Windows,
		 * where holding deleted files open causes various strange errors.
		 * It's not clear we need it elsewhere, but shouldn't hurt.
		 */
		FUNC37();

		/* Report wait end here, when there is no further possibility of wait */
		FUNC31();
	}

	/* We can now handle ereport(ERROR) */
	PG_exception_stack = &local_sigjmp_buf;

	/*
	 * Unblock signals (they were blocked when the postmaster forked us)
	 */
	FUNC18(&UnBlockSig);

	/*
	 * Reset hibernation state after any error.
	 */
	prev_hibernate = false;

	/*
	 * Loop forever
	 */
	for (;;)
	{
		bool		can_hibernate;
		int			rc;

		/* Clear any already-pending wakeups */
		FUNC23(MyLatch);

		if (got_SIGHUP)
		{
			got_SIGHUP = false;
			FUNC19(PGC_SIGHUP);
		}
		if (shutdown_requested)
		{
			/*
			 * From here on, elog(ERROR) should end with exit(1), not send
			 * control back to the sigsetjmp block above
			 */
			ExitOnAnyError = true;
			/* Normal exit from the bgwriter is here */
			FUNC34(0);		/* done */
		}

		/*
		 * Do one cycle of dirty-buffer writing.
		 */
		can_hibernate = FUNC6(&wb_context);

		/*
		 * Send off activity statistics to the stats collector
		 */
		FUNC32();

		if (FUNC9())
		{
			/*
			 * After any checkpoint, close all smgr files.  This is so we
			 * won't hang onto smgr references to deleted files indefinitely.
			 */
			FUNC37();
		}

		/*
		 * Log a new xl_running_xacts every now and then so replication can
		 * get into a consistent state faster (think of suboverflowed
		 * snapshots) and clean up resources (locks, KnownXids*) more
		 * frequently. The costs of this are relatively low, so doing it 4
		 * times (LOG_SNAPSHOT_INTERVAL_MS) a minute seems fine.
		 *
		 * We assume the interval for writing xl_running_xacts is
		 * significantly bigger than BgWriterDelay, so we don't complicate the
		 * overall timeout handling but just assume we're going to get called
		 * often enough even if hibernation mode is active. It's not that
		 * important that LOG_SNAPSHOT_INTERVAL_MS is met strictly. To make
		 * sure we're not waking the disk up unnecessarily on an idle system
		 * we check whether there has been any WAL inserted since the last
		 * time we've logged a running xacts.
		 *
		 * We do this logging in the bgwriter as it is the only process that
		 * is run regularly and returns to its mainloop all the time. E.g.
		 * Checkpointer, when active, is barely ever in its mainloop and thus
		 * makes it hard to log regularly.
		 */
		if (FUNC29() && !FUNC21())
		{
			TimestampTz timeout = 0;
			TimestampTz now = FUNC11();

			timeout = FUNC25(last_snapshot_ts,
												  LOG_SNAPSHOT_INTERVAL_MS);

			/*
			 * Only log if enough time has passed and interesting records have
			 * been inserted since the last snapshot.  Have to compare with <=
			 * instead of < because GetLastImportantRecPtr() points at the
			 * start of a record, whereas last_snapshot_lsn points just past
			 * the end of the record.
			 */
			if (now >= timeout &&
				last_snapshot_lsn <= FUNC12())
			{
				last_snapshot_lsn = FUNC15();
				last_snapshot_ts = now;
			}
		}

		/*
		 * Sleep until we are signaled or BgWriterDelay has elapsed.
		 *
		 * Note: the feedback control loop in BgBufferSync() expects that we
		 * will call it every BgWriterDelay msec.  While it's not critical for
		 * correctness that that be exact, the feedback loop might misbehave
		 * if we stray too far from that.  Hence, avoid loading this process
		 * down with latch events that are likely to happen frequently during
		 * normal operation.
		 */
		rc = FUNC27(MyLatch,
					   WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
					   BgWriterDelay /* ms */ , WAIT_EVENT_BGWRITER_MAIN);

		/*
		 * If no latch event and BgBufferSync says nothing's happening, extend
		 * the sleep in "hibernation" mode, where we sleep for much longer
		 * than bgwriter_delay says.  Fewer wakeups save electricity.  When a
		 * backend starts using buffers again, it will wake us up by setting
		 * our latch.  Because the extra sleep will persist only as long as no
		 * buffer allocations happen, this should not distort the behavior of
		 * BgBufferSync's control loop too badly; essentially, it will think
		 * that the system-wide idle interval didn't exist.
		 *
		 * There is a race condition here, in that a backend might allocate a
		 * buffer between the time BgBufferSync saw the alloc count as zero
		 * and the time we call StrategyNotifyBgWriter.  While it's not
		 * critical that we not hibernate anyway, we try to reduce the odds of
		 * that by only hibernating when BgBufferSync says nothing's happening
		 * for two consecutive cycles.  Also, we mitigate any possible
		 * consequences of a missed wakeup by not hibernating forever.
		 */
		if (rc == WL_TIMEOUT && can_hibernate && prev_hibernate)
		{
			/* Ask for notification at next buffer allocation */
			FUNC24(MyProc->pgprocno);
			/* Sleep ... */
			(void) FUNC27(MyLatch,
							 WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
							 BgWriterDelay * HIBERNATE_FACTOR,
							 WAIT_EVENT_BGWRITER_HIBERNATE);
			/* Reset the notification request in case we timed out */
			FUNC24(-1);
		}

		prev_hibernate = can_hibernate;
	}
}