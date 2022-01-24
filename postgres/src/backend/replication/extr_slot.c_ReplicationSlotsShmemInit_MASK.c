#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  active_cv; int /*<<< orphan*/  io_in_progress_lock; int /*<<< orphan*/  mutex; } ;
struct TYPE_5__ {TYPE_2__* replication_slots; } ;
typedef  TYPE_1__ ReplicationSlotCtlData ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int max_replication_slots ; 

void
FUNC7(void)
{
	bool		found;

	if (max_replication_slots == 0)
		return;

	ReplicationSlotCtl = (ReplicationSlotCtlData *)
		FUNC5("ReplicationSlot Ctl", FUNC4(),
						&found);

	FUNC2(LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS,
						  "replication_slot_io");

	if (!found)
	{
		int			i;

		/* First time through, so initialize */
		FUNC3(ReplicationSlotCtl, 0, FUNC4());

		for (i = 0; i < max_replication_slots; i++)
		{
			ReplicationSlot *slot = &ReplicationSlotCtl->replication_slots[i];

			/* everything else is zeroed by the memset above */
			FUNC6(&slot->mutex);
			FUNC1(&slot->io_in_progress_lock, LWTRANCHE_REPLICATION_SLOT_IO_IN_PROGRESS);
			FUNC0(&slot->active_cv);
		}
	}
}