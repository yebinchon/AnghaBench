#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  stream ;
typedef  int XLogRecPtr ;
typedef  int /*<<< orphan*/  TimeLineID ;
struct TYPE_7__ {int /*<<< orphan*/  (* finish ) () ;} ;
struct TYPE_6__ {int startpos; int mark_done; char* partial_suffix; TYPE_2__* walmethod; int /*<<< orphan*/  replication_slot; int /*<<< orphan*/  do_sync; int /*<<< orphan*/  synchronous; int /*<<< orphan*/  standby_message_timeout; int /*<<< orphan*/  stop_socket; int /*<<< orphan*/  stream_stop; int /*<<< orphan*/  timeline; } ;
typedef  TYPE_1__ StreamCtl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGINVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WalSegSz ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  basedir ; 
 int /*<<< orphan*/  compresslevel ; 
 int /*<<< orphan*/ * conn ; 
 int /*<<< orphan*/  do_sync ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  replication_slot ; 
 int /*<<< orphan*/  standby_message_timeout ; 
 int /*<<< orphan*/  stop_streaming ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  synchronous ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC14(void)
{
	XLogRecPtr	serverpos;
	TimeLineID	servertli;
	StreamCtl	stream;

	FUNC5(&stream, 0, sizeof(stream));

	/*
	 * Connect in replication mode to the server
	 */
	if (conn == NULL)
		conn = FUNC4();
	if (!conn)
		/* Error message already written in GetConnection() */
		return;

	if (!FUNC0(conn))
	{
		/*
		 * Error message already written in CheckServerVersionForStreaming().
		 * There's no hope of recovering from a version mismatch, so don't
		 * retry.
		 */
		FUNC10(1);
	}

	/*
	 * Identify server, obtaining start LSN position and current timeline ID
	 * at the same time, necessary if not valid data can be found in the
	 * existing output directory.
	 */
	if (!FUNC8(conn, NULL, &servertli, &serverpos, NULL))
		FUNC10(1);

	/*
	 * Figure out where to start streaming.
	 */
	stream.startpos = FUNC2(&stream.timeline);
	if (stream.startpos == InvalidXLogRecPtr)
	{
		stream.startpos = serverpos;
		stream.timeline = servertli;
	}

	/*
	 * Always start streaming at the beginning of a segment
	 */
	stream.startpos -= FUNC9(stream.startpos, WalSegSz);

	/*
	 * Start the replication
	 */
	if (verbose)
		FUNC12("starting log streaming at %X/%X (timeline %u)",
					(uint32) (stream.startpos >> 32), (uint32) stream.startpos,
					stream.timeline);

	stream.stream_stop = stop_streaming;
	stream.stop_socket = PGINVALID_SOCKET;
	stream.standby_message_timeout = standby_message_timeout;
	stream.synchronous = synchronous;
	stream.do_sync = do_sync;
	stream.mark_done = false;
	stream.walmethod = FUNC1(basedir, compresslevel,
												stream.do_sync);
	stream.partial_suffix = ".partial";
	stream.replication_slot = replication_slot;

	FUNC7(conn, &stream);

	if (!stream.walmethod->finish())
	{
		FUNC12("could not finish writing WAL files: %m");
		return;
	}

	FUNC6(conn);
	conn = NULL;

	FUNC3();
	FUNC11(stream.walmethod);

	conn = NULL;
}