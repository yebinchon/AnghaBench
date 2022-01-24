#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ AbortStartTime ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ AutoVacPID ; 
 int BACKEND_TYPE_ALL ; 
 int BACKEND_TYPE_NORMAL ; 
 int BACKEND_TYPE_WORKER ; 
 int /*<<< orphan*/  BackendList ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ BgWriterPID ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ CheckpointerPID ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FatalError ; 
 scalar_t__ ImmediateShutdown ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ NoShutdown ; 
 scalar_t__ PM_NO_CHILDREN ; 
 scalar_t__ PM_SHUTDOWN ; 
 scalar_t__ PM_SHUTDOWN_2 ; 
 scalar_t__ PM_STARTUP ; 
 scalar_t__ PM_WAIT_BACKENDS ; 
 scalar_t__ PM_WAIT_BACKUP ; 
 scalar_t__ PM_WAIT_DEAD_END ; 
 scalar_t__ PM_WAIT_READONLY ; 
 scalar_t__ PgArchPID ; 
 scalar_t__ PgStatPID ; 
 scalar_t__ ReachedNormalRunning ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 scalar_t__ STARTUP_CRASHED ; 
 scalar_t__ STARTUP_RUNNING ; 
 scalar_t__ Shutdown ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ StartupPID ; 
 scalar_t__ StartupStatus ; 
 scalar_t__ WalReceiverPID ; 
 scalar_t__ WalWriterPID ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ pmState ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  restart_after_crash ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(void)
{
	if (pmState == PM_WAIT_BACKUP)
	{
		/*
		 * PM_WAIT_BACKUP state ends when online backup mode is not active.
		 */
		if (!FUNC1())
			pmState = PM_WAIT_BACKENDS;
	}

	if (pmState == PM_WAIT_READONLY)
	{
		/*
		 * PM_WAIT_READONLY state ends when we have no regular backends that
		 * have been started during recovery.  We kill the startup and
		 * walreceiver processes and transition to PM_WAIT_BACKENDS.  Ideally,
		 * we might like to kill these processes first and then wait for
		 * backends to die off, but that doesn't work at present because
		 * killing the startup process doesn't release its locks.
		 */
		if (FUNC3(BACKEND_TYPE_NORMAL) == 0)
		{
			if (StartupPID != 0)
				FUNC15(StartupPID, SIGTERM);
			if (WalReceiverPID != 0)
				FUNC15(WalReceiverPID, SIGTERM);
			pmState = PM_WAIT_BACKENDS;
		}
	}

	/*
	 * If we are in a state-machine state that implies waiting for backends to
	 * exit, see if they're all gone, and change state if so.
	 */
	if (pmState == PM_WAIT_BACKENDS)
	{
		/*
		 * PM_WAIT_BACKENDS state ends when we have no regular backends
		 * (including autovac workers), no bgworkers (including unconnected
		 * ones), and no walwriter, autovac launcher or bgwriter.  If we are
		 * doing crash recovery or an immediate shutdown then we expect the
		 * checkpointer to exit as well, otherwise not. The archiver, stats,
		 * and syslogger processes are disregarded since they are not
		 * connected to shared memory; we also disregard dead_end children
		 * here. Walsenders are also disregarded, they will be terminated
		 * later after writing the checkpoint record, like the archiver
		 * process.
		 */
		if (FUNC3(BACKEND_TYPE_NORMAL | BACKEND_TYPE_WORKER) == 0 &&
			StartupPID == 0 &&
			WalReceiverPID == 0 &&
			BgWriterPID == 0 &&
			(CheckpointerPID == 0 ||
			 (!FatalError && Shutdown < ImmediateShutdown)) &&
			WalWriterPID == 0 &&
			AutoVacPID == 0)
		{
			if (Shutdown >= ImmediateShutdown || FatalError)
			{
				/*
				 * Start waiting for dead_end children to die.  This state
				 * change causes ServerLoop to stop creating new ones.
				 */
				pmState = PM_WAIT_DEAD_END;

				/*
				 * We already SIGQUIT'd the archiver and stats processes, if
				 * any, when we started immediate shutdown or entered
				 * FatalError state.
				 */
			}
			else
			{
				/*
				 * If we get here, we are proceeding with normal shutdown. All
				 * the regular children are gone, and it's time to tell the
				 * checkpointer to do a shutdown checkpoint.
				 */
				FUNC0(Shutdown > NoShutdown);
				/* Start the checkpointer if not running */
				if (CheckpointerPID == 0)
					CheckpointerPID = FUNC8();
				/* And tell it to shut down */
				if (CheckpointerPID != 0)
				{
					FUNC15(CheckpointerPID, SIGUSR2);
					pmState = PM_SHUTDOWN;
				}
				else
				{
					/*
					 * If we failed to fork a checkpointer, just shut down.
					 * Any required cleanup will happen at next restart. We
					 * set FatalError so that an "abnormal shutdown" message
					 * gets logged when we exit.
					 */
					FatalError = true;
					pmState = PM_WAIT_DEAD_END;

					/* Kill the walsenders, archiver and stats collector too */
					FUNC7(SIGQUIT);
					if (PgArchPID != 0)
						FUNC15(PgArchPID, SIGQUIT);
					if (PgStatPID != 0)
						FUNC15(PgStatPID, SIGQUIT);
				}
			}
		}
	}

	if (pmState == PM_SHUTDOWN_2)
	{
		/*
		 * PM_SHUTDOWN_2 state ends when there's no other children than
		 * dead_end children left. There shouldn't be any regular backends
		 * left by now anyway; what we're really waiting for is walsenders and
		 * archiver.
		 */
		if (PgArchPID == 0 && FUNC3(BACKEND_TYPE_ALL) == 0)
		{
			pmState = PM_WAIT_DEAD_END;
		}
	}

	if (pmState == PM_WAIT_DEAD_END)
	{
		/*
		 * PM_WAIT_DEAD_END state ends when the BackendList is entirely empty
		 * (ie, no dead_end children remain), and the archiver and stats
		 * collector are gone too.
		 *
		 * The reason we wait for those two is to protect them against a new
		 * postmaster starting conflicting subprocesses; this isn't an
		 * ironclad protection, but it at least helps in the
		 * shutdown-and-immediately-restart scenario.  Note that they have
		 * already been sent appropriate shutdown signals, either during a
		 * normal state transition leading up to PM_WAIT_DEAD_END, or during
		 * FatalError processing.
		 */
		if (FUNC10(&BackendList) &&
			PgArchPID == 0 && PgStatPID == 0)
		{
			/* These other guys should be dead already */
			FUNC0(StartupPID == 0);
			FUNC0(WalReceiverPID == 0);
			FUNC0(BgWriterPID == 0);
			FUNC0(CheckpointerPID == 0);
			FUNC0(WalWriterPID == 0);
			FUNC0(AutoVacPID == 0);
			/* syslogger is not considered here */
			pmState = PM_NO_CHILDREN;
		}
	}

	/*
	 * If we've been told to shut down, we exit as soon as there are no
	 * remaining children.  If there was a crash, cleanup will occur at the
	 * next startup.  (Before PostgreSQL 8.3, we tried to recover from the
	 * crash before exiting, but that seems unwise if we are quitting because
	 * we got SIGTERM from init --- there may well not be time for recovery
	 * before init decides to SIGKILL us.)
	 *
	 * Note that the syslogger continues to run.  It will exit when it sees
	 * EOF on its input pipe, which happens when there are no more upstream
	 * processes.
	 */
	if (Shutdown > NoShutdown && pmState == PM_NO_CHILDREN)
	{
		if (FatalError)
		{
			FUNC11(LOG, (FUNC12("abnormal database system shutdown")));
			FUNC4(1);
		}
		else
		{
			/*
			 * Terminate exclusive backup mode to avoid recovery after a clean
			 * fast shutdown.  Since an exclusive backup can only be taken
			 * during normal running (and not, for example, while running
			 * under Hot Standby) it only makes sense to do this if we reached
			 * normal running. If we're still in recovery, the backup file is
			 * one we're recovering *from*, and we must keep it around so that
			 * recovery restarts from the right place.
			 */
			if (ReachedNormalRunning)
				FUNC2();

			/* Normal exit from the postmaster is here */
			FUNC4(0);
		}
	}

	/*
	 * If the startup process failed, or the user does not want an automatic
	 * restart after backend crashes, wait for all non-syslogger children to
	 * exit, and then exit postmaster.  We don't try to reinitialize when the
	 * startup process fails, because more than likely it will just fail again
	 * and we will keep trying forever.
	 */
	if (pmState == PM_NO_CHILDREN &&
		(StartupStatus == STARTUP_CRASHED || !restart_after_crash))
		FUNC4(1);

	/*
	 * If we need to recover from a crash, wait for all non-syslogger children
	 * to exit, then reset shmem and StartupDataBase.
	 */
	if (FatalError && pmState == PM_NO_CHILDREN)
	{
		FUNC11(LOG,
				(FUNC12("all server processes terminated; reinitializing")));

		/* allow background workers to immediately restart */
		FUNC6();

		FUNC14(1);

		/* re-read control file into local memory */
		FUNC5(true);

		FUNC13();

		StartupPID = FUNC9();
		FUNC0(StartupPID != 0);
		StartupStatus = STARTUP_RUNNING;
		pmState = PM_STARTUP;
		/* crash recovery started, reset SIGKILL flag */
		AbortStartTime = 0;
	}
}