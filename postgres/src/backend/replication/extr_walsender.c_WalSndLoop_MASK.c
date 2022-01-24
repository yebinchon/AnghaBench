#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* WalSndSendDataCallback ) () ;
struct TYPE_4__ {int /*<<< orphan*/  sock; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ConfigReloadPending ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  MyLatch ; 
 TYPE_2__* MyProcPort ; 
 TYPE_1__* MyWalSnd ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_SENDER_MAIN ; 
 scalar_t__ WALSNDSTATE_CATCHUP ; 
 int /*<<< orphan*/  WALSNDSTATE_STREAMING ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int WalSndCaughtUp ; 
 int /*<<< orphan*/  FUNC7 () ; 
 long FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  application_name ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ got_SIGUSR2 ; 
 int /*<<< orphan*/  last_reply_timestamp ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 scalar_t__ streamingDoneReceiving ; 
 scalar_t__ streamingDoneSending ; 
 int waiting_for_ping_response ; 

__attribute__((used)) static void
FUNC17(WalSndSendDataCallback send_data)
{
	/*
	 * Initialize the last reply timestamp. That enables timeout processing
	 * from hereon.
	 */
	last_reply_timestamp = FUNC1();
	waiting_for_ping_response = false;

	/*
	 * Loop until we reach the end of this timeline or the client requests to
	 * stop streaming.
	 */
	for (;;)
	{
		/* Clear any already-pending wakeups */
		FUNC4(MyLatch);

		FUNC0();

		/* Process any requests or signals received recently */
		if (ConfigReloadPending)
		{
			ConfigReloadPending = false;
			FUNC2(PGC_SIGHUP);
			FUNC5();
		}

		/* Check for input from the client */
		FUNC3();

		/*
		 * If we have received CopyDone from the client, sent CopyDone
		 * ourselves, and the output buffer is empty, it's time to exit
		 * streaming.
		 */
		if (streamingDoneReceiving && streamingDoneSending &&
			!FUNC16())
			break;

		/*
		 * If we don't have any pending data in the output buffer, try to send
		 * some more.  If there is some, we don't bother to call send_data
		 * again until we've flushed it ... but we'd better assume we are not
		 * caught up.
		 */
		if (!FUNC16())
			send_data();
		else
			WalSndCaughtUp = false;

		/* Try to flush pending output to the client */
		if (FUNC15() != 0)
			FUNC12();

		/* If nothing remains to be sent right now ... */
		if (WalSndCaughtUp && !FUNC16())
		{
			/*
			 * If we're in catchup state, move to streaming.  This is an
			 * important state change for users to know about, since before
			 * this point data loss might occur if the primary dies and we
			 * need to failover to the standby. The state change is also
			 * important for synchronous replication, since commits that
			 * started to wait at that point might wait for some time.
			 */
			if (MyWalSnd->state == WALSNDSTATE_CATCHUP)
			{
				FUNC13(DEBUG1,
						(FUNC14("\"%s\" has now caught up with upstream server",
								application_name)));
				FUNC11(WALSNDSTATE_STREAMING);
			}

			/*
			 * When SIGUSR2 arrives, we send any outstanding logs up to the
			 * shutdown checkpoint record (i.e., the latest record), wait for
			 * them to be replicated to the standby, and exit. This may be a
			 * normal termination at shutdown, or a promotion, the walsender
			 * is not sure which.
			 */
			if (got_SIGUSR2)
				FUNC9(send_data);
		}

		/* Check for replication timeout. */
		FUNC7();

		/* Send keepalive if the time has come */
		FUNC10();

		/*
		 * We don't block if not caught up, unless there is unsent data
		 * pending in which case we'd better block until the socket is
		 * write-ready.  This test is only needed for the case where the
		 * send_data callback handled a subset of the available data but then
		 * pq_flush_if_writable flushed it all --- we should immediately try
		 * to send more.
		 */
		if ((WalSndCaughtUp && !streamingDoneSending) || FUNC16())
		{
			long		sleeptime;
			int			wakeEvents;

			wakeEvents = WL_LATCH_SET | WL_EXIT_ON_PM_DEATH | WL_TIMEOUT |
				WL_SOCKET_READABLE;

			/*
			 * Use fresh timestamp, not last_processing, to reduce the chance
			 * of reaching wal_sender_timeout before sending a keepalive.
			 */
			sleeptime = FUNC8(FUNC1());

			if (FUNC16())
				wakeEvents |= WL_SOCKET_WRITEABLE;

			/* Sleep until something happens or we time out */
			(void) FUNC6(MyLatch, wakeEvents,
									 MyProcPort->sock, sleeptime,
									 WAIT_EVENT_WAL_SENDER_MAIN);
		}
	}
	return;
}