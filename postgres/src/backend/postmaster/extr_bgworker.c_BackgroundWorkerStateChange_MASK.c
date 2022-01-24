#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int total_slots; int /*<<< orphan*/  parallel_terminate_count; TYPE_4__* slot; } ;
struct TYPE_9__ {int bgw_notify_pid; int bgw_flags; int /*<<< orphan*/  bgw_extra; int /*<<< orphan*/  bgw_main_arg; int /*<<< orphan*/  bgw_restart_time; int /*<<< orphan*/  bgw_start_time; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_type; int /*<<< orphan*/  bgw_name; } ;
struct TYPE_12__ {int in_use; TYPE_1__ worker; scalar_t__ pid; scalar_t__ terminate; } ;
struct TYPE_10__ {int bgw_flags; int bgw_notify_pid; int /*<<< orphan*/  bgw_name; int /*<<< orphan*/  bgw_extra; int /*<<< orphan*/  bgw_main_arg; int /*<<< orphan*/  bgw_restart_time; int /*<<< orphan*/  bgw_start_time; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_type; } ;
struct TYPE_11__ {int rw_terminate; scalar_t__ rw_pid; int rw_shmem_slot; int /*<<< orphan*/  rw_lnode; TYPE_2__ rw_worker; scalar_t__ rw_crashed_at; scalar_t__ rw_child_slot; int /*<<< orphan*/ * rw_backend; } ;
typedef  TYPE_3__ RegisteredBgWorker ;
typedef  TYPE_4__ BackgroundWorkerSlot ;

/* Variables and functions */
 int BGWORKER_CLASS_PARALLEL ; 
 int /*<<< orphan*/  BGW_EXTRALEN ; 
 int /*<<< orphan*/  BGW_MAXLEN ; 
 TYPE_8__* BackgroundWorkerData ; 
 int /*<<< orphan*/  BackgroundWorkerList ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (int) ; 
 int max_worker_processes ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC14(void)
{
	int			slotno;

	/*
	 * The total number of slots stored in shared memory should match our
	 * notion of max_worker_processes.  If it does not, something is very
	 * wrong.  Further down, we always refer to this value as
	 * max_worker_processes, in case shared memory gets corrupted while we're
	 * looping.
	 */
	if (max_worker_processes != BackgroundWorkerData->total_slots)
	{
		FUNC4(LOG,
			 "inconsistent background worker state (max_worker_processes=%d, total_slots=%d",
			 max_worker_processes,
			 BackgroundWorkerData->total_slots);
		return;
	}

	/*
	 * Iterate through slots, looking for newly-registered workers or workers
	 * who must die.
	 */
	for (slotno = 0; slotno < max_worker_processes; ++slotno)
	{
		BackgroundWorkerSlot *slot = &BackgroundWorkerData->slot[slotno];
		RegisteredBgWorker *rw;

		if (!slot->in_use)
			continue;

		/*
		 * Make sure we don't see the in_use flag before the updated slot
		 * contents.
		 */
		FUNC12();

		/* See whether we already know about this worker. */
		rw = FUNC0(slotno);
		if (rw != NULL)
		{
			/*
			 * In general, the worker data can't change after it's initially
			 * registered.  However, someone can set the terminate flag.
			 */
			if (slot->terminate && !rw->rw_terminate)
			{
				rw->rw_terminate = true;
				if (rw->rw_pid != 0)
					FUNC8(rw->rw_pid, SIGTERM);
				else
				{
					/* Report never-started, now-terminated worker as dead. */
					FUNC2(rw);
				}
			}
			continue;
		}

		/*
		 * If the worker is marked for termination, we don't need to add it to
		 * the registered workers list; we can just free the slot. However, if
		 * bgw_notify_pid is set, the process that registered the worker may
		 * need to know that we've processed the terminate request, so be sure
		 * to signal it.
		 */
		if (slot->terminate)
		{
			int			notify_pid;

			/*
			 * We need a memory barrier here to make sure that the load of
			 * bgw_notify_pid and the update of parallel_terminate_count
			 * complete before the store to in_use.
			 */
			notify_pid = slot->worker.bgw_notify_pid;
			if ((slot->worker.bgw_flags & BGWORKER_CLASS_PARALLEL) != 0)
				BackgroundWorkerData->parallel_terminate_count++;
			FUNC11();
			slot->pid = 0;
			slot->in_use = false;
			if (notify_pid != 0)
				FUNC8(notify_pid, SIGUSR1);

			continue;
		}

		/*
		 * Copy the registration data into the registered workers list.
		 */
		rw = FUNC9(sizeof(RegisteredBgWorker));
		if (rw == NULL)
		{
			FUNC5(LOG,
					(FUNC6(ERRCODE_OUT_OF_MEMORY),
					 FUNC7("out of memory")));
			return;
		}

		/*
		 * Copy strings in a paranoid way.  If shared memory is corrupted, the
		 * source data might not even be NUL-terminated.
		 */
		FUNC3(rw->rw_worker.bgw_name,
						   slot->worker.bgw_name, BGW_MAXLEN);
		FUNC3(rw->rw_worker.bgw_type,
						   slot->worker.bgw_type, BGW_MAXLEN);
		FUNC3(rw->rw_worker.bgw_library_name,
						   slot->worker.bgw_library_name, BGW_MAXLEN);
		FUNC3(rw->rw_worker.bgw_function_name,
						   slot->worker.bgw_function_name, BGW_MAXLEN);

		/*
		 * Copy various fixed-size fields.
		 *
		 * flags, start_time, and restart_time are examined by the postmaster,
		 * but nothing too bad will happen if they are corrupted.  The
		 * remaining fields will only be examined by the child process.  It
		 * might crash, but we won't.
		 */
		rw->rw_worker.bgw_flags = slot->worker.bgw_flags;
		rw->rw_worker.bgw_start_time = slot->worker.bgw_start_time;
		rw->rw_worker.bgw_restart_time = slot->worker.bgw_restart_time;
		rw->rw_worker.bgw_main_arg = slot->worker.bgw_main_arg;
		FUNC10(rw->rw_worker.bgw_extra, slot->worker.bgw_extra, BGW_EXTRALEN);

		/*
		 * Copy the PID to be notified about state changes, but only if the
		 * postmaster knows about a backend with that PID.  It isn't an error
		 * if the postmaster doesn't know about the PID, because the backend
		 * that requested the worker could have died (or been killed) just
		 * after doing so.  Nonetheless, at least until we get some experience
		 * with how this plays out in the wild, log a message at a relative
		 * high debug level.
		 */
		rw->rw_worker.bgw_notify_pid = slot->worker.bgw_notify_pid;
		if (!FUNC1(rw->rw_worker.bgw_notify_pid))
		{
			FUNC4(DEBUG1, "worker notification PID %lu is not valid",
				 (long) rw->rw_worker.bgw_notify_pid);
			rw->rw_worker.bgw_notify_pid = 0;
		}

		/* Initialize postmaster bookkeeping. */
		rw->rw_backend = NULL;
		rw->rw_pid = 0;
		rw->rw_child_slot = 0;
		rw->rw_crashed_at = 0;
		rw->rw_shmem_slot = slotno;
		rw->rw_terminate = false;

		/* Log it! */
		FUNC5(DEBUG1,
				(FUNC7("registering background worker \"%s\"",
						rw->rw_worker.bgw_name)));

		FUNC13(&BackgroundWorkerList, &rw->rw_lnode);
	}
}