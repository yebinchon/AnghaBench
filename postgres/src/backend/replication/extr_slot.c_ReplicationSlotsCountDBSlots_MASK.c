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
struct TYPE_5__ {scalar_t__ database; } ;
struct TYPE_6__ {scalar_t__ active_pid; int /*<<< orphan*/  mutex; TYPE_1__ data; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ ReplicationSlot ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_4__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int max_replication_slots ; 

bool
FUNC5(Oid dboid, int *nslots, int *nactive)
{
	int			i;

	*nslots = *nactive = 0;

	if (max_replication_slots <= 0)
		return false;

	FUNC0(ReplicationSlotControlLock, LW_SHARED);
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s;

		s = &ReplicationSlotCtl->replication_slots[i];

		/* cannot change while ReplicationSlotCtlLock is held */
		if (!s->in_use)
			continue;

		/* only logical slots are database specific, skip */
		if (!FUNC2(s))
			continue;

		/* not our database, skip */
		if (s->data.database != dboid)
			continue;

		/* count slots with spinlock held */
		FUNC3(&s->mutex);
		(*nslots)++;
		if (s->active_pid != 0)
			(*nactive)++;
		FUNC4(&s->mutex);
	}
	FUNC1(ReplicationSlotControlLock);

	if (*nslots > 0)
		return true;
	return false;
}