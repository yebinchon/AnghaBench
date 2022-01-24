#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  stream ;
struct TYPE_9__ {int /*<<< orphan*/  bgconn; int /*<<< orphan*/  xlog; int /*<<< orphan*/  sysidentifier; int /*<<< orphan*/  timeline; int /*<<< orphan*/  startptr; } ;
typedef  TYPE_1__ logstreamer_param ;
struct TYPE_11__ {int /*<<< orphan*/  (* finish ) () ;} ;
struct TYPE_10__ {int synchronous; int do_sync; int mark_done; TYPE_3__* walmethod; int /*<<< orphan*/  replication_slot; int /*<<< orphan*/ * partial_suffix; int /*<<< orphan*/  standby_message_timeout; int /*<<< orphan*/  stop_socket; int /*<<< orphan*/  stream_stop; int /*<<< orphan*/  sysidentifier; int /*<<< orphan*/  timeline; int /*<<< orphan*/  startpos; } ;
typedef  TYPE_2__ StreamCtl ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PGINVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * bgpipe ; 
 int /*<<< orphan*/  compresslevel ; 
 char format ; 
 int in_log_streamer ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  reached_end_position ; 
 int /*<<< orphan*/  replication_slot ; 
 int /*<<< orphan*/  standby_message_timeout ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(logstreamer_param *param)
{
	StreamCtl	stream;

	in_log_streamer = true;

	FUNC4(&stream, 0, sizeof(stream));
	stream.startpos = param->startptr;
	stream.timeline = param->timeline;
	stream.sysidentifier = param->sysidentifier;
	stream.stream_stop = reached_end_position;
#ifndef WIN32
	stream.stop_socket = bgpipe[0];
#else
	stream.stop_socket = PGINVALID_SOCKET;
#endif
	stream.standby_message_timeout = standby_message_timeout;
	stream.synchronous = false;
	/* fsync happens at the end of pg_basebackup for all data */
	stream.do_sync = false;
	stream.mark_done = true;
	stream.partial_suffix = NULL;
	stream.replication_slot = replication_slot;

	if (format == 'p')
		stream.walmethod = FUNC0(param->xlog, 0,
													stream.do_sync);
	else
		stream.walmethod = FUNC1(param->xlog, compresslevel,
											  stream.do_sync);

	if (!FUNC6(param->bgconn, &stream))

		/*
		 * Any errors will already have been reported in the function process,
		 * but we need to tell the parent that we didn't shutdown in a nice
		 * way.
		 */
		return 1;

	if (!stream.walmethod->finish())
	{
		FUNC8("could not finish writing WAL files: %m");
		return 1;
	}

	FUNC5(param->bgconn);

	if (format == 'p')
		FUNC2();
	else
		FUNC3();
	FUNC7(stream.walmethod);

	return 0;
}