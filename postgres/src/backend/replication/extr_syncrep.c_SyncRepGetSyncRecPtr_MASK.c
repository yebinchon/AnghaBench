#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_2__ {scalar_t__ num_sync; scalar_t__ syncrep_method; } ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYNC_REP_PRIORITY ; 
 TYPE_1__* SyncRepConfig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int*) ; 
 int /*<<< orphan*/  SyncRepLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC7(XLogRecPtr *writePtr, XLogRecPtr *flushPtr,
					 XLogRecPtr *applyPtr, bool *am_sync)
{
	List	   *sync_standbys;

	FUNC0(FUNC1(SyncRepLock));

	*writePtr = InvalidXLogRecPtr;
	*flushPtr = InvalidXLogRecPtr;
	*applyPtr = InvalidXLogRecPtr;
	*am_sync = false;

	/* Get standbys that are considered as synchronous at this moment */
	sync_standbys = FUNC4(am_sync);

	/*
	 * Quick exit if we are not managing a sync standby or there are not
	 * enough synchronous standbys.
	 */
	if (!(*am_sync) ||
		SyncRepConfig == NULL ||
		FUNC6(sync_standbys) < SyncRepConfig->num_sync)
	{
		FUNC5(sync_standbys);
		return false;
	}

	/*
	 * In a priority-based sync replication, the synced positions are the
	 * oldest ones among sync standbys. In a quorum-based, they are the Nth
	 * latest ones.
	 *
	 * SyncRepGetNthLatestSyncRecPtr() also can calculate the oldest
	 * positions. But we use SyncRepGetOldestSyncRecPtr() for that calculation
	 * because it's a bit more efficient.
	 *
	 * XXX If the numbers of current and requested sync standbys are the same,
	 * we can use SyncRepGetOldestSyncRecPtr() to calculate the synced
	 * positions even in a quorum-based sync replication.
	 */
	if (SyncRepConfig->syncrep_method == SYNC_REP_PRIORITY)
	{
		FUNC3(writePtr, flushPtr, applyPtr,
								   sync_standbys);
	}
	else
	{
		FUNC2(writePtr, flushPtr, applyPtr,
									  sync_standbys, SyncRepConfig->num_sync);
	}

	FUNC5(sync_standbys);
	return true;
}