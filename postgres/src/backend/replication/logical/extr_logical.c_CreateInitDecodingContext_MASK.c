#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  XLogPageReadCB ;
typedef  void* TransactionId ;
struct TYPE_17__ {int /*<<< orphan*/  receive_rewrites; } ;
struct TYPE_13__ {int /*<<< orphan*/ * startup_cb; } ;
struct TYPE_16__ {TYPE_7__ options; TYPE_3__* reorder; TYPE_2__ callbacks; int /*<<< orphan*/  context; } ;
struct TYPE_12__ {scalar_t__ database; void* catalog_xmin; int /*<<< orphan*/  restart_lsn; int /*<<< orphan*/  plugin; int /*<<< orphan*/  name; } ;
struct TYPE_15__ {int /*<<< orphan*/  mutex; void* effective_xmin; TYPE_1__ data; void* effective_catalog_xmin; } ;
struct TYPE_14__ {int /*<<< orphan*/  output_rewrites; } ;
typedef  TYPE_4__ ReplicationSlot ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LogicalOutputPluginWriterWrite ;
typedef  int /*<<< orphan*/  LogicalOutputPluginWriterUpdateProgress ;
typedef  int /*<<< orphan*/  LogicalOutputPluginWriterPrepareWrite ;
typedef  TYPE_5__ LogicalDecodingContext ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_ACTIVE_SQL_TRANSACTION ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ InvalidTransactionId ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseId ; 
 TYPE_4__* MyReplicationSlot ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,...) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,TYPE_7__*,int) ; 

LogicalDecodingContext *
FUNC22(char *plugin,
						  List *output_plugin_options,
						  bool need_full_snapshot,
						  XLogRecPtr restart_lsn,
						  XLogPageReadCB read_page,
						  LogicalOutputPluginWriterPrepareWrite prepare_write,
						  LogicalOutputPluginWriterWrite do_write,
						  LogicalOutputPluginWriterUpdateProgress update_progress)
{
	TransactionId xmin_horizon = InvalidTransactionId;
	ReplicationSlot *slot;
	LogicalDecodingContext *ctx;
	MemoryContext old_context;

	/* shorter lines... */
	slot = MyReplicationSlot;

	/* first some sanity checks that are unlikely to be violated */
	if (slot == NULL)
		FUNC17(ERROR, "cannot perform logical decoding without an acquired slot");

	if (plugin == NULL)
		FUNC17(ERROR, "cannot initialize logical decoding without a specified plugin");

	/* Make sure the passed slot is suitable. These are user facing errors. */
	if (FUNC11(slot))
		FUNC18(ERROR,
				(FUNC19(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC20("cannot use physical replication slot for logical decoding")));

	if (slot->data.database != MyDatabaseId)
		FUNC18(ERROR,
				(FUNC19(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
				 FUNC20("replication slot \"%s\" was not created in this database",
						FUNC6(slot->data.name))));

	if (FUNC2() &&
		FUNC1() != InvalidTransactionId)
		FUNC18(ERROR,
				(FUNC19(ERRCODE_ACTIVE_SQL_TRANSACTION),
				 FUNC20("cannot create logical replication slot in transaction that has performed writes")));

	/* register output plugin name with slot */
	FUNC12(&slot->mutex);
	FUNC15(FUNC6(slot->data.plugin), plugin, NAMEDATALEN);
	FUNC13(&slot->mutex);

	if (FUNC16(restart_lsn))
		FUNC8();
	else
	{
		FUNC12(&slot->mutex);
		slot->data.restart_lsn = restart_lsn;
		FUNC13(&slot->mutex);
	}

	/* ----
	 * This is a bit tricky: We need to determine a safe xmin horizon to start
	 * decoding from, to avoid starting from a running xacts record referring
	 * to xids whose rows have been vacuumed or pruned
	 * already. GetOldestSafeDecodingTransactionId() returns such a value, but
	 * without further interlock its return value might immediately be out of
	 * date.
	 *
	 * So we have to acquire the ProcArrayLock to prevent computation of new
	 * xmin horizons by other backends, get the safe decoding xid, and inform
	 * the slot machinery about the new limit. Once that's done the
	 * ProcArrayLock can be released as the slot machinery now is
	 * protecting against vacuum.
	 *
	 * Note that, temporarily, the data, not just the catalog, xmin has to be
	 * reserved if a data snapshot is to be exported.  Otherwise the initial
	 * data snapshot created here is not guaranteed to be valid. After that
	 * the data xmin doesn't need to be managed anymore and the global xmin
	 * should be recomputed. As we are fine with losing the pegged data xmin
	 * after crash - no chance a snapshot would get exported anymore - we can
	 * get away with just setting the slot's
	 * effective_xmin. ReplicationSlotRelease will reset it again.
	 *
	 * ----
	 */
	FUNC3(ProcArrayLock, LW_EXCLUSIVE);

	xmin_horizon = FUNC0(!need_full_snapshot);

	FUNC12(&slot->mutex);
	slot->effective_catalog_xmin = xmin_horizon;
	slot->data.catalog_xmin = xmin_horizon;
	if (need_full_snapshot)
		slot->effective_xmin = xmin_horizon;
	FUNC13(&slot->mutex);

	FUNC10(true);

	FUNC4(ProcArrayLock);

	FUNC7();
	FUNC9();

	ctx = FUNC14(NIL, restart_lsn, xmin_horizon,
								 need_full_snapshot, false,
								 read_page, prepare_write, do_write,
								 update_progress);

	/* call output plugin initialization callback */
	old_context = FUNC5(ctx->context);
	if (ctx->callbacks.startup_cb != NULL)
		FUNC21(ctx, &ctx->options, true);
	FUNC5(old_context);

	ctx->reorder->output_rewrites = ctx->options.receive_rewrites;

	return ctx;
}