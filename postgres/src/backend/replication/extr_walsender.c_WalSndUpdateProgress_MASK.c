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
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
typedef  int /*<<< orphan*/  LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WALSND_LOGICAL_LAG_TRACK_INTERVAL_MS ; 

__attribute__((used)) static void
FUNC3(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid)
{
	static TimestampTz sendTime = 0;
	TimestampTz now = FUNC0();

	/*
	 * Track lag no more than once per WALSND_LOGICAL_LAG_TRACK_INTERVAL_MS to
	 * avoid flooding the lag tracker when we commit frequently.
	 */
#define WALSND_LOGICAL_LAG_TRACK_INTERVAL_MS	1000
	if (!FUNC2(sendTime, now,
									WALSND_LOGICAL_LAG_TRACK_INTERVAL_MS))
		return;

	FUNC1(lsn, now);
	sendTime = now;
}