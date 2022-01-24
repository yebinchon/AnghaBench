#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int active_pid; int /*<<< orphan*/  active_cv; int /*<<< orphan*/  mutex; TYPE_1__ data; scalar_t__ in_use; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int MyProcPid ; 
 TYPE_2__* MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_3__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_REPLICATION_SLOT_DROP ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,...) ; 
 int max_replication_slots ; 
 scalar_t__ FUNC13 (char const*,int /*<<< orphan*/ ) ; 

void
FUNC14(const char *name, bool nowait)
{
	ReplicationSlot *slot;
	int			active_pid;
	int			i;

retry:
	FUNC0(MyReplicationSlot == NULL);

	/*
	 * Search for the named slot and mark it active if we find it.  If the
	 * slot is already active, we exit the loop with active_pid set to the PID
	 * of the backend that owns it.
	 */
	active_pid = 0;
	slot = NULL;
	FUNC5(ReplicationSlotControlLock, LW_SHARED);
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];

		if (s->in_use && FUNC13(name, FUNC7(s->data.name)) == 0)
		{
			/*
			 * This is the slot we want; check if it's active under some other
			 * process.  In single user mode, we don't need this check.
			 */
			if (IsUnderPostmaster)
			{
				/*
				 * Get ready to sleep on it in case it is active.  (We may end
				 * up not sleeping, but we don't want to do this while holding
				 * the spinlock.)
				 */
				FUNC3(&s->active_cv);

				FUNC8(&s->mutex);

				active_pid = s->active_pid;
				if (active_pid == 0)
					active_pid = s->active_pid = MyProcPid;

				FUNC9(&s->mutex);
			}
			else
				active_pid = MyProcPid;
			slot = s;

			break;
		}
	}
	FUNC6(ReplicationSlotControlLock);

	/* If we did not find the slot, error out. */
	if (slot == NULL)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_UNDEFINED_OBJECT),
				 FUNC12("replication slot \"%s\" does not exist", name)));

	/*
	 * If we found the slot but it's already active in another backend, we
	 * either error out or retry after a short wait, as caller specified.
	 */
	if (active_pid != MyProcPid)
	{
		if (nowait)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_OBJECT_IN_USE),
					 FUNC12("replication slot \"%s\" is active for PID %d",
							name, active_pid)));

		/* Wait here until we get signaled, and then restart */
		FUNC4(&slot->active_cv,
							   WAIT_EVENT_REPLICATION_SLOT_DROP);
		FUNC2();
		goto retry;
	}
	else
		FUNC2(); /* no sleep needed after all */

	/* Let everybody know we've modified this slot */
	FUNC1(&slot->active_cv);

	/* We made this slot active, so it's ours now. */
	MyReplicationSlot = slot;
}