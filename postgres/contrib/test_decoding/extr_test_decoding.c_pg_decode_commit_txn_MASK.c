#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {scalar_t__ include_timestamp; scalar_t__ include_xids; int /*<<< orphan*/  xact_wrote_changes; scalar_t__ skip_empty_xacts; } ;
typedef  TYPE_1__ TestDecodingData ;
struct TYPE_10__ {int /*<<< orphan*/  out; TYPE_1__* output_plugin_private; } ;
struct TYPE_9__ {int /*<<< orphan*/  commit_time; int /*<<< orphan*/  xid; } ;
typedef  TYPE_2__ ReorderBufferTXN ;
typedef  TYPE_3__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(LogicalDecodingContext *ctx, ReorderBufferTXN *txn,
					 XLogRecPtr commit_lsn)
{
	TestDecodingData *data = ctx->output_plugin_private;

	if (data->skip_empty_xacts && !data->xact_wrote_changes)
		return;

	FUNC0(ctx, true);
	if (data->include_xids)
		FUNC2(ctx->out, "COMMIT %u", txn->xid);
	else
		FUNC3(ctx->out, "COMMIT");

	if (data->include_timestamp)
		FUNC2(ctx->out, " (at %s)",
						 FUNC4(txn->commit_time));

	FUNC1(ctx, true);
}