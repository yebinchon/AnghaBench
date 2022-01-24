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
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lastMsgReceiptTime; int /*<<< orphan*/  lastMsgSendTime; } ;
typedef  TYPE_1__ WalRcvData ;
typedef  int /*<<< orphan*/  TimestampTz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,long*,int*) ; 
 TYPE_1__* WalRcv ; 

int
FUNC3(void)
{
	WalRcvData *walrcv = WalRcv;

	TimestampTz lastMsgSendTime;
	TimestampTz lastMsgReceiptTime;

	long		secs = 0;
	int			usecs = 0;
	int			ms;

	FUNC0(&walrcv->mutex);
	lastMsgSendTime = walrcv->lastMsgSendTime;
	lastMsgReceiptTime = walrcv->lastMsgReceiptTime;
	FUNC1(&walrcv->mutex);

	FUNC2(lastMsgSendTime,
						lastMsgReceiptTime,
						&secs, &usecs);

	ms = ((int) secs * 1000) + (usecs / 1000);

	return ms;
}