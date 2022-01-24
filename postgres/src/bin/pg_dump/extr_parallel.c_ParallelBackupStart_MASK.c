#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_16__ {TYPE_4__* slot; TYPE_5__* AH; } ;
typedef  TYPE_2__ WorkerInfo ;
typedef  int /*<<< orphan*/  TocEntry ;
struct TYPE_21__ {TYPE_3__* pstate; } ;
struct TYPE_20__ {int am_worker; } ;
struct TYPE_15__ {int numWorkers; } ;
struct TYPE_19__ {int /*<<< orphan*/ * connection; TYPE_1__ public; } ;
struct TYPE_18__ {int pipeRead; int pipeWrite; int pipeRevRead; int pipeRevWrite; uintptr_t hThread; scalar_t__ pid; int /*<<< orphan*/  threadId; int /*<<< orphan*/ * callback_data; int /*<<< orphan*/ * callback; int /*<<< orphan*/ * AH; int /*<<< orphan*/  workerStatus; } ;
struct TYPE_17__ {int numWorkers; TYPE_4__* parallelSlot; int /*<<< orphan*/ ** te; } ;
typedef  TYPE_3__ ParallelState ;
typedef  TYPE_4__ ParallelSlot ;
typedef  TYPE_5__ ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t PIPE_READ ; 
 size_t PIPE_WRITE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  WRKR_IDLE ; 
 uintptr_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  getLocalPQExpBuffer ; 
 int /*<<< orphan*/  getThreadLocalPQExpBuffer ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  init_spawned_worker_win32 ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 TYPE_7__ shutdown_info ; 
 TYPE_6__ signal_info ; 

ParallelState *
FUNC15(ArchiveHandle *AH)
{
	ParallelState *pstate;
	int			i;

	FUNC0(AH->public.numWorkers > 0);

	pstate = (ParallelState *) FUNC9(sizeof(ParallelState));

	pstate->numWorkers = AH->public.numWorkers;
	pstate->te = NULL;
	pstate->parallelSlot = NULL;

	if (AH->public.numWorkers == 1)
		return pstate;

	pstate->te = (TocEntry **)
		FUNC10(pstate->numWorkers * sizeof(TocEntry *));
	pstate->parallelSlot = (ParallelSlot *)
		FUNC10(pstate->numWorkers * sizeof(ParallelSlot));

#ifdef WIN32
	/* Make fmtId() and fmtQualifiedId() use thread-local storage */
	getLocalPQExpBuffer = getThreadLocalPQExpBuffer;
#endif

	/*
	 * Set the pstate in shutdown_info, to tell the exit handler that it must
	 * clean up workers as well as the main database connection.  But we don't
	 * set this in signal_info yet, because we don't want child processes to
	 * inherit non-NULL signal_info.pstate.
	 */
	shutdown_info.pstate = pstate;

	/*
	 * Temporarily disable query cancellation on the master connection.  This
	 * ensures that child processes won't inherit valid AH->connCancel
	 * settings and thus won't try to issue cancels against the master's
	 * connection.  No harm is done if we fail while it's disabled, because
	 * the master connection is idle at this point anyway.
	 */
	FUNC13(AH, NULL);

	/* Ensure stdio state is quiesced before forking */
	FUNC6(NULL);

	/* Create desired number of workers */
	for (i = 0; i < pstate->numWorkers; i++)
	{
#ifdef WIN32
		WorkerInfo *wi;
		uintptr_t	handle;
#else
		pid_t		pid;
#endif
		ParallelSlot *slot = &(pstate->parallelSlot[i]);
		int			pipeMW[2],
					pipeWM[2];

		/* Create communication pipes for this worker */
		if (FUNC11(pipeMW) < 0 || FUNC11(pipeWM) < 0)
			FUNC5("could not create communication channels: %m");

		pstate->te[i] = NULL;	/* just for safety */

		slot->workerStatus = WRKR_IDLE;
		slot->AH = NULL;
		slot->callback = NULL;
		slot->callback_data = NULL;

		/* master's ends of the pipes */
		slot->pipeRead = pipeWM[PIPE_READ];
		slot->pipeWrite = pipeMW[PIPE_WRITE];
		/* child's ends of the pipes */
		slot->pipeRevRead = pipeMW[PIPE_READ];
		slot->pipeRevWrite = pipeWM[PIPE_WRITE];

#ifdef WIN32
		/* Create transient structure to pass args to worker function */
		wi = (WorkerInfo *) pg_malloc(sizeof(WorkerInfo));

		wi->AH = AH;
		wi->slot = slot;

		handle = _beginthreadex(NULL, 0, (void *) &init_spawned_worker_win32,
								wi, 0, &(slot->threadId));
		slot->hThread = handle;
#else							/* !WIN32 */
		pid = FUNC7();
		if (pid == 0)
		{
			/* we are the worker */
			int			j;

			/* this is needed for GetMyPSlot() */
			slot->pid = FUNC8();

			/* instruct signal handler that we're in a worker now */
			signal_info.am_worker = true;

			/* close read end of Worker -> Master */
			FUNC3(pipeWM[PIPE_READ]);
			/* close write end of Master -> Worker */
			FUNC3(pipeMW[PIPE_WRITE]);

			/*
			 * Close all inherited fds for communication of the master with
			 * previously-forked workers.
			 */
			for (j = 0; j < i; j++)
			{
				FUNC3(pstate->parallelSlot[j].pipeRead);
				FUNC3(pstate->parallelSlot[j].pipeWrite);
			}

			/* Run the worker ... */
			FUNC1(AH, slot);

			/* We can just exit(0) when done */
			FUNC4(0);
		}
		else if (pid < 0)
		{
			/* fork failed */
			FUNC5("could not create worker process: %m");
		}

		/* In Master after successful fork */
		slot->pid = pid;

		/* close read end of Master -> Worker */
		FUNC3(pipeMW[PIPE_READ]);
		/* close write end of Worker -> Master */
		FUNC3(pipeWM[PIPE_WRITE]);
#endif							/* WIN32 */
	}

	/*
	 * Having forked off the workers, disable SIGPIPE so that master isn't
	 * killed if it tries to send a command to a dead worker.  We don't want
	 * the workers to inherit this setting, though.
	 */
#ifndef WIN32
	FUNC12(SIGPIPE, SIG_IGN);
#endif

	/*
	 * Re-establish query cancellation on the master connection.
	 */
	FUNC13(AH, AH->connection);

	/*
	 * Tell the cancel signal handler to forward signals to worker processes,
	 * too.  (As with query cancel, we did not need this earlier because the
	 * workers have not yet been given anything to do; if we die before this
	 * point, any already-started workers will see EOF and quit promptly.)
	 */
	FUNC14(pstate);

	return pstate;
}