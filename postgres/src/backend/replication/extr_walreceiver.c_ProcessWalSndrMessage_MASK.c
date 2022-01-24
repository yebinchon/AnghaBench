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
struct TYPE_3__ {scalar_t__ latestWalEnd; int /*<<< orphan*/  mutex; void* lastMsgReceiptTime; void* lastMsgSendTime; void* latestWalEndTime; } ;
typedef  TYPE_1__ WalRcvData ;
typedef  void* TimestampTz ;

/* Variables and functions */
 scalar_t__ DEBUG2 ; 
 void* FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* WalRcv ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,char*,char*,int,...) ; 
 scalar_t__ log_min_messages ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static void
FUNC9(XLogRecPtr walEnd, TimestampTz sendTime)
{
	WalRcvData *walrcv = WalRcv;

	TimestampTz lastMsgReceiptTime = FUNC0();

	/* Update shared-memory status */
	FUNC3(&walrcv->mutex);
	if (walrcv->latestWalEnd < walEnd)
		walrcv->latestWalEndTime = sendTime;
	walrcv->latestWalEnd = walEnd;
	walrcv->lastMsgSendTime = sendTime;
	walrcv->lastMsgReceiptTime = lastMsgReceiptTime;
	FUNC4(&walrcv->mutex);

	if (log_min_messages <= DEBUG2)
	{
		char	   *sendtime;
		char	   *receipttime;
		int			applyDelay;

		/* Copy because timestamptz_to_str returns a static buffer */
		sendtime = FUNC7(FUNC8(sendTime));
		receipttime = FUNC7(FUNC8(lastMsgReceiptTime));
		applyDelay = FUNC1();

		/* apply delay is not available */
		if (applyDelay == -1)
			FUNC5(DEBUG2, "sendtime %s receipttime %s replication apply delay (N/A) transfer latency %d ms",
				 sendtime,
				 receipttime,
				 FUNC2());
		else
			FUNC5(DEBUG2, "sendtime %s receipttime %s replication apply delay %d ms transfer latency %d ms",
				 sendtime,
				 receipttime,
				 applyDelay,
				 FUNC2());

		FUNC6(sendtime);
		FUNC6(receipttime);
	}
}