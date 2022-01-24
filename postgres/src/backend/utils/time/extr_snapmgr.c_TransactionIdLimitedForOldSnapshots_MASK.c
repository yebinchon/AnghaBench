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
typedef  scalar_t__ TimestampTz ;
struct TYPE_4__ {int /*<<< orphan*/  xmin; } ;
struct TYPE_3__ {scalar_t__ next_map_update; scalar_t__ threshold_timestamp; int count_used; scalar_t__ head_timestamp; int head_offset; int /*<<< orphan*/ * xid_by_minute; int /*<<< orphan*/  mutex_threshold; int /*<<< orphan*/  threshold_xid; int /*<<< orphan*/  mutex_latest_xmin; int /*<<< orphan*/  latest_xmin; } ;
typedef  int /*<<< orphan*/  Relation ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 TYPE_2__* MyPgXact ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OLD_SNAPSHOT_TIME_MAP_ENTRIES ; 
 int /*<<< orphan*/  OldSnapshotTimeMapLock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ USECS_PER_MINUTE ; 
 int USECS_PER_SEC ; 
 TYPE_1__* oldSnapshotControl ; 
 scalar_t__ old_snapshot_threshold ; 

TransactionId
FUNC12(TransactionId recentXmin,
									Relation relation)
{
	if (FUNC10(recentXmin)
		&& old_snapshot_threshold >= 0
		&& FUNC5(relation))
	{
		TimestampTz ts = FUNC1();
		TransactionId xlimit = recentXmin;
		TransactionId latest_xmin;
		TimestampTz update_ts;
		bool		same_ts_as_threshold = false;

		FUNC7(&oldSnapshotControl->mutex_latest_xmin);
		latest_xmin = oldSnapshotControl->latest_xmin;
		update_ts = oldSnapshotControl->next_map_update;
		FUNC8(&oldSnapshotControl->mutex_latest_xmin);

		/*
		 * Zero threshold always overrides to latest xmin, if valid.  Without
		 * some heuristic it will find its own snapshot too old on, for
		 * example, a simple UPDATE -- which would make it useless for most
		 * testing, but there is no principled way to ensure that it doesn't
		 * fail in this way.  Use a five-second delay to try to get useful
		 * testing behavior, but this may need adjustment.
		 */
		if (old_snapshot_threshold == 0)
		{
			if (FUNC11(latest_xmin, MyPgXact->xmin)
				&& FUNC9(latest_xmin, xlimit))
				xlimit = latest_xmin;

			ts -= 5 * USECS_PER_SEC;
			FUNC6(ts, xlimit);

			return xlimit;
		}

		ts = FUNC0(ts)
			- (old_snapshot_threshold * USECS_PER_MINUTE);

		/* Check for fast exit without LW locking. */
		FUNC7(&oldSnapshotControl->mutex_threshold);
		if (ts == oldSnapshotControl->threshold_timestamp)
		{
			xlimit = oldSnapshotControl->threshold_xid;
			same_ts_as_threshold = true;
		}
		FUNC8(&oldSnapshotControl->mutex_threshold);

		if (!same_ts_as_threshold)
		{
			if (ts == update_ts)
			{
				xlimit = latest_xmin;
				if (FUNC4(xlimit, recentXmin))
					FUNC6(ts, xlimit);
			}
			else
			{
				FUNC2(OldSnapshotTimeMapLock, LW_SHARED);

				if (oldSnapshotControl->count_used > 0
					&& ts >= oldSnapshotControl->head_timestamp)
				{
					int			offset;

					offset = ((ts - oldSnapshotControl->head_timestamp)
							  / USECS_PER_MINUTE);
					if (offset > oldSnapshotControl->count_used - 1)
						offset = oldSnapshotControl->count_used - 1;
					offset = (oldSnapshotControl->head_offset + offset)
						% OLD_SNAPSHOT_TIME_MAP_ENTRIES;
					xlimit = oldSnapshotControl->xid_by_minute[offset];

					if (FUNC4(xlimit, recentXmin))
						FUNC6(ts, xlimit);
				}

				FUNC3(OldSnapshotTimeMapLock);
			}
		}

		/*
		 * Failsafe protection against vacuuming work of active transaction.
		 *
		 * This is not an assertion because we avoid the spinlock for
		 * performance, leaving open the possibility that xlimit could advance
		 * and be more current; but it seems prudent to apply this limit.  It
		 * might make pruning a tiny bit less aggressive than it could be, but
		 * protects against data loss bugs.
		 */
		if (FUNC10(latest_xmin)
			&& FUNC11(latest_xmin, xlimit))
			xlimit = latest_xmin;

		if (FUNC4(xlimit, recentXmin))
			return xlimit;
	}

	return recentXmin;
}