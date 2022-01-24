#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
struct TYPE_15__ {int /*<<< orphan*/  origptr; int /*<<< orphan*/  record; } ;
typedef  TYPE_1__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_16__ {int /*<<< orphan*/  reorder; scalar_t__ fast_forward; int /*<<< orphan*/ * snapshot_builder; } ;
typedef  int /*<<< orphan*/  SnapBuild ;
typedef  TYPE_2__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
#define  XLOG_HEAP_CONFIRM 135 
#define  XLOG_HEAP_DELETE 134 
#define  XLOG_HEAP_HOT_UPDATE 133 
#define  XLOG_HEAP_INPLACE 132 
#define  XLOG_HEAP_INSERT 131 
#define  XLOG_HEAP_LOCK 130 
 int XLOG_HEAP_OPMASK ; 
#define  XLOG_HEAP_TRUNCATE 129 
#define  XLOG_HEAP_UPDATE 128 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC13(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	uint8		info = FUNC10(buf->record) & XLOG_HEAP_OPMASK;
	TransactionId xid = FUNC11(buf->record);
	SnapBuild  *builder = ctx->snapshot_builder;

	FUNC5(ctx->reorder, xid, buf->origptr);

	/*
	 * If we don't have snapshot or we are just fast-forwarding, there is no
	 * point in decoding data changes.
	 */
	if (FUNC7(builder) < SNAPBUILD_FULL_SNAPSHOT ||
		ctx->fast_forward)
		return;

	switch (info)
	{
		case XLOG_HEAP_INSERT:
			if (FUNC8(builder, xid, buf->origptr))
				FUNC1(ctx, buf);
			break;

			/*
			 * Treat HOT update as normal updates. There is no useful
			 * information in the fact that we could make it a HOT update
			 * locally and the WAL layout is compatible.
			 */
		case XLOG_HEAP_HOT_UPDATE:
		case XLOG_HEAP_UPDATE:
			if (FUNC8(builder, xid, buf->origptr))
				FUNC4(ctx, buf);
			break;

		case XLOG_HEAP_DELETE:
			if (FUNC8(builder, xid, buf->origptr))
				FUNC0(ctx, buf);
			break;

		case XLOG_HEAP_TRUNCATE:
			if (FUNC8(builder, xid, buf->origptr))
				FUNC3(ctx, buf);
			break;

		case XLOG_HEAP_INPLACE:

			/*
			 * Inplace updates are only ever performed on catalog tuples and
			 * can, per definition, not change tuple visibility.  Since we
			 * don't decode catalog tuples, we're not interested in the
			 * record's contents.
			 *
			 * In-place updates can be used either by XID-bearing transactions
			 * (e.g.  in CREATE INDEX CONCURRENTLY) or by XID-less
			 * transactions (e.g.  VACUUM).  In the former case, the commit
			 * record will include cache invalidations, so we mark the
			 * transaction as catalog modifying here. Currently that's
			 * redundant because the commit will do that as well, but once we
			 * support decoding in-progress relations, this will be important.
			 */
			if (!FUNC9(xid))
				break;

			FUNC8(builder, xid, buf->origptr);
			FUNC6(ctx->reorder, xid, buf->origptr);
			break;

		case XLOG_HEAP_CONFIRM:
			if (FUNC8(builder, xid, buf->origptr))
				FUNC2(ctx, buf);
			break;

		case XLOG_HEAP_LOCK:
			/* we don't care about row level locks for now */
			break;

		default:
			FUNC12(ERROR, "unexpected RM_HEAP_ID record type: %u", info);
			break;
	}
}