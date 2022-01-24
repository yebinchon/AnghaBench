#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_4__ {scalar_t__ restart_lsn; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; TYPE_1__ data; } ;
typedef  TYPE_2__ ReplicationSlot ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 TYPE_2__* MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(XLogRecPtr lsn)
{
	bool		changed = false;
	ReplicationSlot *slot = MyReplicationSlot;

	FUNC0(lsn != InvalidXLogRecPtr);
	FUNC3(&slot->mutex);
	if (slot->data.restart_lsn != lsn)
	{
		changed = true;
		slot->data.restart_lsn = lsn;
	}
	FUNC4(&slot->mutex);

	if (changed)
	{
		FUNC1();
		FUNC2();
	}

	/*
	 * One could argue that the slot should be saved to disk now, but that'd
	 * be energy wasted - the worst lost information can do here is give us
	 * wrong information in a statistics view - we'll just potentially be more
	 * conservative in removing files.
	 */
}