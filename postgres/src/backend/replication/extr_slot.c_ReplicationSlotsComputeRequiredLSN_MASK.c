#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_6__ {TYPE_2__* replication_slots; } ;
struct TYPE_4__ {scalar_t__ restart_lsn; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; TYPE_1__ data; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_3__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int max_replication_slots ; 

void
FUNC6(void)
{
	int			i;
	XLogRecPtr	min_required = InvalidXLogRecPtr;

	FUNC0(ReplicationSlotCtl != NULL);

	FUNC1(ReplicationSlotControlLock, LW_SHARED);
	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];
		XLogRecPtr	restart_lsn;

		if (!s->in_use)
			continue;

		FUNC3(&s->mutex);
		restart_lsn = s->data.restart_lsn;
		FUNC4(&s->mutex);

		if (restart_lsn != InvalidXLogRecPtr &&
			(min_required == InvalidXLogRecPtr ||
			 restart_lsn < min_required))
			min_required = restart_lsn;
	}
	FUNC2(ReplicationSlotControlLock);

	FUNC5(min_required);
}