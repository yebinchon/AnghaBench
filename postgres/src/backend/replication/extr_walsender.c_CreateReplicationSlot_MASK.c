#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xloc ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TupOutputState ;
struct TYPE_10__ {int confirmed_flush; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {TYPE_1__ data; } ;
struct TYPE_12__ {scalar_t__ kind; char const* plugin; scalar_t__ temporary; int /*<<< orphan*/  slotname; } ;
struct TYPE_11__ {int /*<<< orphan*/  snapshot_builder; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  TYPE_2__ LogicalDecodingContext ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ CreateReplicationSlotCmd ;
typedef  scalar_t__ CRSSnapshotAction ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CRS_EXPORT_SNAPSHOT ; 
 scalar_t__ CRS_USE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  DestRemoteSimple ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstSnapshotSet ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int) ; 
 int /*<<< orphan*/  MyProc ; 
 TYPE_5__* MyReplicationSlot ; 
 int /*<<< orphan*/  NIL ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ REPLICATION_KIND_LOGICAL ; 
 scalar_t__ REPLICATION_KIND_PHYSICAL ; 
 int /*<<< orphan*/  RS_EPHEMERAL ; 
 int /*<<< orphan*/  RS_PERSISTENT ; 
 int /*<<< orphan*/  RS_TEMPORARY ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/  TTSOpsVirtual ; 
 int /*<<< orphan*/  ThisTimeLineID ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WalSndPrepareWrite ; 
 int /*<<< orphan*/  WalSndUpdateProgress ; 
 int /*<<< orphan*/  WalSndWriteData ; 
 scalar_t__ XACT_REPEATABLE_READ ; 
 scalar_t__ XactIsoLevel ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 scalar_t__ last_reply_timestamp ; 
 int /*<<< orphan*/  logical_read_xlog_page ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  sendTimeLine ; 
 int sendTimeLineIsHistoric ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,int,int) ; 

__attribute__((used)) static void
FUNC29(CreateReplicationSlotCmd *cmd)
{
	const char *snapshot_name = NULL;
	char		xloc[MAXFNAMELEN];
	char	   *slot_name;
	bool		reserve_wal = false;
	CRSSnapshotAction snapshot_action = CRS_EXPORT_SNAPSHOT;
	DestReceiver *dest;
	TupOutputState *tstate;
	TupleDesc	tupdesc;
	Datum		values[4];
	bool		nulls[4];

	FUNC0(!MyReplicationSlot);

	FUNC27(cmd, &reserve_wal, &snapshot_action);

	/* setup state for XLogRead */
	sendTimeLineIsHistoric = false;
	sendTimeLine = ThisTimeLineID;

	if (cmd->kind == REPLICATION_KIND_PHYSICAL)
	{
		FUNC12(cmd->slotname, false,
							  cmd->temporary ? RS_TEMPORARY : RS_PERSISTENT);
	}
	else
	{
		FUNC2();

		/*
		 * Initially create persistent slot as ephemeral - that allows us to
		 * nicely handle errors during initialization because it'll get
		 * dropped if this transaction fails. We'll make it persistent at the
		 * end. Temporary slots can be created as temporary from beginning as
		 * they get dropped on error as well.
		 */
		FUNC12(cmd->slotname, true,
							  cmd->temporary ? RS_TEMPORARY : RS_EPHEMERAL);
	}

	if (cmd->kind == REPLICATION_KIND_LOGICAL)
	{
		LogicalDecodingContext *ctx;
		bool		need_full_snapshot = false;

		/*
		 * Do options check early so that we can bail before calling the
		 * DecodingContextFindStartpoint which can take long time.
		 */
		if (snapshot_action == CRS_EXPORT_SNAPSHOT)
		{
			if (FUNC9())
				FUNC25(ERROR,
				/*- translator: %s is a CREATE_REPLICATION_SLOT statement */
						(FUNC26("%s must not be called inside a transaction",
								"CREATE_REPLICATION_SLOT ... EXPORT_SNAPSHOT")));

			need_full_snapshot = true;
		}
		else if (snapshot_action == CRS_USE_SNAPSHOT)
		{
			if (!FUNC9())
				FUNC25(ERROR,
				/*- translator: %s is a CREATE_REPLICATION_SLOT statement */
						(FUNC26("%s must be called inside a transaction",
								"CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

			if (XactIsoLevel != XACT_REPEATABLE_READ)
				FUNC25(ERROR,
				/*- translator: %s is a CREATE_REPLICATION_SLOT statement */
						(FUNC26("%s must be called in REPEATABLE READ isolation mode transaction",
								"CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

			if (FirstSnapshotSet)
				FUNC25(ERROR,
				/*- translator: %s is a CREATE_REPLICATION_SLOT statement */
						(FUNC26("%s must be called before any query",
								"CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

			if (FUNC8())
				FUNC25(ERROR,
				/*- translator: %s is a CREATE_REPLICATION_SLOT statement */
						(FUNC26("%s must not be called in a subtransaction",
								"CREATE_REPLICATION_SLOT ... USE_SNAPSHOT")));

			need_full_snapshot = true;
		}

		ctx = FUNC4(cmd->plugin, NIL, need_full_snapshot,
										InvalidXLogRecPtr,
										logical_read_xlog_page,
										WalSndPrepareWrite, WalSndWriteData,
										WalSndUpdateProgress);

		/*
		 * Signal that we don't need the timeout mechanism. We're just
		 * creating the replication slot and don't yet accept feedback
		 * messages or send keepalives. As we possibly need to wait for
		 * further WAL the walsender would otherwise possibly be killed too
		 * soon.
		 */
		last_reply_timestamp = 0;

		/* build initial snapshot, might take a while */
		FUNC6(ctx);

		/*
		 * Export or use the snapshot if we've been asked to do so.
		 *
		 * NB. We will convert the snapbuild.c kind of snapshot to normal
		 * snapshot when doing this.
		 */
		if (snapshot_action == CRS_EXPORT_SNAPSHOT)
		{
			snapshot_name = FUNC19(ctx->snapshot_builder);
		}
		else if (snapshot_action == CRS_USE_SNAPSHOT)
		{
			Snapshot	snap;

			snap = FUNC20(ctx->snapshot_builder);
			FUNC18(snap, MyProc);
		}

		/* don't need the decoding context anymore */
		FUNC7(ctx);

		if (!cmd->temporary)
			FUNC14();
	}
	else if (cmd->kind == REPLICATION_KIND_PHYSICAL && reserve_wal)
	{
		FUNC16();

		FUNC13();

		/* Write this slot to disk if it's a permanent one. */
		if (!cmd->temporary)
			FUNC17();
	}

	FUNC28(xloc, sizeof(xloc), "%X/%X",
			 (uint32) (MyReplicationSlot->data.confirmed_flush >> 32),
			 (uint32) MyReplicationSlot->data.confirmed_flush);

	dest = FUNC3(DestRemoteSimple);
	FUNC10(nulls, false, sizeof(nulls));

	/*----------
	 * Need a tuple descriptor representing four columns:
	 * - first field: the slot name
	 * - second field: LSN at which we became consistent
	 * - third field: exported snapshot's name
	 * - fourth field: output plugin
	 *----------
	 */
	tupdesc = FUNC5(4);
	FUNC21(tupdesc, (AttrNumber) 1, "slot_name",
							  TEXTOID, -1, 0);
	FUNC21(tupdesc, (AttrNumber) 2, "consistent_point",
							  TEXTOID, -1, 0);
	FUNC21(tupdesc, (AttrNumber) 3, "snapshot_name",
							  TEXTOID, -1, 0);
	FUNC21(tupdesc, (AttrNumber) 4, "output_plugin",
							  TEXTOID, -1, 0);

	/* prepare for projection of tuples */
	tstate = FUNC22(dest, tupdesc, &TTSOpsVirtual);

	/* slot_name */
	slot_name = FUNC11(MyReplicationSlot->data.name);
	values[0] = FUNC1(slot_name);

	/* consistent wal location */
	values[1] = FUNC1(xloc);

	/* snapshot name, or NULL if none */
	if (snapshot_name != NULL)
		values[2] = FUNC1(snapshot_name);
	else
		nulls[2] = true;

	/* plugin, or NULL if none */
	if (cmd->plugin != NULL)
		values[3] = FUNC1(cmd->plugin);
	else
		nulls[3] = true;

	/* send it to dest */
	FUNC23(tstate, values, nulls);
	FUNC24(tstate);

	FUNC15();
}