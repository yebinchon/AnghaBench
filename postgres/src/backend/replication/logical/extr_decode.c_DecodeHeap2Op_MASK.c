#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xl_heap_new_cid ;
typedef  int uint8 ;
struct TYPE_7__ {int /*<<< orphan*/  origptr; int /*<<< orphan*/  record; } ;
typedef  TYPE_1__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_8__ {scalar_t__ fast_forward; int /*<<< orphan*/  reorder; int /*<<< orphan*/ * snapshot_builder; } ;
typedef  int /*<<< orphan*/  SnapBuild ;
typedef  TYPE_2__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  XLOG_HEAP2_CLEAN 135 
#define  XLOG_HEAP2_CLEANUP_INFO 134 
#define  XLOG_HEAP2_FREEZE_PAGE 133 
#define  XLOG_HEAP2_LOCK_UPDATED 132 
#define  XLOG_HEAP2_MULTI_INSERT 131 
#define  XLOG_HEAP2_NEW_CID 130 
#define  XLOG_HEAP2_REWRITE 129 
#define  XLOG_HEAP2_VISIBLE 128 
 int XLOG_HEAP_OPMASK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	uint8		info = FUNC6(buf->record) & XLOG_HEAP_OPMASK;
	TransactionId xid = FUNC7(buf->record);
	SnapBuild  *builder = ctx->snapshot_builder;

	FUNC1(ctx->reorder, xid, buf->origptr);

	/*
	 * If we don't have snapshot or we are just fast-forwarding, there is no
	 * point in decoding changes.
	 */
	if (FUNC2(builder) < SNAPBUILD_FULL_SNAPSHOT ||
		ctx->fast_forward)
		return;

	switch (info)
	{
		case XLOG_HEAP2_MULTI_INSERT:
			if (!ctx->fast_forward &&
				FUNC3(builder, xid, buf->origptr))
				FUNC0(ctx, buf);
			break;
		case XLOG_HEAP2_NEW_CID:
			{
				xl_heap_new_cid *xlrec;

				xlrec = (xl_heap_new_cid *) FUNC5(buf->record);
				FUNC4(builder, xid, buf->origptr, xlrec);

				break;
			}
		case XLOG_HEAP2_REWRITE:

			/*
			 * Although these records only exist to serve the needs of logical
			 * decoding, all the work happens as part of crash or archive
			 * recovery, so we don't need to do anything here.
			 */
			break;

			/*
			 * Everything else here is just low level physical stuff we're not
			 * interested in.
			 */
		case XLOG_HEAP2_FREEZE_PAGE:
		case XLOG_HEAP2_CLEAN:
		case XLOG_HEAP2_CLEANUP_INFO:
		case XLOG_HEAP2_VISIBLE:
		case XLOG_HEAP2_LOCK_UPDATED:
			break;
		default:
			FUNC8(ERROR, "unexpected RM_HEAP2_ID record type: %u", info);
	}
}