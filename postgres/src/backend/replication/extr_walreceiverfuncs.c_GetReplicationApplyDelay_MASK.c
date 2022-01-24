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
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ receivedUpto; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ WalRcvData ;
typedef  scalar_t__ TimestampTz ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,long*,int*) ; 
 TYPE_1__* WalRcv ; 

int
FUNC6(void)
{
	WalRcvData *walrcv = WalRcv;
	XLogRecPtr	receivePtr;
	XLogRecPtr	replayPtr;

	long		secs;
	int			usecs;

	TimestampTz chunkReplayStartTime;

	FUNC3(&walrcv->mutex);
	receivePtr = walrcv->receivedUpto;
	FUNC4(&walrcv->mutex);

	replayPtr = FUNC2(NULL);

	if (receivePtr == replayPtr)
		return 0;

	chunkReplayStartTime = FUNC0();

	if (chunkReplayStartTime == 0)
		return -1;

	FUNC5(chunkReplayStartTime,
						FUNC1(),
						&secs, &usecs);

	return (((int) secs * 1000) + (usecs / 1000));
}