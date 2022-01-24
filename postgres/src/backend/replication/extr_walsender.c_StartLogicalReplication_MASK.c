#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  restart_lsn; int /*<<< orphan*/  confirmed_flush; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  sentPtr; } ;
struct TYPE_7__ {int /*<<< orphan*/  options; int /*<<< orphan*/  startpoint; int /*<<< orphan*/  slotname; } ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  TYPE_2__ StartReplicationCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DestRemote ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_5__* MyReplicationSlot ; 
 TYPE_4__* MyWalSnd ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  WALSNDSTATE_CATCHUP ; 
 int /*<<< orphan*/  WALSNDSTATE_STARTUP ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WalSndPrepareWrite ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WalSndUpdateProgress ; 
 int /*<<< orphan*/  WalSndWriteData ; 
 int /*<<< orphan*/  XLogSendLogical ; 
 scalar_t__ am_cascading_walsender ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int got_STOPPING ; 
 int /*<<< orphan*/  logical_decoding_ctx ; 
 int /*<<< orphan*/  logical_read_xlog_page ; 
 int /*<<< orphan*/  logical_startptr ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int replication_active ; 
 int /*<<< orphan*/  sentPtr ; 

__attribute__((used)) static void
FUNC21(StartReplicationCmd *cmd)
{
	StringInfoData buf;

	/* make sure that our requirements are still fulfilled */
	FUNC1();

	FUNC0(!MyReplicationSlot);

	FUNC6(cmd->slotname, true);

	/*
	 * Force a disconnect, so that the decoding code doesn't need to care
	 * about an eventual switch from running in recovery, to running in a
	 * normal environment. Client code is expected to handle reconnects.
	 */
	if (am_cascading_walsender && !FUNC5())
	{
		FUNC13(LOG,
				(FUNC14("terminating walsender process after promotion")));
		got_STOPPING = true;
	}

	/*
	 * Create our decoding context, making it start at the previously ack'ed
	 * position.
	 *
	 * Do this before sending a CopyBothResponse message, so that any errors
	 * are reported early.
	 */
	logical_decoding_ctx =
		FUNC2(cmd->startpoint, cmd->options, false,
							  logical_read_xlog_page,
							  WalSndPrepareWrite, WalSndWriteData,
							  WalSndUpdateProgress);


	FUNC12(WALSNDSTATE_CATCHUP);

	/* Send a CopyBothResponse message, and start streaming */
	FUNC15(&buf, 'W');
	FUNC18(&buf, 0);
	FUNC19(&buf, 0);
	FUNC16(&buf);
	FUNC17();


	/* Start reading WAL from the oldest required WAL. */
	logical_startptr = MyReplicationSlot->data.restart_lsn;

	/*
	 * Report the location after which we'll send out further commits as the
	 * current sentPtr.
	 */
	sentPtr = MyReplicationSlot->data.confirmed_flush;

	/* Also update the sent position status in shared memory */
	FUNC8(&MyWalSnd->mutex);
	MyWalSnd->sentPtr = MyReplicationSlot->data.restart_lsn;
	FUNC9(&MyWalSnd->mutex);

	replication_active = true;

	FUNC10();

	/* Main loop of walsender */
	FUNC11(XLogSendLogical);

	FUNC4(logical_decoding_ctx);
	FUNC7();

	replication_active = false;
	if (got_STOPPING)
		FUNC20(0);
	FUNC12(WALSNDSTATE_STARTUP);

	/* Get out of COPY mode (CommandComplete). */
	FUNC3("COPY 0", DestRemote);
}