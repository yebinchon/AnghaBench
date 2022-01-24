#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WALSegmentContext ;
typedef  int /*<<< orphan*/  WALOpenSegment ;
typedef  int /*<<< orphan*/  LagTracker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PMSIGNAL_ADVANCE_STATE_MACHINE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  am_cascading_walsender ; 
 int /*<<< orphan*/  lag_tracker ; 
 int /*<<< orphan*/ * sendCxt ; 
 int /*<<< orphan*/ * sendSeg ; 
 int /*<<< orphan*/  wal_segment_size ; 

void
FUNC7(void)
{
	am_cascading_walsender = FUNC4();

	/* Create a per-walsender data structure in shared memory */
	FUNC0();

	/*
	 * We don't currently need any ResourceOwner in a walsender process, but
	 * if we did, we could call CreateAuxProcessResourceOwner here.
	 */

	/*
	 * Let postmaster know that we're a WAL sender. Once we've declared us as
	 * a WAL sender process, postmaster will let us outlive the bgwriter and
	 * kill us last in the shutdown sequence, so we get a chance to stream all
	 * remaining WAL at shutdown, including the shutdown checkpoint. Note that
	 * there's no going back, and we mustn't write any WAL records after this.
	 */
	FUNC1();
	FUNC5(PMSIGNAL_ADVANCE_STATE_MACHINE);

	/* Initialize empty timestamp buffer for lag tracking. */
	lag_tracker = FUNC3(TopMemoryContext, sizeof(LagTracker));

	/* Make sure we can remember the current read position in XLOG. */
	sendSeg = (WALOpenSegment *)
		FUNC2(TopMemoryContext, sizeof(WALOpenSegment));
	sendCxt = (WALSegmentContext *)
		FUNC2(TopMemoryContext, sizeof(WALSegmentContext));
	FUNC6(sendSeg, sendCxt, wal_segment_size, NULL);
}