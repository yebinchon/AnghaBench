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
typedef  void* TransactionId ;
typedef  scalar_t__ TimestampTz ;
struct TYPE_2__ {scalar_t__ next_map_update; scalar_t__ head_offset; int head_timestamp; scalar_t__ count_used; void** xid_by_minute; int /*<<< orphan*/  mutex_latest_xmin; void* latest_xmin; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ OLD_SNAPSHOT_TIME_MAP_ENTRIES ; 
 int /*<<< orphan*/  OldSnapshotTimeMapLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*,void*) ; 
 int USECS_PER_MINUTE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,long) ; 
 TYPE_1__* oldSnapshotControl ; 
 scalar_t__ old_snapshot_threshold ; 

void
FUNC10(TimestampTz whenTaken, TransactionId xmin)
{
	TimestampTz ts;
	TransactionId latest_xmin;
	TimestampTz update_ts;
	bool		map_update_required = false;

	/* Never call this function when old snapshot checking is disabled. */
	FUNC1(old_snapshot_threshold >= 0);

	ts = FUNC0(whenTaken);

	/*
	 * Keep track of the latest xmin seen by any process. Update mapping with
	 * a new value when we have crossed a bucket boundary.
	 */
	FUNC4(&oldSnapshotControl->mutex_latest_xmin);
	latest_xmin = oldSnapshotControl->latest_xmin;
	update_ts = oldSnapshotControl->next_map_update;
	if (ts > update_ts)
	{
		oldSnapshotControl->next_map_update = ts;
		map_update_required = true;
	}
	if (FUNC6(xmin, latest_xmin))
		oldSnapshotControl->latest_xmin = xmin;
	FUNC5(&oldSnapshotControl->mutex_latest_xmin);

	/* We only needed to update the most recent xmin value. */
	if (!map_update_required)
		return;

	/* No further tracking needed for 0 (used for testing). */
	if (old_snapshot_threshold == 0)
		return;

	/*
	 * We don't want to do something stupid with unusual values, but we don't
	 * want to litter the log with warnings or break otherwise normal
	 * processing for this feature; so if something seems unreasonable, just
	 * log at DEBUG level and return without doing anything.
	 */
	if (whenTaken < 0)
	{
		FUNC9(DEBUG1,
			 "MaintainOldSnapshotTimeMapping called with negative whenTaken = %ld",
			 (long) whenTaken);
		return;
	}
	if (!FUNC7(xmin))
	{
		FUNC9(DEBUG1,
			 "MaintainOldSnapshotTimeMapping called with xmin = %lu",
			 (unsigned long) xmin);
		return;
	}

	FUNC2(OldSnapshotTimeMapLock, LW_EXCLUSIVE);

	FUNC1(oldSnapshotControl->head_offset >= 0);
	FUNC1(oldSnapshotControl->head_offset < OLD_SNAPSHOT_TIME_MAP_ENTRIES);
	FUNC1((oldSnapshotControl->head_timestamp % USECS_PER_MINUTE) == 0);
	FUNC1(oldSnapshotControl->count_used >= 0);
	FUNC1(oldSnapshotControl->count_used <= OLD_SNAPSHOT_TIME_MAP_ENTRIES);

	if (oldSnapshotControl->count_used == 0)
	{
		/* set up first entry for empty mapping */
		oldSnapshotControl->head_offset = 0;
		oldSnapshotControl->head_timestamp = ts;
		oldSnapshotControl->count_used = 1;
		oldSnapshotControl->xid_by_minute[0] = xmin;
	}
	else if (ts < oldSnapshotControl->head_timestamp)
	{
		/* old ts; log it at DEBUG */
		FUNC3(OldSnapshotTimeMapLock);
		FUNC9(DEBUG1,
			 "MaintainOldSnapshotTimeMapping called with old whenTaken = %ld",
			 (long) whenTaken);
		return;
	}
	else if (ts <= (oldSnapshotControl->head_timestamp +
					((oldSnapshotControl->count_used - 1)
					 * USECS_PER_MINUTE)))
	{
		/* existing mapping; advance xid if possible */
		int			bucket = (oldSnapshotControl->head_offset
							  + ((ts - oldSnapshotControl->head_timestamp)
								 / USECS_PER_MINUTE))
		% OLD_SNAPSHOT_TIME_MAP_ENTRIES;

		if (FUNC8(oldSnapshotControl->xid_by_minute[bucket], xmin))
			oldSnapshotControl->xid_by_minute[bucket] = xmin;
	}
	else
	{
		/* We need a new bucket, but it might not be the very next one. */
		int			advance = ((ts - oldSnapshotControl->head_timestamp)
							   / USECS_PER_MINUTE);

		oldSnapshotControl->head_timestamp = ts;

		if (advance >= OLD_SNAPSHOT_TIME_MAP_ENTRIES)
		{
			/* Advance is so far that all old data is junk; start over. */
			oldSnapshotControl->head_offset = 0;
			oldSnapshotControl->count_used = 1;
			oldSnapshotControl->xid_by_minute[0] = xmin;
		}
		else
		{
			/* Store the new value in one or more buckets. */
			int			i;

			for (i = 0; i < advance; i++)
			{
				if (oldSnapshotControl->count_used == OLD_SNAPSHOT_TIME_MAP_ENTRIES)
				{
					/* Map full and new value replaces old head. */
					int			old_head = oldSnapshotControl->head_offset;

					if (old_head == (OLD_SNAPSHOT_TIME_MAP_ENTRIES - 1))
						oldSnapshotControl->head_offset = 0;
					else
						oldSnapshotControl->head_offset = old_head + 1;
					oldSnapshotControl->xid_by_minute[old_head] = xmin;
				}
				else
				{
					/* Extend map to unused entry. */
					int			new_tail = (oldSnapshotControl->head_offset
											+ oldSnapshotControl->count_used)
					% OLD_SNAPSHOT_TIME_MAP_ENTRIES;

					oldSnapshotControl->count_used++;
					oldSnapshotControl->xid_by_minute[new_tail] = xmin;
				}
			}
		}
	}

	FUNC3(OldSnapshotTimeMapLock);
}