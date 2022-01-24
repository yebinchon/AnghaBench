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
struct TYPE_7__ {TYPE_2__* replication_slots; } ;
struct TYPE_5__ {scalar_t__ persistency; } ;
struct TYPE_6__ {scalar_t__ active_pid; int /*<<< orphan*/  mutex; int /*<<< orphan*/  active_cv; TYPE_1__ data; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/ * MyReplicationSlot ; 
 scalar_t__ RS_TEMPORARY ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_4__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int max_replication_slots ; 

void
FUNC7(void)
{
	int			i;

	FUNC0(MyReplicationSlot == NULL);

restart:
	FUNC2(ReplicationSlotControlLock, LW_SHARED);
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];

		if (!s->in_use)
			continue;

		FUNC5(&s->mutex);
		if (s->active_pid == MyProcPid)
		{
			FUNC0(s->data.persistency == RS_TEMPORARY);
			FUNC6(&s->mutex);
			FUNC3(ReplicationSlotControlLock);	/* avoid deadlock */

			FUNC4(s);

			FUNC1(&s->active_cv);
			goto restart;
		}
		else
			FUNC6(&s->mutex);
	}

	FUNC3(ReplicationSlotControlLock);
}