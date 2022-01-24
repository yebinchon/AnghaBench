#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigjmp_buf ;
typedef  int pg_time_t ;
struct TYPE_10__ {int /*<<< orphan*/  m_timed_checkpoints; int /*<<< orphan*/  m_requested_checkpoints; } ;
struct TYPE_9__ {int ckpt_flags; int /*<<< orphan*/  done_cv; int /*<<< orphan*/  ckpt_lck; scalar_t__ ckpt_started; scalar_t__ ckpt_done; int /*<<< orphan*/  start_cv; int /*<<< orphan*/  ckpt_failed; int /*<<< orphan*/  checkpointer_pid; } ;
struct TYPE_8__ {int /*<<< orphan*/  procLatch; } ;
struct TYPE_7__ {int /*<<< orphan*/ * checkpointerLatch; } ;
struct TYPE_6__ {scalar_t__ ckpt_flags; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ CheckpointerShmemStruct ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_5__ BgWriterStats ; 
 int /*<<< orphan*/  BlockSig ; 
 int CHECKPOINT_CAUSE_TIME ; 
 int CHECKPOINT_CAUSE_XLOG ; 
 int CHECKPOINT_END_OF_RECOVERY ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int CheckPointTimeout ; 
 int CheckPointWarning ; 
 TYPE_4__* CheckpointerShmem ; 
 int /*<<< orphan*/  ChkptSigHupHandler ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int ExitOnAnyError ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int,int) ; 
 int /*<<< orphan*/  MyLatch ; 
 TYPE_3__* MyProc ; 
 int /*<<< orphan*/  MyProcPid ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * PG_exception_stack ; 
 TYPE_2__* ProcGlobal ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  ReqCheckpointHandler ; 
 int /*<<< orphan*/  ReqShutdownHandler ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  WAIT_EVENT_CHECKPOINTER_MAIN ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int XLogArchiveTimeout ; 
 int /*<<< orphan*/  chkpt_quickdie ; 
 int /*<<< orphan*/  chkpt_sigusr1_handler ; 
 int ckpt_active ; 
 scalar_t__ ckpt_cached_elapsed ; 
 int /*<<< orphan*/  ckpt_start_recptr ; 
 int ckpt_start_time ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,char*,int,int) ; 
 int /*<<< orphan*/ * error_context_stack ; 
 int got_SIGHUP ; 
 int last_checkpoint_time ; 
 int last_xlog_switch_time ; 
 int /*<<< orphan*/  FUNC36 (long) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 scalar_t__ shutdown_requested ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC43 () ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ *) ; 

void
FUNC45(void)
{
	sigjmp_buf	local_sigjmp_buf;
	MemoryContext checkpointer_context;

	CheckpointerShmem->checkpointer_pid = MyProcPid;

	/*
	 * Properly accept or ignore signals the postmaster might send us
	 *
	 * Note: we deliberately ignore SIGTERM, because during a standard Unix
	 * system shutdown cycle, init will SIGTERM all processes at once.  We
	 * want to wait for the backends to exit, whereupon the postmaster will
	 * tell us it's okay to shut down (via SIGUSR2).
	 */
	FUNC39(SIGHUP, ChkptSigHupHandler);	/* set flag to read config file */
	FUNC39(SIGINT, ReqCheckpointHandler); /* request checkpoint */
	FUNC39(SIGTERM, SIG_IGN); /* ignore SIGTERM */
	FUNC39(SIGQUIT, chkpt_quickdie);	/* hard crash time */
	FUNC39(SIGALRM, SIG_IGN);
	FUNC39(SIGPIPE, SIG_IGN);
	FUNC39(SIGUSR1, chkpt_sigusr1_handler);
	FUNC39(SIGUSR2, ReqShutdownHandler);	/* request shutdown */

	/*
	 * Reset some signals that are accepted by postmaster but not here
	 */
	FUNC39(SIGCHLD, SIG_DFL);

	/* We allow SIGQUIT (quickdie) at all times */
	FUNC41(&BlockSig, SIGQUIT);

	/*
	 * Initialize so that first time-driven event happens at the correct time.
	 */
	last_checkpoint_time = last_xlog_switch_time = (pg_time_t) FUNC44(NULL);

	/*
	 * Create a memory context that we will do all our work in.  We do this so
	 * that we can reset the context during error recovery and thereby avoid
	 * possible memory leaks.  Formerly this code just ran in
	 * TopMemoryContext, but resetting that would be a really bad idea.
	 */
	checkpointer_context = FUNC2(TopMemoryContext,
												 "Checkpointer",
												 ALLOCSET_DEFAULT_SIZES);
	FUNC19(checkpointer_context);

	/*
	 * If an exception is encountered, processing resumes here.
	 *
	 * See notes in postgres.c about the design of this coding.
	 */
	if (FUNC42(local_sigjmp_buf, 1) != 0)
	{
		/* Since not using PG_TRY, must reset error stack by hand */
		error_context_stack = NULL;

		/* Prevent interrupts while cleaning up */
		FUNC16();

		/* Report the error to the server log */
		FUNC12();

		/*
		 * These operations are really just a minimal subset of
		 * AbortTransaction().  We don't have very many resources to worry
		 * about in checkpointer, but we do have LWLocks, buffers, and temp
		 * files.
		 */
		FUNC17();
		FUNC9();
		FUNC37();
		FUNC0();
		FUNC30();
		FUNC25(false);
		FUNC3(false);
		FUNC6();
		FUNC4(false);
		FUNC5(false);

		/* Warn any waiting backends that the checkpoint failed. */
		if (ckpt_active)
		{
			FUNC28(&CheckpointerShmem->ckpt_lck);
			CheckpointerShmem->ckpt_failed++;
			CheckpointerShmem->ckpt_done = CheckpointerShmem->ckpt_started;
			FUNC29(&CheckpointerShmem->ckpt_lck);

			FUNC8(&CheckpointerShmem->done_cv);

			ckpt_active = false;
		}

		/*
		 * Now return to normal top-level context and clear ErrorContext for
		 * next time.
		 */
		FUNC19(checkpointer_context);
		FUNC13();

		/* Flush any leaked data in the top-level context */
		FUNC18(checkpointer_context);

		/* Now we can allow interrupts again */
		FUNC23();

		/*
		 * Sleep at least 1 second after any error.  A write error is likely
		 * to be repeated, and we don't want to be filling the error logs as
		 * fast as we can.
		 */
		FUNC36(1000000L);

		/*
		 * Close all open files after any error.  This is helpful on Windows,
		 * where holding deleted files open causes various strange errors.
		 * It's not clear we need it elsewhere, but shouldn't hurt.
		 */
		FUNC43();
	}

	/* We can now handle ereport(ERROR) */
	PG_exception_stack = &local_sigjmp_buf;

	/*
	 * Unblock signals (they were blocked when the postmaster forked us)
	 */
	FUNC21(&UnBlockSig);

	/*
	 * Ensure all shared memory values are set correctly for the config. Doing
	 * this here ensures no race conditions from other concurrent updaters.
	 */
	FUNC31();

	/*
	 * Advertise our latch that backends can use to wake us up while we're
	 * sleeping.
	 */
	ProcGlobal->checkpointerLatch = &MyProc->procLatch;

	/*
	 * Loop forever
	 */
	for (;;)
	{
		bool		do_checkpoint = false;
		int			flags = 0;
		pg_time_t	now;
		int			elapsed_secs;
		int			cur_timeout;

		/* Clear any already-pending wakeups */
		FUNC26(MyLatch);

		/*
		 * Process any requests or signals received recently.
		 */
		FUNC1();

		if (got_SIGHUP)
		{
			got_SIGHUP = false;
			FUNC22(PGC_SIGHUP);

			/*
			 * Checkpointer is the last process to shut down, so we ask it to
			 * hold the keys for a range of other tasks required most of which
			 * have nothing to do with checkpointing at all.
			 *
			 * For various reasons, some config values can change dynamically
			 * so the primary copy of them is held in shared memory to make
			 * sure all backends see the same value.  We make Checkpointer
			 * responsible for updating the shared memory copy if the
			 * parameter setting changes because of SIGHUP.
			 */
			FUNC31();
		}
		if (shutdown_requested)
		{
			/*
			 * From here on, elog(ERROR) should end with exit(1), not send
			 * control back to the sigsetjmp block above
			 */
			ExitOnAnyError = true;
			/* Close down the database */
			FUNC27(0, 0);
			/* Normal exit from the checkpointer is here */
			FUNC40(0);		/* done */
		}

		/*
		 * Detect a pending checkpoint request by checking whether the flags
		 * word in shared memory is nonzero.  We shouldn't need to acquire the
		 * ckpt_lck for this.
		 */
		if (((volatile CheckpointerShmemStruct *) CheckpointerShmem)->ckpt_flags)
		{
			do_checkpoint = true;
			BgWriterStats.m_requested_checkpoints++;
		}

		/*
		 * Force a checkpoint if too much time has elapsed since the last one.
		 * Note that we count a timed checkpoint in stats only when this
		 * occurs without an external request, but we set the CAUSE_TIME flag
		 * bit even if there is also an external request.
		 */
		now = (pg_time_t) FUNC44(NULL);
		elapsed_secs = now - last_checkpoint_time;
		if (elapsed_secs >= CheckPointTimeout)
		{
			if (!do_checkpoint)
				BgWriterStats.m_timed_checkpoints++;
			do_checkpoint = true;
			flags |= CHECKPOINT_CAUSE_TIME;
		}

		/*
		 * Do a checkpoint if requested.
		 */
		if (do_checkpoint)
		{
			bool		ckpt_performed = false;
			bool		do_restartpoint;

			/*
			 * Check if we should perform a checkpoint or a restartpoint. As a
			 * side-effect, RecoveryInProgress() initializes TimeLineID if
			 * it's not set yet.
			 */
			do_restartpoint = FUNC24();

			/*
			 * Atomically fetch the request flags to figure out what kind of a
			 * checkpoint we should perform, and increase the started-counter
			 * to acknowledge that we've started a new checkpoint.
			 */
			FUNC28(&CheckpointerShmem->ckpt_lck);
			flags |= CheckpointerShmem->ckpt_flags;
			CheckpointerShmem->ckpt_flags = 0;
			CheckpointerShmem->ckpt_started++;
			FUNC29(&CheckpointerShmem->ckpt_lck);

			FUNC8(&CheckpointerShmem->start_cv);

			/*
			 * The end-of-recovery checkpoint is a real checkpoint that's
			 * performed while we're still in recovery.
			 */
			if (flags & CHECKPOINT_END_OF_RECOVERY)
				do_restartpoint = false;

			/*
			 * We will warn if (a) too soon since last checkpoint (whatever
			 * caused it) and (b) somebody set the CHECKPOINT_CAUSE_XLOG flag
			 * since the last checkpoint start.  Note in particular that this
			 * implementation will not generate warnings caused by
			 * CheckPointTimeout < CheckPointWarning.
			 */
			if (!do_restartpoint &&
				(flags & CHECKPOINT_CAUSE_XLOG) &&
				elapsed_secs < CheckPointWarning)
				FUNC33(LOG,
						(FUNC35("checkpoints are occurring too frequently (%d second apart)",
									   "checkpoints are occurring too frequently (%d seconds apart)",
									   elapsed_secs,
									   elapsed_secs),
						 FUNC34("Consider increasing the configuration parameter \"max_wal_size\".")));

			/*
			 * Initialize checkpointer-private variables used during
			 * checkpoint.
			 */
			ckpt_active = true;
			if (do_restartpoint)
				ckpt_start_recptr = FUNC15(NULL);
			else
				ckpt_start_recptr = FUNC14();
			ckpt_start_time = now;
			ckpt_cached_elapsed = 0;

			/*
			 * Do the checkpoint.
			 */
			if (!do_restartpoint)
			{
				FUNC10(flags);
				ckpt_performed = true;
			}
			else
				ckpt_performed = FUNC11(flags);

			/*
			 * After any checkpoint, close all smgr files.  This is so we
			 * won't hang onto smgr references to deleted files indefinitely.
			 */
			FUNC43();

			/*
			 * Indicate checkpoint completion to any waiting backends.
			 */
			FUNC28(&CheckpointerShmem->ckpt_lck);
			CheckpointerShmem->ckpt_done = CheckpointerShmem->ckpt_started;
			FUNC29(&CheckpointerShmem->ckpt_lck);

			FUNC8(&CheckpointerShmem->done_cv);

			if (ckpt_performed)
			{
				/*
				 * Note we record the checkpoint start time not end time as
				 * last_checkpoint_time.  This is so that time-driven
				 * checkpoints happen at a predictable spacing.
				 */
				last_checkpoint_time = now;
			}
			else
			{
				/*
				 * We were not able to perform the restartpoint (checkpoints
				 * throw an ERROR in case of error).  Most likely because we
				 * have not received any new checkpoint WAL records since the
				 * last restartpoint. Try again in 15 s.
				 */
				last_checkpoint_time = now - CheckPointTimeout + 15;
			}

			ckpt_active = false;
		}

		/* Check for archive_timeout and switch xlog files if necessary. */
		FUNC7();

		/*
		 * Send off activity statistics to the stats collector.  (The reason
		 * why we re-use bgwriter-related code for this is that the bgwriter
		 * and checkpointer used to be just one process.  It's probably not
		 * worth the trouble to split the stats support into two independent
		 * stats message types.)
		 */
		FUNC38();

		/*
		 * Sleep until we are signaled or it's time for another checkpoint or
		 * xlog file switch.
		 */
		now = (pg_time_t) FUNC44(NULL);
		elapsed_secs = now - last_checkpoint_time;
		if (elapsed_secs >= CheckPointTimeout)
			continue;			/* no sleep for us ... */
		cur_timeout = CheckPointTimeout - elapsed_secs;
		if (XLogArchiveTimeout > 0 && !FUNC24())
		{
			elapsed_secs = now - last_xlog_switch_time;
			if (elapsed_secs >= XLogArchiveTimeout)
				continue;		/* no sleep for us ... */
			cur_timeout = FUNC20(cur_timeout, XLogArchiveTimeout - elapsed_secs);
		}

		(void) FUNC32(MyLatch,
						 WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
						 cur_timeout * 1000L /* convert to ms */ ,
						 WAIT_EVENT_CHECKPOINTER_MAIN);
	}
}