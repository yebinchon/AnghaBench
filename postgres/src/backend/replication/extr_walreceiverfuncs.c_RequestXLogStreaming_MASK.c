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
typedef  int /*<<< orphan*/  pg_time_t ;
typedef  scalar_t__ XLogRecPtr ;
struct TYPE_3__ {scalar_t__ walRcvState; char* conninfo; char* slotname; scalar_t__ receiveStart; scalar_t__ receivedTLI; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * latch; scalar_t__ receiveStartTLI; scalar_t__ latestChunkStart; scalar_t__ receivedUpto; int /*<<< orphan*/  startTime; } ;
typedef  TYPE_1__ WalRcvData ;
typedef  scalar_t__ TimeLineID ;
typedef  int /*<<< orphan*/  Latch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAXCONNINFO ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  PMSIGNAL_START_WALRECEIVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ WALRCV_RESTARTING ; 
 scalar_t__ WALRCV_STARTING ; 
 scalar_t__ WALRCV_STOPPED ; 
 scalar_t__ WALRCV_WAITING ; 
 TYPE_1__* WalRcv ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wal_segment_size ; 

void
FUNC8(TimeLineID tli, XLogRecPtr recptr, const char *conninfo,
					 const char *slotname)
{
	WalRcvData *walrcv = WalRcv;
	bool		launch = false;
	pg_time_t	now = (pg_time_t) FUNC7(NULL);
	Latch	   *latch;

	/*
	 * We always start at the beginning of the segment. That prevents a broken
	 * segment (i.e., with no records in the first half of a segment) from
	 * being created by XLOG streaming, which might cause trouble later on if
	 * the segment is e.g archived.
	 */
	if (FUNC5(recptr, wal_segment_size) != 0)
		recptr -= FUNC5(recptr, wal_segment_size);

	FUNC3(&walrcv->mutex);

	/* It better be stopped if we try to restart it */
	FUNC0(walrcv->walRcvState == WALRCV_STOPPED ||
		   walrcv->walRcvState == WALRCV_WAITING);

	if (conninfo != NULL)
		FUNC6((char *) walrcv->conninfo, conninfo, MAXCONNINFO);
	else
		walrcv->conninfo[0] = '\0';

	if (slotname != NULL)
		FUNC6((char *) walrcv->slotname, slotname, NAMEDATALEN);
	else
		walrcv->slotname[0] = '\0';

	if (walrcv->walRcvState == WALRCV_STOPPED)
	{
		launch = true;
		walrcv->walRcvState = WALRCV_STARTING;
	}
	else
		walrcv->walRcvState = WALRCV_RESTARTING;
	walrcv->startTime = now;

	/*
	 * If this is the first startup of walreceiver (on this timeline),
	 * initialize receivedUpto and latestChunkStart to the starting point.
	 */
	if (walrcv->receiveStart == 0 || walrcv->receivedTLI != tli)
	{
		walrcv->receivedUpto = recptr;
		walrcv->receivedTLI = tli;
		walrcv->latestChunkStart = recptr;
	}
	walrcv->receiveStart = recptr;
	walrcv->receiveStartTLI = tli;

	latch = walrcv->latch;

	FUNC4(&walrcv->mutex);

	if (launch)
		FUNC1(PMSIGNAL_START_WALRECEIVER);
	else if (latch)
		FUNC2(latch);
}