#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* replication_slots; } ;
struct TYPE_6__ {scalar_t__ database; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int active_pid; int /*<<< orphan*/  mutex; TYPE_1__ data; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ ReplicationSlot ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int MyProcPid ; 
 TYPE_2__* MyReplicationSlot ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_4__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int max_replication_slots ; 

void
FUNC10(Oid dboid)
{
	int			i;

	if (max_replication_slots <= 0)
		return;

restart:
	FUNC0(ReplicationSlotControlLock, LW_SHARED);
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s;
		char	   *slotname;
		int			active_pid;

		s = &ReplicationSlotCtl->replication_slots[i];

		/* cannot change while ReplicationSlotCtlLock is held */
		if (!s->in_use)
			continue;

		/* only logical slots are database specific, skip */
		if (!FUNC4(s))
			continue;

		/* not our database, skip */
		if (s->data.database != dboid)
			continue;

		/* acquire slot, so ReplicationSlotDropAcquired can be reused  */
		FUNC5(&s->mutex);
		/* can't change while ReplicationSlotControlLock is held */
		slotname = FUNC2(s->data.name);
		active_pid = s->active_pid;
		if (active_pid == 0)
		{
			MyReplicationSlot = s;
			s->active_pid = MyProcPid;
		}
		FUNC6(&s->mutex);

		/*
		 * Even though we hold an exclusive lock on the database object a
		 * logical slot for that DB can still be active, e.g. if it's
		 * concurrently being dropped by a backend connected to another DB.
		 *
		 * That's fairly unlikely in practice, so we'll just bail out.
		 */
		if (active_pid)
			FUNC7(ERROR,
					(FUNC8(ERRCODE_OBJECT_IN_USE),
					 FUNC9("replication slot \"%s\" is active for PID %d",
							slotname, active_pid)));

		/*
		 * To avoid duplicating ReplicationSlotDropAcquired() and to avoid
		 * holding ReplicationSlotControlLock over filesystem operations,
		 * release ReplicationSlotControlLock and use
		 * ReplicationSlotDropAcquired.
		 *
		 * As that means the set of slots could change, restart scan from the
		 * beginning each time we release the lock.
		 */
		FUNC1(ReplicationSlotControlLock);
		FUNC3();
		goto restart;
	}
	FUNC1(ReplicationSlotControlLock);
}