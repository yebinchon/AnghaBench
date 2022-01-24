#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  originname ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  publication_names; int /*<<< orphan*/  proto_version; } ;
struct TYPE_9__ {TYPE_1__ logical; } ;
struct TYPE_10__ {int logical; char* slotname; TYPE_2__ proto; int /*<<< orphan*/  startpoint; } ;
typedef  TYPE_3__ WalRcvStreamOptions ;
typedef  int /*<<< orphan*/  TimeLineID ;
struct TYPE_12__ {char* subid; int /*<<< orphan*/  relid; int /*<<< orphan*/  userid; int /*<<< orphan*/  dbid; int /*<<< orphan*/  reply_time; int /*<<< orphan*/  last_recv_time; int /*<<< orphan*/  last_send_time; } ;
struct TYPE_11__ {char* name; char* synccommit; char* slotname; int oid; int /*<<< orphan*/  publications; int /*<<< orphan*/  conninfo; int /*<<< orphan*/  enabled; } ;
typedef  int /*<<< orphan*/  RepOriginId ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ApplyContext ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  DEBUG1 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_5__* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  LOGICALREP_PROTO_VERSION_NUM ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_6__* MyLogicalRepWorker ; 
 TYPE_5__* MySubscription ; 
 int MySubscriptionValid ; 
 int NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGC_BACKEND ; 
 int /*<<< orphan*/  PGC_SUSET ; 
 int /*<<< orphan*/  PGC_S_OVERRIDE ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SUBSCRIPTIONOID ; 
 int /*<<< orphan*/  SUBSCRIPTIONRELMAP ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  die ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  invalidate_syncing_table_states ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  logicalrep_worker_sighup ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 char* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  replorigin_session_origin ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,int) ; 
 int /*<<< orphan*/  subscription_change_cb ; 
 int /*<<< orphan*/ * FUNC30 (int /*<<< orphan*/ ,int,char*,char**) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * wrconn ; 

void
FUNC33(Datum main_arg)
{
	int			worker_slot = FUNC5(main_arg);
	MemoryContext oldctx;
	char		originname[NAMEDATALEN];
	XLogRecPtr	origin_startpos;
	char	   *myslotname;
	WalRcvStreamOptions options;

	/* Attach to slot */
	FUNC20(worker_slot);

	/* Setup signal handling */
	FUNC22(SIGHUP, logicalrep_worker_sighup);
	FUNC22(SIGTERM, die);
	FUNC2();

	/*
	 * We don't currently need any ResourceOwner in a walreceiver process, but
	 * if we did, we could call CreateAuxProcessResourceOwner here.
	 */

	/* Initialise stats to a sanish value */
	MyLogicalRepWorker->last_send_time = MyLogicalRepWorker->last_recv_time =
		MyLogicalRepWorker->reply_time = FUNC6();

	/* Load the libpq-specific functions */
	FUNC19("libpqwalreceiver", false);

	/* Run as replica session replication role. */
	FUNC12("session_replication_role", "replica",
					PGC_SUSET, PGC_S_OVERRIDE);

	/* Connect to our database. */
	FUNC1(MyLogicalRepWorker->dbid,
											  MyLogicalRepWorker->userid,
											  0);

	/* Load the subscription into persistent memory context. */
	ApplyContext = FUNC0(TopMemoryContext,
										 "ApplyContext",
										 ALLOCSET_DEFAULT_SIZES);
	FUNC13();
	oldctx = FUNC10(ApplyContext);

	MySubscription = FUNC7(MyLogicalRepWorker->subid, true);
	if (!MySubscription)
	{
		FUNC16(LOG,
				(FUNC17("logical replication apply worker for subscription %u will not "
						"start because the subscription was removed during startup",
						MyLogicalRepWorker->subid)));
		FUNC23(0);
	}

	MySubscriptionValid = true;
	FUNC10(oldctx);

	if (!MySubscription->enabled)
	{
		FUNC16(LOG,
				(FUNC17("logical replication apply worker for subscription \"%s\" will not "
						"start because the subscription was disabled during startup",
						MySubscription->name)));

		FUNC23(0);
	}

	/* Setup synchronous commit according to the user's wishes */
	FUNC12("synchronous_commit", MySubscription->synccommit,
					PGC_BACKEND, PGC_S_OVERRIDE);

	/* Keep us informed about subscription changes. */
	FUNC3(SUBSCRIPTIONOID,
								  subscription_change_cb,
								  (Datum) 0);

	if (FUNC14())
		FUNC16(LOG,
				(FUNC17("logical replication table synchronization worker for subscription \"%s\", table \"%s\" has started",
						MySubscription->name, FUNC18(MyLogicalRepWorker->relid))));
	else
		FUNC16(LOG,
				(FUNC17("logical replication apply worker for subscription \"%s\" has started",
						MySubscription->name)));

	FUNC4();

	/* Connect to the origin and start the replication. */
	FUNC15(DEBUG1, "connecting to publisher using connection string \"%s\"",
		 MySubscription->conninfo);

	if (FUNC14())
	{
		char	   *syncslotname;

		/* This is table synchronization worker, call initial sync. */
		syncslotname = FUNC9(&origin_startpos);

		/* The slot name needs to be allocated in permanent memory context. */
		oldctx = FUNC10(ApplyContext);
		myslotname = FUNC24(syncslotname);
		FUNC10(oldctx);

		FUNC21(syncslotname);
	}
	else
	{
		/* This is main apply worker */
		RepOriginId originid;
		TimeLineID	startpointTLI;
		char	   *err;

		myslotname = MySubscription->slotname;

		/*
		 * This shouldn't happen if the subscription is enabled, but guard
		 * against DDL bugs or manual catalog changes.  (libpqwalreceiver will
		 * crash if slot is NULL.)
		 */
		if (!myslotname)
			FUNC16(ERROR,
					(FUNC17("subscription has no replication slot set")));

		/* Setup replication origin tracking. */
		FUNC13();
		FUNC29(originname, sizeof(originname), "pg_%u", MySubscription->oid);
		originid = FUNC25(originname, true);
		if (!FUNC11(originid))
			originid = FUNC26(originname);
		FUNC28(originid);
		replorigin_session_origin = originid;
		origin_startpos = FUNC27(false);
		FUNC4();

		wrconn = FUNC30(MySubscription->conninfo, true, MySubscription->name,
								&err);
		if (wrconn == NULL)
			FUNC16(ERROR,
					(FUNC17("could not connect to the publisher: %s", err)));

		/*
		 * We don't really use the output identify_system for anything but it
		 * does some initializations on the upstream so let's still call it.
		 */
		(void) FUNC31(wrconn, &startpointTLI);

	}

	/*
	 * Setup callback for syscache so that we know when something changes in
	 * the subscription relation state.
	 */
	FUNC3(SUBSCRIPTIONRELMAP,
								  invalidate_syncing_table_states,
								  (Datum) 0);

	/* Build logical replication streaming options. */
	options.logical = true;
	options.startpoint = origin_startpos;
	options.slotname = myslotname;
	options.proto.logical.proto_version = LOGICALREP_PROTO_VERSION_NUM;
	options.proto.logical.publication_names = MySubscription->publications;

	/* Start normal logical streaming replication. */
	FUNC32(wrconn, &options);

	/* Run the main loop. */
	FUNC8(origin_startpos);

	FUNC23(0);
}