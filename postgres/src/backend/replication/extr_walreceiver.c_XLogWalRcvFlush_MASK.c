#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  activitymsg ;
struct TYPE_4__ {scalar_t__ receivedUpto; scalar_t__ latestChunkStart; int /*<<< orphan*/  mutex; int /*<<< orphan*/  receivedTLI; } ;
typedef  TYPE_1__ WalRcvData ;
struct TYPE_5__ {scalar_t__ Flush; scalar_t__ Write; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_3__ LogstreamResult ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* WalRcv ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recvFile ; 
 int /*<<< orphan*/  recvSegNo ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,int) ; 
 scalar_t__ update_process_title ; 

__attribute__((used)) static void
FUNC10(bool dying)
{
	if (LogstreamResult.Flush < LogstreamResult.Write)
	{
		WalRcvData *walrcv = WalRcv;

		FUNC7(recvFile, recvSegNo);

		LogstreamResult.Flush = LogstreamResult.Write;

		/* Update shared-memory status */
		FUNC1(&walrcv->mutex);
		if (walrcv->receivedUpto < LogstreamResult.Flush)
		{
			walrcv->latestChunkStart = walrcv->receivedUpto;
			walrcv->receivedUpto = LogstreamResult.Flush;
			walrcv->receivedTLI = ThisTimeLineID;
		}
		FUNC2(&walrcv->mutex);

		/* Signal the startup process and walsender that new WAL has arrived */
		FUNC3();
		if (FUNC0())
			FUNC4();

		/* Report XLOG streaming progress in PS display */
		if (update_process_title)
		{
			char		activitymsg[50];

			FUNC9(activitymsg, sizeof(activitymsg), "streaming %X/%X",
					 (uint32) (LogstreamResult.Write >> 32),
					 (uint32) LogstreamResult.Write);
			FUNC8(activitymsg, false);
		}

		/* Also let the master know that we made some progress */
		if (!dying)
		{
			FUNC6(false, false);
			FUNC5(false);
		}
	}
}