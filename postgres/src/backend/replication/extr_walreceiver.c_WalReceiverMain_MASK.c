#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  standby_sysid ;
typedef  scalar_t__ pgsocket ;
typedef  int XLogRecPtr ;
struct TYPE_9__ {char* startpointTLI; } ;
struct TYPE_10__ {TYPE_1__ physical; } ;
struct TYPE_11__ {int logical; int startpoint; char* slotname; TYPE_2__ proto; } ;
typedef  TYPE_3__ WalRcvStreamOptions ;
struct TYPE_12__ {scalar_t__ pid; int walRcvState; int ready_to_display; int receiveStart; char* receiveStartTLI; int sender_port; int force_reply; int /*<<< orphan*/ * latch; int /*<<< orphan*/  mutex; scalar_t__ sender_host; scalar_t__ conninfo; scalar_t__ latestWalEndTime; scalar_t__ lastMsgReceiptTime; scalar_t__ lastMsgSendTime; scalar_t__ slotname; } ;
typedef  TYPE_4__ WalRcvData ;
typedef  scalar_t__ TimestampTz ;
typedef  char* TimeLineID ;
struct TYPE_14__ {int Write; int Flush; } ;
struct TYPE_13__ {int /*<<< orphan*/  procLatch; } ;

/* Variables and functions */
 scalar_t__ ARCHIVE_MODE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BlockSig ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 TYPE_8__ LogstreamResult ; 
 int MAXCONNINFO ; 
 int MAXFNAMELEN ; 
 TYPE_7__* MyProc ; 
 scalar_t__ MyProcPid ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  NAPTIME_PER_CYCLE ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  PGC_SIGHUP ; 
 scalar_t__ PGINVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIGUSR2 ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* ThisTimeLineID ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 char* UINT64_FORMAT ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  WAIT_EVENT_WAL_RECEIVER_MAIN ; 
#define  WALRCV_RESTARTING 133 
#define  WALRCV_STARTING 132 
#define  WALRCV_STOPPED 131 
#define  WALRCV_STOPPING 130 
#define  WALRCV_STREAMING 129 
#define  WALRCV_WAITING 128 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int WL_SOCKET_READABLE ; 
 int WL_TIMEOUT ; 
 int FUNC12 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* WalRcv ; 
 int /*<<< orphan*/  WalRcvDie ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  WalRcvQuickDieHandler ; 
 int /*<<< orphan*/  WalRcvShutdownHandler ; 
 int /*<<< orphan*/  WalRcvSigHupHandler ; 
 int /*<<< orphan*/  WalRcvSigUsr1Handler ; 
 int /*<<< orphan*/  FUNC14 (int*,char**) ; 
 int /*<<< orphan*/ * WalReceiverFunctions ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ XLogArchiveMode ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (char,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 scalar_t__ FUNC23 (int) ; 
 char* cluster_name ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int got_SIGHUP ; 
 int /*<<< orphan*/  incoming_message ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (char*,int) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int recvFile ; 
 int /*<<< orphan*/  recvFileTLI ; 
 int /*<<< orphan*/  recvSegNo ; 
 int /*<<< orphan*/  reply_message ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (char*,char*) ; 
 int /*<<< orphan*/  FUNC40 (char*,char*,int) ; 
 int wal_receiver_timeout ; 
 int /*<<< orphan*/  wal_segment_size ; 
 int /*<<< orphan*/  FUNC41 (char*,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,char**) ; 
 char* FUNC43 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,char**,int*) ; 
 char* FUNC45 (int /*<<< orphan*/ ,char**) ; 
 int FUNC46 (int /*<<< orphan*/ ,char**,scalar_t__*) ; 
 scalar_t__ FUNC47 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  wrconn ; 

void
FUNC48(void)
{
	char		conninfo[MAXCONNINFO];
	char	   *tmp_conninfo;
	char		slotname[NAMEDATALEN];
	XLogRecPtr	startpoint;
	TimeLineID	startpointTLI;
	TimeLineID	primaryTLI;
	bool		first_stream;
	WalRcvData *walrcv = WalRcv;
	TimestampTz last_recv_timestamp;
	TimestampTz now;
	bool		ping_sent;
	char	   *err;
	char	   *sender_host = NULL;
	int			sender_port = 0;

	/*
	 * WalRcv should be set up already (if we are a backend, we inherit this
	 * by fork() or EXEC_BACKEND mechanism from the postmaster).
	 */
	FUNC0(walrcv != NULL);

	now = FUNC1();

	/*
	 * Mark walreceiver as running in shared memory.
	 *
	 * Do this as early as possible, so that if we fail later on, we'll set
	 * state to STOPPED. If we die before this, the startup process will keep
	 * waiting for us to start up, until it times out.
	 */
	FUNC9(&walrcv->mutex);
	FUNC0(walrcv->pid == 0);
	switch (walrcv->walRcvState)
	{
		case WALRCV_STOPPING:
			/* If we've already been requested to stop, don't start up. */
			walrcv->walRcvState = WALRCV_STOPPED;
			/* fall through */

		case WALRCV_STOPPED:
			FUNC10(&walrcv->mutex);
			FUNC36(1);
			break;

		case WALRCV_STARTING:
			/* The usual case */
			break;

		case WALRCV_WAITING:
		case WALRCV_STREAMING:
		case WALRCV_RESTARTING:
		default:
			/* Shouldn't happen */
			FUNC10(&walrcv->mutex);
			FUNC24(PANIC, "walreceiver still running according to shared memory state");
	}
	/* Advertise our PID so that the startup process can kill us */
	walrcv->pid = MyProcPid;
	walrcv->walRcvState = WALRCV_STREAMING;

	/* Fetch information required to start streaming */
	walrcv->ready_to_display = false;
	FUNC40(conninfo, (char *) walrcv->conninfo, MAXCONNINFO);
	FUNC40(slotname, (char *) walrcv->slotname, NAMEDATALEN);
	startpoint = walrcv->receiveStart;
	startpointTLI = walrcv->receiveStartTLI;

	/* Initialise to a sanish value */
	walrcv->lastMsgSendTime =
		walrcv->lastMsgReceiptTime = walrcv->latestWalEndTime = now;

	/* Report the latch to use to awaken this process */
	walrcv->latch = &MyProc->procLatch;

	FUNC10(&walrcv->mutex);

	/* Arrange to clean up at walreceiver exit */
	FUNC32(WalRcvDie, 0);

	/* Properly accept or ignore signals the postmaster might send us */
	FUNC35(SIGHUP, WalRcvSigHupHandler);	/* set flag to read config file */
	FUNC35(SIGINT, SIG_IGN);
	FUNC35(SIGTERM, WalRcvShutdownHandler);	/* request shutdown */
	FUNC35(SIGQUIT, WalRcvQuickDieHandler);	/* hard crash time */
	FUNC35(SIGALRM, SIG_IGN);
	FUNC35(SIGPIPE, SIG_IGN);
	FUNC35(SIGUSR1, WalRcvSigUsr1Handler);
	FUNC35(SIGUSR2, SIG_IGN);

	/* Reset some signals that are accepted by postmaster but not here */
	FUNC35(SIGCHLD, SIG_DFL);

	/* We allow SIGQUIT (quickdie) at all times */
	FUNC37(&BlockSig, SIGQUIT);

	/* Load the libpq-specific functions */
	FUNC30("libpqwalreceiver", false);
	if (WalReceiverFunctions == NULL)
		FUNC24(ERROR, "libpqwalreceiver didn't initialize correctly");

	/* Unblock signals (they were blocked when the postmaster forked us) */
	FUNC4(&UnBlockSig);

	/* Establish the connection to the primary for XLOG streaming */
	wrconn = FUNC41(conninfo, false, cluster_name[0] ? cluster_name : "walreceiver", &err);
	if (!wrconn)
		FUNC25(ERROR,
				(FUNC28("could not connect to the primary server: %s", err)));

	/*
	 * Save user-visible connection string.  This clobbers the original
	 * conninfo, for security. Also save host and port of the sender server
	 * this walreceiver is connected to.
	 */
	tmp_conninfo = FUNC43(wrconn);
	FUNC44(wrconn, &sender_host, &sender_port);
	FUNC9(&walrcv->mutex);
	FUNC31(walrcv->conninfo, 0, MAXCONNINFO);
	if (tmp_conninfo)
		FUNC40((char *) walrcv->conninfo, tmp_conninfo, MAXCONNINFO);

	FUNC31(walrcv->sender_host, 0, NI_MAXHOST);
	if (sender_host)
		FUNC40((char *) walrcv->sender_host, sender_host, NI_MAXHOST);

	walrcv->sender_port = sender_port;
	walrcv->ready_to_display = true;
	FUNC10(&walrcv->mutex);

	if (tmp_conninfo)
		FUNC33(tmp_conninfo);

	if (sender_host)
		FUNC33(sender_host);

	first_stream = true;
	for (;;)
	{
		char	   *primary_sysid;
		char		standby_sysid[32];
		WalRcvStreamOptions options;

		/*
		 * Check that we're connected to a valid server using the
		 * IDENTIFY_SYSTEM replication command.
		 */
		primary_sysid = FUNC45(wrconn, &primaryTLI);

		FUNC38(standby_sysid, sizeof(standby_sysid), UINT64_FORMAT,
				 FUNC2());
		if (FUNC39(primary_sysid, standby_sysid) != 0)
		{
			FUNC25(ERROR,
					(FUNC28("database system identifier differs between the primary and standby"),
					 FUNC27("The primary's identifier is %s, the standby's identifier is %s.",
							   primary_sysid, standby_sysid)));
		}

		/*
		 * Confirm that the current timeline of the primary is the same or
		 * ahead of ours.
		 */
		if (primaryTLI < startpointTLI)
			FUNC25(ERROR,
					(FUNC28("highest timeline %u of the primary is behind recovery timeline %u",
							primaryTLI, startpointTLI)));

		/*
		 * Get any missing history files. We do this always, even when we're
		 * not interested in that timeline, so that if we're promoted to
		 * become the master later on, we don't select the same timeline that
		 * was already used in the current master. This isn't bullet-proof -
		 * you'll need some external software to manage your cluster if you
		 * need to ensure that a unique timeline id is chosen in every case,
		 * but let's avoid the confusion of timeline id collisions where we
		 * can.
		 */
		FUNC13(startpointTLI, primaryTLI);

		/*
		 * Start streaming.
		 *
		 * We'll try to start at the requested starting point and timeline,
		 * even if it's different from the server's latest timeline. In case
		 * we've already reached the end of the old timeline, the server will
		 * finish the streaming immediately, and we will go back to await
		 * orders from the startup process. If recovery_target_timeline is
		 * 'latest', the startup process will scan pg_wal and find the new
		 * history file, bump recovery target timeline, and ask us to restart
		 * on the new timeline.
		 */
		options.logical = false;
		options.startpoint = startpoint;
		options.slotname = slotname[0] != '\0' ? slotname : NULL;
		options.proto.physical.startpointTLI = startpointTLI;
		ThisTimeLineID = startpointTLI;
		if (FUNC47(wrconn, &options))
		{
			if (first_stream)
				FUNC25(LOG,
						(FUNC28("started streaming WAL from primary at %X/%X on timeline %u",
								(uint32) (startpoint >> 32), (uint32) startpoint,
								startpointTLI)));
			else
				FUNC25(LOG,
						(FUNC28("restarted WAL streaming at %X/%X on timeline %u",
								(uint32) (startpoint >> 32), (uint32) startpoint,
								startpointTLI)));
			first_stream = false;

			/* Initialize LogstreamResult and buffers for processing messages */
			LogstreamResult.Write = LogstreamResult.Flush = FUNC3(NULL);
			FUNC29(&reply_message);
			FUNC29(&incoming_message);

			/* Initialize the last recv timestamp */
			last_recv_timestamp = FUNC1();
			ping_sent = false;

			/* Loop until end-of-streaming or error */
			for (;;)
			{
				char	   *buf;
				int			len;
				bool		endofwal = false;
				pgsocket	wait_fd = PGINVALID_SOCKET;
				int			rc;

				/*
				 * Exit walreceiver if we're not in recovery. This should not
				 * happen, but cross-check the status here.
				 */
				if (!FUNC7())
					FUNC25(FATAL,
							(FUNC28("cannot continue WAL streaming, recovery has already ended")));

				/* Process any requests or signals received recently */
				FUNC6();

				if (got_SIGHUP)
				{
					got_SIGHUP = false;
					FUNC5(PGC_SIGHUP);
					FUNC21(true);
				}

				/* See if we can read data immediately */
				len = FUNC46(wrconn, &buf, &wait_fd);
				if (len != 0)
				{
					/*
					 * Process the received data, and any subsequent data we
					 * can read without blocking.
					 */
					for (;;)
					{
						if (len > 0)
						{
							/*
							 * Something was received from master, so reset
							 * timeout
							 */
							last_recv_timestamp = FUNC1();
							ping_sent = false;
							FUNC20(buf[0], &buf[1], len - 1);
						}
						else if (len == 0)
							break;
						else if (len < 0)
						{
							FUNC25(LOG,
									(FUNC28("replication terminated by primary server"),
									 FUNC27("End of WAL reached on timeline %u at %X/%X.",
											   startpointTLI,
											   (uint32) (LogstreamResult.Write >> 32), (uint32) LogstreamResult.Write)));
							endofwal = true;
							break;
						}
						len = FUNC46(wrconn, &buf, &wait_fd);
					}

					/* Let the master know that we received some data. */
					FUNC22(false, false);

					/*
					 * If we've written some records, flush them to disk and
					 * let the startup process and primary server know about
					 * them.
					 */
					FUNC19(false);
				}

				/* Check if we need to exit the streaming loop. */
				if (endofwal)
					break;

				/*
				 * Ideally we would reuse a WaitEventSet object repeatedly
				 * here to avoid the overheads of WaitLatchOrSocket on epoll
				 * systems, but we can't be sure that libpq (or any other
				 * walreceiver implementation) has the same socket (even if
				 * the fd is the same number, it may have been closed and
				 * reopened since the last time).  In future, if there is a
				 * function for removing sockets from WaitEventSet, then we
				 * could add and remove just the socket each time, potentially
				 * avoiding some system calls.
				 */
				FUNC0(wait_fd != PGINVALID_SOCKET);
				rc = FUNC12(walrcv->latch,
									   WL_EXIT_ON_PM_DEATH | WL_SOCKET_READABLE |
									   WL_TIMEOUT | WL_LATCH_SET,
									   wait_fd,
									   NAPTIME_PER_CYCLE,
									   WAIT_EVENT_WAL_RECEIVER_MAIN);
				if (rc & WL_LATCH_SET)
				{
					FUNC8(walrcv->latch);
					FUNC6();

					if (walrcv->force_reply)
					{
						/*
						 * The recovery process has asked us to send apply
						 * feedback now.  Make sure the flag is really set to
						 * false in shared memory before sending the reply, so
						 * we don't miss a new request for a reply.
						 */
						walrcv->force_reply = false;
						FUNC34();
						FUNC22(true, false);
					}
				}
				if (rc & WL_TIMEOUT)
				{
					/*
					 * We didn't receive anything new. If we haven't heard
					 * anything from the server for more than
					 * wal_receiver_timeout / 2, ping the server. Also, if
					 * it's been longer than wal_receiver_status_interval
					 * since the last update we sent, send a status update to
					 * the master anyway, to report any progress in applying
					 * WAL.
					 */
					bool		requestReply = false;

					/*
					 * Check if time since last receive from standby has
					 * reached the configured limit.
					 */
					if (wal_receiver_timeout > 0)
					{
						TimestampTz now = FUNC1();
						TimestampTz timeout;

						timeout =
							FUNC11(last_recv_timestamp,
														wal_receiver_timeout);

						if (now >= timeout)
							FUNC25(ERROR,
									(FUNC28("terminating walreceiver due to timeout")));

						/*
						 * We didn't receive anything new, for half of
						 * receiver replication timeout. Ping the server.
						 */
						if (!ping_sent)
						{
							timeout = FUNC11(last_recv_timestamp,
																  (wal_receiver_timeout / 2));
							if (now >= timeout)
							{
								requestReply = true;
								ping_sent = true;
							}
						}
					}

					FUNC22(requestReply, requestReply);
					FUNC21(false);
				}
			}

			/*
			 * The backend finished streaming. Exit streaming COPY-mode from
			 * our side, too.
			 */
			FUNC42(wrconn, &primaryTLI);

			/*
			 * If the server had switched to a new timeline that we didn't
			 * know about when we began streaming, fetch its timeline history
			 * file now.
			 */
			FUNC13(startpointTLI, primaryTLI);
		}
		else
			FUNC25(LOG,
					(FUNC28("primary server contains no more WAL on requested timeline %u",
							startpointTLI)));

		/*
		 * End of WAL reached on the requested timeline. Close the last
		 * segment, and await for new orders from the startup process.
		 */
		if (recvFile >= 0)
		{
			char		xlogfname[MAXFNAMELEN];

			FUNC19(false);
			if (FUNC23(recvFile) != 0)
				FUNC25(PANIC,
						(FUNC26(),
						 FUNC28("could not close log segment %s: %m",
								FUNC18(recvFileTLI, recvSegNo))));

			/*
			 * Create .done file forcibly to prevent the streamed segment from
			 * being archived later.
			 */
			FUNC17(xlogfname, recvFileTLI, recvSegNo, wal_segment_size);
			if (XLogArchiveMode != ARCHIVE_MODE_ALWAYS)
				FUNC15(xlogfname);
			else
				FUNC16(xlogfname);
		}
		recvFile = -1;

		FUNC24(DEBUG1, "walreceiver ended streaming and awaits new instructions");
		FUNC14(&startpoint, &startpointTLI);
	}
	/* not reached */
}