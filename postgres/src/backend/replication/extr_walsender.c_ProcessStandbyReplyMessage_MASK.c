#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int XLogRecPtr ;
struct TYPE_3__ {int write; int flush; int apply; int writeLag; int flushLag; int applyLag; int /*<<< orphan*/  mutex; void* replyTime; } ;
typedef  TYPE_1__ WalSnd ;
typedef  void* TimestampTz ;
typedef  int TimeOffset ;

/* Variables and functions */
 scalar_t__ DEBUG2 ; 
 void* FUNC0 () ; 
 int InvalidXLogRecPtr ; 
 int FUNC1 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ MyReplicationSlot ; 
 TYPE_1__* MyWalSnd ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SYNC_REP_WAIT_APPLY ; 
 int /*<<< orphan*/  SYNC_REP_WAIT_FLUSH ; 
 int /*<<< orphan*/  SYNC_REP_WAIT_WRITE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  am_cascading_walsender ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ log_min_messages ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 void* FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reply_message ; 
 int sentPtr ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 

__attribute__((used)) static void
FUNC15(void)
{
	XLogRecPtr	writePtr,
				flushPtr,
				applyPtr;
	bool		replyRequested;
	TimeOffset	writeLag,
				flushLag,
				applyLag;
	bool		clearLagTimes;
	TimestampTz now;
	TimestampTz replyTime;

	static bool fullyAppliedLastTime = false;

	/* the caller already consumed the msgtype byte */
	writePtr = FUNC12(&reply_message);
	flushPtr = FUNC12(&reply_message);
	applyPtr = FUNC12(&reply_message);
	replyTime = FUNC12(&reply_message);
	replyRequested = FUNC11(&reply_message);

	if (log_min_messages <= DEBUG2)
	{
		char	   *replyTimeStr;

		/* Copy because timestamptz_to_str returns a static buffer */
		replyTimeStr = FUNC13(FUNC14(replyTime));

		FUNC9(DEBUG2, "write %X/%X flush %X/%X apply %X/%X%s reply_time %s",
			 (uint32) (writePtr >> 32), (uint32) writePtr,
			 (uint32) (flushPtr >> 32), (uint32) flushPtr,
			 (uint32) (applyPtr >> 32), (uint32) applyPtr,
			 replyRequested ? " (reply requested)" : "",
			 replyTimeStr);

		FUNC10(replyTimeStr);
	}

	/* See if we can compute the round-trip lag for these positions. */
	now = FUNC0();
	writeLag = FUNC1(SYNC_REP_WAIT_WRITE, writePtr, now);
	flushLag = FUNC1(SYNC_REP_WAIT_FLUSH, flushPtr, now);
	applyLag = FUNC1(SYNC_REP_WAIT_APPLY, applyPtr, now);

	/*
	 * If the standby reports that it has fully replayed the WAL in two
	 * consecutive reply messages, then the second such message must result
	 * from wal_receiver_status_interval expiring on the standby.  This is a
	 * convenient time to forget the lag times measured when it last
	 * wrote/flushed/applied a WAL record, to avoid displaying stale lag data
	 * until more WAL traffic arrives.
	 */
	clearLagTimes = false;
	if (applyPtr == sentPtr)
	{
		if (fullyAppliedLastTime)
			clearLagTimes = true;
		fullyAppliedLastTime = true;
	}
	else
		fullyAppliedLastTime = false;

	/* Send a reply if the standby requested one. */
	if (replyRequested)
		FUNC8(false);

	/*
	 * Update shared state for this WalSender process based on reply data from
	 * standby.
	 */
	{
		WalSnd	   *walsnd = MyWalSnd;

		FUNC5(&walsnd->mutex);
		walsnd->write = writePtr;
		walsnd->flush = flushPtr;
		walsnd->apply = applyPtr;
		if (writeLag != -1 || clearLagTimes)
			walsnd->writeLag = writeLag;
		if (flushLag != -1 || clearLagTimes)
			walsnd->flushLag = flushLag;
		if (applyLag != -1 || clearLagTimes)
			walsnd->applyLag = applyLag;
		walsnd->replyTime = replyTime;
		FUNC6(&walsnd->mutex);
	}

	if (!am_cascading_walsender)
		FUNC7();

	/*
	 * Advance our local xmin horizon when the client confirmed a flush.
	 */
	if (MyReplicationSlot && flushPtr != InvalidXLogRecPtr)
	{
		if (FUNC4(MyReplicationSlot))
			FUNC2(flushPtr);
		else
			FUNC3(flushPtr);
	}
}