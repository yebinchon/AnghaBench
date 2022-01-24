#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
struct TYPE_13__ {scalar_t__ parallel_register_count; scalar_t__ parallel_terminate_count; int total_slots; TYPE_1__* slot; } ;
struct TYPE_12__ {int bgw_flags; } ;
struct TYPE_11__ {int slot; scalar_t__ generation; } ;
struct TYPE_10__ {int in_use; int terminate; scalar_t__ generation; int /*<<< orphan*/  pid; int /*<<< orphan*/  worker; } ;
typedef  TYPE_1__ BackgroundWorkerSlot ;
typedef  TYPE_2__ BackgroundWorkerHandle ;
typedef  TYPE_3__ BackgroundWorker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BGWORKER_CLASS_PARALLEL ; 
 TYPE_9__* BackgroundWorkerData ; 
 int /*<<< orphan*/  BackgroundWorkerLock ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidPid ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ MAX_PARALLEL_WORKER_LIMIT ; 
 int /*<<< orphan*/  PMSIGNAL_BACKGROUND_WORKER_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_parallel_workers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

bool
FUNC8(BackgroundWorker *worker,
								BackgroundWorkerHandle **handle)
{
	int			slotno;
	bool		success = false;
	bool		parallel;
	uint64		generation = 0;

	/*
	 * We can't register dynamic background workers from the postmaster. If
	 * this is a standalone backend, we're the only process and can't start
	 * any more.  In a multi-process environment, it might be theoretically
	 * possible, but we don't currently support it due to locking
	 * considerations; see comments on the BackgroundWorkerSlot data
	 * structure.
	 */
	if (!IsUnderPostmaster)
		return false;

	if (!FUNC3(worker, ERROR))
		return false;

	parallel = (worker->bgw_flags & BGWORKER_CLASS_PARALLEL) != 0;

	FUNC1(BackgroundWorkerLock, LW_EXCLUSIVE);

	/*
	 * If this is a parallel worker, check whether there are already too many
	 * parallel workers; if so, don't register another one.  Our view of
	 * parallel_terminate_count may be slightly stale, but that doesn't really
	 * matter: we would have gotten the same result if we'd arrived here
	 * slightly earlier anyway.  There's no help for it, either, since the
	 * postmaster must not take locks; a memory barrier wouldn't guarantee
	 * anything useful.
	 */
	if (parallel && (BackgroundWorkerData->parallel_register_count -
					 BackgroundWorkerData->parallel_terminate_count) >=
		max_parallel_workers)
	{
		FUNC0(BackgroundWorkerData->parallel_register_count -
			   BackgroundWorkerData->parallel_terminate_count <=
			   MAX_PARALLEL_WORKER_LIMIT);
		FUNC2(BackgroundWorkerLock);
		return false;
	}

	/*
	 * Look for an unused slot.  If we find one, grab it.
	 */
	for (slotno = 0; slotno < BackgroundWorkerData->total_slots; ++slotno)
	{
		BackgroundWorkerSlot *slot = &BackgroundWorkerData->slot[slotno];

		if (!slot->in_use)
		{
			FUNC5(&slot->worker, worker, sizeof(BackgroundWorker));
			slot->pid = InvalidPid; /* indicates not started yet */
			slot->generation++;
			slot->terminate = false;
			generation = slot->generation;
			if (parallel)
				BackgroundWorkerData->parallel_register_count++;

			/*
			 * Make sure postmaster doesn't see the slot as in use before it
			 * sees the new contents.
			 */
			FUNC7();

			slot->in_use = true;
			success = true;
			break;
		}
	}

	FUNC2(BackgroundWorkerLock);

	/* If we found a slot, tell the postmaster to notice the change. */
	if (success)
		FUNC4(PMSIGNAL_BACKGROUND_WORKER_CHANGE);

	/*
	 * If we found a slot and the user has provided a handle, initialize it.
	 */
	if (success && handle)
	{
		*handle = FUNC6(sizeof(BackgroundWorkerHandle));
		(*handle)->slot = slotno;
		(*handle)->generation = generation;
	}

	return success;
}