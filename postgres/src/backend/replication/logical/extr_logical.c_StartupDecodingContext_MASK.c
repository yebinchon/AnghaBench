#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  XLogPageReadCB ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_15__ {int /*<<< orphan*/  vacuumFlags; } ;
struct TYPE_14__ {int /*<<< orphan*/  message; int /*<<< orphan*/  commit; int /*<<< orphan*/  apply_truncate; int /*<<< orphan*/  apply_change; int /*<<< orphan*/  begin; TYPE_3__* private_data; } ;
struct TYPE_13__ {int fast_forward; int /*<<< orphan*/ * output_plugin_options; int /*<<< orphan*/  update_progress; int /*<<< orphan*/  write; int /*<<< orphan*/  prepare_write; int /*<<< orphan*/  out; TYPE_7__* reorder; int /*<<< orphan*/  snapshot_builder; int /*<<< orphan*/  reader; TYPE_2__* slot; int /*<<< orphan*/  callbacks; int /*<<< orphan*/  context; } ;
struct TYPE_11__ {int /*<<< orphan*/  plugin; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
typedef  TYPE_2__ ReplicationSlot ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  LogicalOutputPluginWriterWrite ;
typedef  int /*<<< orphan*/  LogicalOutputPluginWriterUpdateProgress ;
typedef  int /*<<< orphan*/  LogicalOutputPluginWriterPrepareWrite ;
typedef  TYPE_3__ LogicalDecodingContext ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_9__* MyPgXact ; 
 TYPE_2__* MyReplicationSlot ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROC_IN_LOGICAL_DECODING ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 TYPE_7__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  begin_cb_wrapper ; 
 int /*<<< orphan*/  change_cb_wrapper ; 
 int /*<<< orphan*/  commit_cb_wrapper ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  message_cb_wrapper ; 
 TYPE_3__* FUNC14 (int) ; 
 int /*<<< orphan*/  truncate_cb_wrapper ; 
 int /*<<< orphan*/  wal_segment_size ; 

__attribute__((used)) static LogicalDecodingContext *
FUNC15(List *output_plugin_options,
					   XLogRecPtr start_lsn,
					   TransactionId xmin_horizon,
					   bool need_full_snapshot,
					   bool fast_forward,
					   XLogPageReadCB read_page,
					   LogicalOutputPluginWriterPrepareWrite prepare_write,
					   LogicalOutputPluginWriterWrite do_write,
					   LogicalOutputPluginWriterUpdateProgress update_progress)
{
	ReplicationSlot *slot;
	MemoryContext context,
				old_context;
	LogicalDecodingContext *ctx;

	/* shorter lines... */
	slot = MyReplicationSlot;

	context = FUNC0(CurrentMemoryContext,
									"Logical decoding context",
									ALLOCSET_DEFAULT_SIZES);
	old_context = FUNC6(context);
	ctx = FUNC14(sizeof(LogicalDecodingContext));

	ctx->context = context;

	/*
	 * (re-)load output plugins, so we detect a bad (removed) output plugin
	 * now.
	 */
	if (!fast_forward)
		FUNC5(&ctx->callbacks, FUNC7(slot->data.plugin));

	/*
	 * Now that the slot's xmin has been set, we can announce ourselves as a
	 * logical decoding backend which doesn't need to be checked individually
	 * when computing the xmin horizon because the xmin is enforced via
	 * replication slots.
	 *
	 * We can only do so if we're outside of a transaction (i.e. the case when
	 * streaming changes via walsender), otherwise an already setup
	 * snapshot/xid would end up being ignored. That's not a particularly
	 * bothersome restriction since the SQL interface can't be used for
	 * streaming anyway.
	 */
	if (!FUNC2())
	{
		FUNC3(ProcArrayLock, LW_EXCLUSIVE);
		MyPgXact->vacuumFlags |= PROC_IN_LOGICAL_DECODING;
		FUNC4(ProcArrayLock);
	}

	ctx->slot = slot;

	ctx->reader = FUNC9(wal_segment_size, NULL, read_page, ctx);
	if (!ctx->reader)
		FUNC10(ERROR,
				(FUNC11(ERRCODE_OUT_OF_MEMORY),
				 FUNC12("out of memory")));

	ctx->reorder = FUNC8();
	ctx->snapshot_builder =
		FUNC1(ctx->reorder, xmin_horizon, start_lsn,
								need_full_snapshot);

	ctx->reorder->private_data = ctx;

	/* wrap output plugin callbacks, so we can add error context information */
	ctx->reorder->begin = begin_cb_wrapper;
	ctx->reorder->apply_change = change_cb_wrapper;
	ctx->reorder->apply_truncate = truncate_cb_wrapper;
	ctx->reorder->commit = commit_cb_wrapper;
	ctx->reorder->message = message_cb_wrapper;

	ctx->out = FUNC13();
	ctx->prepare_write = prepare_write;
	ctx->write = do_write;
	ctx->update_progress = update_progress;

	ctx->output_plugin_options = output_plugin_options;

	ctx->fast_forward = fast_forward;

	FUNC6(old_context);

	return ctx;
}