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
typedef  int /*<<< orphan*/  sigjmp_buf ;
struct TYPE_4__ {int /*<<< orphan*/  procLatch; } ;
struct TYPE_3__ {int /*<<< orphan*/ * walwriterLatch; } ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  BlockSig ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 long HIBERNATE_FACTOR ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int LOOPS_UNTIL_HIBERNATE ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyLatch ; 
 TYPE_2__* MyProc ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * PG_exception_stack ; 
 TYPE_1__* ProcGlobal ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_WRITER_MAIN ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WalShutdownHandler ; 
 int /*<<< orphan*/  WalSigHupHandler ; 
 long WalWriterDelay ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/ * error_context_stack ; 
 int got_SIGHUP ; 
 int /*<<< orphan*/  FUNC22 (long) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ shutdown_requested ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  wal_quickdie ; 
 int /*<<< orphan*/  walwriter_sigusr1_handler ; 

void
FUNC29(void)
{
	sigjmp_buf	local_sigjmp_buf;
	MemoryContext walwriter_context;
	int			left_till_hibernate;
	bool		hibernating;

	/*
	 * Properly accept or ignore signals the postmaster might send us
	 *
	 * We have no particular use for SIGINT at the moment, but seems
	 * reasonable to treat like SIGTERM.
	 */
	FUNC24(SIGHUP, WalSigHupHandler); /* set flag to read config file */
	FUNC24(SIGINT, WalShutdownHandler);	/* request shutdown */
	FUNC24(SIGTERM, WalShutdownHandler);	/* request shutdown */
	FUNC24(SIGQUIT, wal_quickdie);	/* hard crash time */
	FUNC24(SIGALRM, SIG_IGN);
	FUNC24(SIGPIPE, SIG_IGN);
	FUNC24(SIGUSR1, walwriter_sigusr1_handler);
	FUNC24(SIGUSR2, SIG_IGN); /* not used */

	/*
	 * Reset some signals that are accepted by postmaster but not here
	 */
	FUNC24(SIGCHLD, SIG_DFL);

	/* We allow SIGQUIT (quickdie) at all times */
	FUNC26(&BlockSig, SIGQUIT);

	/*
	 * Create a memory context that we will do all our work in.  We do this so
	 * that we can reset the context during error recovery and thereby avoid
	 * possible memory leaks.  Formerly this code just ran in
	 * TopMemoryContext, but resetting that would be a really bad idea.
	 */
	walwriter_context = FUNC1(TopMemoryContext,
											  "Wal Writer",
											  ALLOCSET_DEFAULT_SIZES);
	FUNC12(walwriter_context);

	/*
	 * If an exception is encountered, processing resumes here.
	 *
	 * This code is heavily based on bgwriter.c, q.v.
	 */
	if (FUNC27(local_sigjmp_buf, 1) != 0)
	{
		/* Since not using PG_TRY, must reset error stack by hand */
		error_context_stack = NULL;

		/* Prevent interrupts while cleaning up */
		FUNC9();

		/* Report the error to the server log */
		FUNC7();

		/*
		 * These operations are really just a minimal subset of
		 * AbortTransaction().  We don't have very many resources to worry
		 * about in walwriter, but we do have LWLocks, and perhaps buffers?
		 */
		FUNC10();
		FUNC6();
		FUNC23();
		FUNC0();
		FUNC19();
		FUNC16(false);
		FUNC2(false);
		FUNC5();
		FUNC3(false);
		FUNC4(false);

		/*
		 * Now return to normal top-level context and clear ErrorContext for
		 * next time.
		 */
		FUNC12(walwriter_context);
		FUNC8();

		/* Flush any leaked data in the top-level context */
		FUNC11(walwriter_context);

		/* Now we can allow interrupts again */
		FUNC15();

		/*
		 * Sleep at least 1 second after any error.  A write error is likely
		 * to be repeated, and we don't want to be filling the error logs as
		 * fast as we can.
		 */
		FUNC22(1000000L);

		/*
		 * Close all open files after any error.  This is helpful on Windows,
		 * where holding deleted files open causes various strange errors.
		 * It's not clear we need it elsewhere, but shouldn't hurt.
		 */
		FUNC28();
	}

	/* We can now handle ereport(ERROR) */
	PG_exception_stack = &local_sigjmp_buf;

	/*
	 * Unblock signals (they were blocked when the postmaster forked us)
	 */
	FUNC13(&UnBlockSig);

	/*
	 * Reset hibernation state after any error.
	 */
	left_till_hibernate = LOOPS_UNTIL_HIBERNATE;
	hibernating = false;
	FUNC18(false);

	/*
	 * Advertise our latch that backends can use to wake us up while we're
	 * sleeping.
	 */
	ProcGlobal->walwriterLatch = &MyProc->procLatch;

	/*
	 * Loop forever
	 */
	for (;;)
	{
		long		cur_timeout;

		/*
		 * Advertise whether we might hibernate in this cycle.  We do this
		 * before resetting the latch to ensure that any async commits will
		 * see the flag set if they might possibly need to wake us up, and
		 * that we won't miss any signal they send us.  (If we discover work
		 * to do in the last cycle before we would hibernate, the global flag
		 * will be set unnecessarily, but little harm is done.)  But avoid
		 * touching the global flag if it doesn't need to change.
		 */
		if (hibernating != (left_till_hibernate <= 1))
		{
			hibernating = (left_till_hibernate <= 1);
			FUNC18(hibernating);
		}

		/* Clear any already-pending wakeups */
		FUNC17(MyLatch);

		/*
		 * Process any requests or signals received recently.
		 */
		if (got_SIGHUP)
		{
			got_SIGHUP = false;
			FUNC14(PGC_SIGHUP);
		}
		if (shutdown_requested)
		{
			/* Normal exit from the walwriter is here */
			FUNC25(0);		/* done */
		}

		/*
		 * Do what we're here for; then, if XLogBackgroundFlush() found useful
		 * work to do, reset hibernation counter.
		 */
		if (FUNC21())
			left_till_hibernate = LOOPS_UNTIL_HIBERNATE;
		else if (left_till_hibernate > 0)
			left_till_hibernate--;

		/*
		 * Sleep until we are signaled or WalWriterDelay has elapsed.  If we
		 * haven't done anything useful for quite some time, lengthen the
		 * sleep time so as to reduce the server's idle power consumption.
		 */
		if (left_till_hibernate > 0)
			cur_timeout = WalWriterDelay;	/* in ms */
		else
			cur_timeout = WalWriterDelay * HIBERNATE_FACTOR;

		(void) FUNC20(MyLatch,
						 WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
						 cur_timeout,
						 WAIT_EVENT_WAL_WRITER_MAIN);
	}
}