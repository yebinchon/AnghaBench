#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_4__ {TYPE_1__* replication_slots; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  effective_catalog_xmin; int /*<<< orphan*/  effective_xmin; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_1__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ReplicationSlotControlLock ; 
 TYPE_2__* ReplicationSlotCtl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int max_replication_slots ; 

void
FUNC8(bool already_locked)
{
	int			i;
	TransactionId agg_xmin = InvalidTransactionId;
	TransactionId agg_catalog_xmin = InvalidTransactionId;

	FUNC0(ReplicationSlotCtl != NULL);

	FUNC1(ReplicationSlotControlLock, LW_SHARED);

	for (i = 0; i < max_replication_slots; i++)
	{
		ReplicationSlot *s = &ReplicationSlotCtl->replication_slots[i];
		TransactionId effective_xmin;
		TransactionId effective_catalog_xmin;

		if (!s->in_use)
			continue;

		FUNC4(&s->mutex);
		effective_xmin = s->effective_xmin;
		effective_catalog_xmin = s->effective_catalog_xmin;
		FUNC5(&s->mutex);

		/* check the data xmin */
		if (FUNC6(effective_xmin) &&
			(!FUNC6(agg_xmin) ||
			 FUNC7(effective_xmin, agg_xmin)))
			agg_xmin = effective_xmin;

		/* check the catalog xmin */
		if (FUNC6(effective_catalog_xmin) &&
			(!FUNC6(agg_catalog_xmin) ||
			 FUNC7(effective_catalog_xmin, agg_catalog_xmin)))
			agg_catalog_xmin = effective_catalog_xmin;
	}

	FUNC2(ReplicationSlotControlLock);

	FUNC3(agg_xmin, agg_catalog_xmin, already_locked);
}