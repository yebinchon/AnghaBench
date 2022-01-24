#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  oldestRunningXid; } ;
typedef  TYPE_1__ xl_running_xacts ;
struct TYPE_9__ {int /*<<< orphan*/  msgs; int /*<<< orphan*/  nmsgs; } ;
typedef  TYPE_2__ xl_invalidations ;
typedef  int uint8 ;
struct TYPE_10__ {int /*<<< orphan*/  origptr; int /*<<< orphan*/ * record; } ;
typedef  TYPE_3__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  XLogReaderState ;
struct TYPE_11__ {int /*<<< orphan*/  reorder; int /*<<< orphan*/  fast_forward; int /*<<< orphan*/ * snapshot_builder; } ;
typedef  int /*<<< orphan*/  SnapBuild ;
typedef  TYPE_4__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
#define  XLOG_INVALIDATIONS 130 
#define  XLOG_RUNNING_XACTS 129 
#define  XLOG_STANDBY_LOCK 128 
 int XLR_INFO_MASK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC8(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	SnapBuild  *builder = ctx->snapshot_builder;
	XLogReaderState *r = buf->record;
	uint8		info = FUNC5(r) & ~XLR_INFO_MASK;

	FUNC2(ctx->reorder, FUNC6(r), buf->origptr);

	switch (info)
	{
		case XLOG_RUNNING_XACTS:
			{
				xl_running_xacts *running = (xl_running_xacts *) FUNC4(r);

				FUNC3(builder, buf->origptr, running);

				/*
				 * Abort all transactions that we keep track of, that are
				 * older than the record's oldestRunningXid. This is the most
				 * convenient spot for doing so since, in contrast to shutdown
				 * or end-of-recovery checkpoints, we have information about
				 * all running transactions which includes prepared ones,
				 * while shutdown checkpoints just know that no non-prepared
				 * transactions are in progress.
				 */
				FUNC0(ctx->reorder, running->oldestRunningXid);
			}
			break;
		case XLOG_STANDBY_LOCK:
			break;
		case XLOG_INVALIDATIONS:
			{
				xl_invalidations *invalidations =
				(xl_invalidations *) FUNC4(r);

				if (!ctx->fast_forward)
					FUNC1(ctx->reorder,
													   invalidations->nmsgs,
													   invalidations->msgs);
			}
			break;
		default:
			FUNC7(ERROR, "unexpected RM_STANDBY_ID record type: %u", info);
	}
}