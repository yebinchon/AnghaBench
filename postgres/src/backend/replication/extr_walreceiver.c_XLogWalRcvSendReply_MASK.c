#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int XLogRecPtr ;
typedef  int TimestampTz ;
struct TYPE_7__ {int Write; int Flush; } ;
struct TYPE_6__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG2 ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__ LogstreamResult ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 TYPE_1__ reply_message ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int wal_receiver_status_interval ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wrconn ; 

__attribute__((used)) static void
FUNC8(bool force, bool requestReply)
{
	static XLogRecPtr writePtr = 0;
	static XLogRecPtr flushPtr = 0;
	XLogRecPtr	applyPtr;
	static TimestampTz sendTime = 0;
	TimestampTz now;

	/*
	 * If the user doesn't want status to be reported to the master, be sure
	 * to exit before doing anything at all.
	 */
	if (!force && wal_receiver_status_interval <= 0)
		return;

	/* Get current timestamp. */
	now = FUNC0();

	/*
	 * We can compare the write and flush positions to the last message we
	 * sent without taking any lock, but the apply position requires a spin
	 * lock, so we don't check that unless something else has changed or 10
	 * seconds have passed.  This means that the apply WAL location will
	 * appear, from the master's point of view, to lag slightly, but since
	 * this is only for reporting purposes and only on idle systems, that's
	 * probably OK.
	 */
	if (!force
		&& writePtr == LogstreamResult.Write
		&& flushPtr == LogstreamResult.Flush
		&& !FUNC2(sendTime, now,
									   wal_receiver_status_interval * 1000))
		return;
	sendTime = now;

	/* Construct a new message */
	writePtr = LogstreamResult.Write;
	flushPtr = LogstreamResult.Flush;
	applyPtr = FUNC1(NULL);

	FUNC6(&reply_message);
	FUNC4(&reply_message, 'r');
	FUNC5(&reply_message, writePtr);
	FUNC5(&reply_message, flushPtr);
	FUNC5(&reply_message, applyPtr);
	FUNC5(&reply_message, FUNC0());
	FUNC4(&reply_message, requestReply ? 1 : 0);

	/* Send it */
	FUNC3(DEBUG2, "sending write %X/%X flush %X/%X apply %X/%X%s",
		 (uint32) (writePtr >> 32), (uint32) writePtr,
		 (uint32) (flushPtr >> 32), (uint32) flushPtr,
		 (uint32) (applyPtr >> 32), (uint32) applyPtr,
		 requestReply ? " (reply requested)" : "");

	FUNC7(wrconn, reply_message.data, reply_message.len);
}