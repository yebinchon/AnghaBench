#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* slot; } ;
struct TYPE_6__ {size_t slot; scalar_t__ generation; } ;
struct TYPE_5__ {scalar_t__ generation; int terminate; } ;
typedef  TYPE_1__ BackgroundWorkerSlot ;
typedef  TYPE_2__ BackgroundWorkerHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* BackgroundWorkerData ; 
 int /*<<< orphan*/  BackgroundWorkerLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  PMSIGNAL_BACKGROUND_WORKER_CHANGE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t max_worker_processes ; 

void
FUNC4(BackgroundWorkerHandle *handle)
{
	BackgroundWorkerSlot *slot;
	bool		signal_postmaster = false;

	FUNC0(handle->slot < max_worker_processes);
	slot = &BackgroundWorkerData->slot[handle->slot];

	/* Set terminate flag in shared memory, unless slot has been reused. */
	FUNC1(BackgroundWorkerLock, LW_EXCLUSIVE);
	if (handle->generation == slot->generation)
	{
		slot->terminate = true;
		signal_postmaster = true;
	}
	FUNC2(BackgroundWorkerLock);

	/* Make sure the postmaster notices the change to shared memory. */
	if (signal_postmaster)
		FUNC3(PMSIGNAL_BACKGROUND_WORKER_CHANGE);
}