#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_10__ {scalar_t__ pid; int /*<<< orphan*/  elem; } ;
struct TYPE_9__ {int /*<<< orphan*/  bgw_name; } ;
struct TYPE_8__ {scalar_t__ rw_pid; TYPE_3__* rw_backend; TYPE_2__ rw_worker; void* rw_crashed_at; int /*<<< orphan*/  rw_child_slot; int /*<<< orphan*/  rw_shmem_slot; } ;
typedef  TYPE_1__ RegisteredBgWorker ;
typedef  int /*<<< orphan*/  BackgroundWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BackendList ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * MyBgworkerEntry ; 
 int /*<<< orphan*/ * PostmasterContext ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static bool
FUNC20(RegisteredBgWorker *rw)
{
	pid_t		worker_pid;

	FUNC0(rw->rw_pid == 0);

	/*
	 * Allocate and assign the Backend element.  Note we must do this before
	 * forking, so that we can handle failures (out of memory or child-process
	 * slots) cleanly.
	 *
	 * Treat failure as though the worker had crashed.  That way, the
	 * postmaster will wait a bit before attempting to start it again; if we
	 * tried again right away, most likely we'd find ourselves hitting the
	 * same resource-exhaustion condition.
	 */
	if (!FUNC11(rw))
	{
		rw->rw_crashed_at = FUNC2();
		return false;
	}

	FUNC14(DEBUG1,
			(FUNC15("starting background worker process \"%s\"",
					rw->rw_worker.bgw_name)));

#ifdef EXEC_BACKEND
	switch ((worker_pid = bgworker_forkexec(rw->rw_shmem_slot)))
#else
	switch ((worker_pid = FUNC17()))
#endif
	{
		case -1:
			/* in postmaster, fork failed ... */
			FUNC14(LOG,
					(FUNC15("could not fork worker process: %m")));
			/* undo what assign_backendlist_entry did */
			FUNC7(rw->rw_child_slot);
			rw->rw_child_slot = 0;
			FUNC18(rw->rw_backend);
			rw->rw_backend = NULL;
			/* mark entry as crashed, so we'll try again later */
			rw->rw_crashed_at = FUNC2();
			break;

#ifndef EXEC_BACKEND
		case 0:
			/* in postmaster child ... */
			FUNC3();

			/* Close the postmaster's sockets */
			FUNC1(false);

			/*
			 * Before blowing away PostmasterContext, save this bgworker's
			 * data where it can find it.
			 */
			MyBgworkerEntry = (BackgroundWorker *)
				FUNC4(TopMemoryContext, sizeof(BackgroundWorker));
			FUNC19(MyBgworkerEntry, &rw->rw_worker, sizeof(BackgroundWorker));

			/* Release postmaster's working memory context */
			FUNC6(TopMemoryContext);
			FUNC5(PostmasterContext);
			PostmasterContext = NULL;

			FUNC10();

			FUNC16(1);			/* should not get here */
			break;
#endif
		default:
			/* in postmaster, fork successful ... */
			rw->rw_pid = worker_pid;
			rw->rw_backend->pid = rw->rw_pid;
			FUNC8(rw);
			/* add new worker to lists of backends */
			FUNC13(&BackendList, &rw->rw_backend->elem);
#ifdef EXEC_BACKEND
			ShmemBackendArrayAdd(rw->rw_backend);
#endif
			return true;
	}

	return false;
}