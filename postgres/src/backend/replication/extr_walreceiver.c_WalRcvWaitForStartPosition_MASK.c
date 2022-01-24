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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  activitymsg ;
typedef  int XLogRecPtr ;
struct TYPE_3__ {int walRcvState; int receiveStart; int /*<<< orphan*/  latch; int /*<<< orphan*/  mutex; scalar_t__ receiveStartTLI; } ;
typedef  TYPE_1__ WalRcvData ;
typedef  scalar_t__ TimeLineID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FATAL ; 
 int InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_RECEIVER_WAIT_START ; 
 int WALRCV_RESTARTING ; 
 int WALRCV_STOPPING ; 
 int WALRCV_STREAMING ; 
 int WALRCV_WAITING ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* WalRcv ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int,int) ; 
 scalar_t__ update_process_title ; 

__attribute__((used)) static void
FUNC12(XLogRecPtr *startpoint, TimeLineID *startpointTLI)
{
	WalRcvData *walrcv = WalRcv;
	int			state;

	FUNC3(&walrcv->mutex);
	state = walrcv->walRcvState;
	if (state != WALRCV_STREAMING)
	{
		FUNC4(&walrcv->mutex);
		if (state == WALRCV_STOPPING)
			FUNC9(0);
		else
			FUNC7(FATAL, "unexpected walreceiver state");
	}
	walrcv->walRcvState = WALRCV_WAITING;
	walrcv->receiveStart = InvalidXLogRecPtr;
	walrcv->receiveStartTLI = 0;
	FUNC4(&walrcv->mutex);

	if (update_process_title)
		FUNC10("idle", false);

	/*
	 * nudge startup process to notice that we've stopped streaming and are
	 * now waiting for instructions.
	 */
	FUNC6();
	for (;;)
	{
		FUNC2(walrcv->latch);

		FUNC1();

		FUNC3(&walrcv->mutex);
		FUNC0(walrcv->walRcvState == WALRCV_RESTARTING ||
			   walrcv->walRcvState == WALRCV_WAITING ||
			   walrcv->walRcvState == WALRCV_STOPPING);
		if (walrcv->walRcvState == WALRCV_RESTARTING)
		{
			/* we don't expect primary_conninfo to change */
			*startpoint = walrcv->receiveStart;
			*startpointTLI = walrcv->receiveStartTLI;
			walrcv->walRcvState = WALRCV_STREAMING;
			FUNC4(&walrcv->mutex);
			break;
		}
		if (walrcv->walRcvState == WALRCV_STOPPING)
		{
			/*
			 * We should've received SIGTERM if the startup process wants us
			 * to die, but might as well check it here too.
			 */
			FUNC4(&walrcv->mutex);
			FUNC8(1);
		}
		FUNC4(&walrcv->mutex);

		(void) FUNC5(walrcv->latch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
						 WAIT_EVENT_WAL_RECEIVER_WAIT_START);
	}

	if (update_process_title)
	{
		char		activitymsg[50];

		FUNC11(activitymsg, sizeof(activitymsg), "restarting at %X/%X",
				 (uint32) (*startpoint >> 32),
				 (uint32) *startpoint);
		FUNC10(activitymsg, false);
	}
}