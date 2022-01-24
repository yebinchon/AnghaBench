#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  scalar_t__ TimestampTz ;
struct TYPE_11__ {int /*<<< orphan*/  sock; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__* out; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ConfigReloadPending ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  MyLatch ; 
 TYPE_7__* MyProcPort ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_SENDER_WRITE_DATA ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_SOCKET_READABLE ; 
 int WL_SOCKET_WRITEABLE ; 
 int WL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 long FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  last_reply_timestamp ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 TYPE_3__ tmpbuf ; 
 int wal_sender_timeout ; 

__attribute__((used)) static void
FUNC19(LogicalDecodingContext *ctx, XLogRecPtr lsn, TransactionId xid,
				bool last_write)
{
	TimestampTz now;

	/*
	 * Fill the send timestamp last, so that it is taken as late as possible.
	 * This is somewhat ugly, but the protocol is set as it's already used for
	 * several releases by streaming physical replication.
	 */
	FUNC18(&tmpbuf);
	now = FUNC1();
	FUNC17(&tmpbuf, now);
	FUNC13(&ctx->out->data[1 + sizeof(int64) + sizeof(int64)],
		   tmpbuf.data, sizeof(int64));

	/* output previously gathered data in a CopyData packet */
	FUNC16('d', ctx->out->data, ctx->out->len);

	FUNC0();

	/* Try to flush pending output to the client */
	if (FUNC14() != 0)
		FUNC12();

	/* Try taking fast path unless we get too close to walsender timeout. */
	if (now < FUNC7(last_reply_timestamp,
										  wal_sender_timeout / 2) &&
		!FUNC15())
	{
		return;
	}

	/* If we have pending write here, go to slow path */
	for (;;)
	{
		int			wakeEvents;
		long		sleeptime;

		/* Check for input from the client */
		FUNC3();

		/* die if timeout was reached */
		FUNC9();

		/* Send keepalive if the time has come */
		FUNC11();

		if (!FUNC15())
			break;

		sleeptime = FUNC10(FUNC1());

		wakeEvents = WL_LATCH_SET | WL_EXIT_ON_PM_DEATH |
			WL_SOCKET_WRITEABLE | WL_SOCKET_READABLE | WL_TIMEOUT;

		/* Sleep until something happens or we time out */
		(void) FUNC8(MyLatch, wakeEvents,
								 MyProcPort->sock, sleeptime,
								 WAIT_EVENT_WAL_SENDER_WRITE_DATA);

		/* Clear any already-pending wakeups */
		FUNC4(MyLatch);

		FUNC0();

		/* Process any requests or signals received recently */
		if (ConfigReloadPending)
		{
			ConfigReloadPending = false;
			FUNC2(PGC_SIGHUP);
			FUNC6();
		}

		/* Try to flush pending output to the client */
		if (FUNC14() != 0)
			FUNC12();
	}

	/* reactivate latch so WalSndLoop knows to continue */
	FUNC5(MyLatch);
}