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
struct TYPE_7__ {int /*<<< orphan*/  vacuumFlags; } ;
struct TYPE_5__ {scalar_t__ persistency; int /*<<< orphan*/  xmin; } ;
struct TYPE_6__ {scalar_t__ active_pid; int /*<<< orphan*/  active_cv; int /*<<< orphan*/  mutex; TYPE_1__ data; int /*<<< orphan*/  effective_xmin; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_4__* MyPgXact ; 
 TYPE_2__* MyReplicationSlot ; 
 int /*<<< orphan*/  PROC_IN_LOGICAL_DECODING ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 scalar_t__ RS_EPHEMERAL ; 
 scalar_t__ RS_PERSISTENT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
	ReplicationSlot *slot = MyReplicationSlot;

	FUNC0(slot != NULL && slot->active_pid != 0);

	if (slot->data.persistency == RS_EPHEMERAL)
	{
		/*
		 * Delete the slot. There is no !PANIC case where this is allowed to
		 * fail, all that may happen is an incomplete cleanup of the on-disk
		 * data.
		 */
		FUNC4();
	}

	/*
	 * If slot needed to temporarily restrain both data and catalog xmin to
	 * create the catalog snapshot, remove that temporary constraint.
	 * Snapshots can only be exported while the initial snapshot is still
	 * acquired.
	 */
	if (!FUNC8(slot->data.xmin) &&
		FUNC8(slot->effective_xmin))
	{
		FUNC6(&slot->mutex);
		slot->effective_xmin = InvalidTransactionId;
		FUNC7(&slot->mutex);
		FUNC5(false);
	}

	if (slot->data.persistency == RS_PERSISTENT)
	{
		/*
		 * Mark persistent slot inactive.  We're not freeing it, just
		 * disconnecting, but wake up others that may be waiting for it.
		 */
		FUNC6(&slot->mutex);
		slot->active_pid = 0;
		FUNC7(&slot->mutex);
		FUNC1(&slot->active_cv);
	}

	MyReplicationSlot = NULL;

	/* might not have been set when we've been a plain slot */
	FUNC2(ProcArrayLock, LW_EXCLUSIVE);
	MyPgXact->vacuumFlags &= ~PROC_IN_LOGICAL_DECODING;
	FUNC3(ProcArrayLock);
}