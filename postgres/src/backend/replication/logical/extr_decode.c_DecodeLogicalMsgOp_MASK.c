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
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ dbId; int prefix_size; int /*<<< orphan*/  message; int /*<<< orphan*/  message_size; scalar_t__ transactional; } ;
typedef  TYPE_3__ xl_logical_message ;
typedef  scalar_t__ uint8 ;
struct TYPE_12__ {int /*<<< orphan*/  endptr; int /*<<< orphan*/  origptr; int /*<<< orphan*/ * record; } ;
typedef  TYPE_4__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_13__ {int /*<<< orphan*/  reorder; TYPE_2__* slot; scalar_t__ fast_forward; int /*<<< orphan*/ * snapshot_builder; } ;
struct TYPE_9__ {scalar_t__ database; } ;
struct TYPE_10__ {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  SnapBuild ;
typedef  int /*<<< orphan*/  RepOriginId ;
typedef  TYPE_5__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SNAPBUILD_CONSISTENT ; 
 scalar_t__ SNAPBUILD_FULL_SNAPSHOT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ XLOG_LOGICAL_MESSAGE ; 
 scalar_t__ XLR_INFO_MASK ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	SnapBuild  *builder = ctx->snapshot_builder;
	XLogReaderState *r = buf->record;
	TransactionId xid = FUNC10(r);
	uint8		info = FUNC8(r) & ~XLR_INFO_MASK;
	RepOriginId origin_id = FUNC9(r);
	Snapshot	snapshot;
	xl_logical_message *message;

	if (info != XLOG_LOGICAL_MESSAGE)
		FUNC11(ERROR, "unexpected RM_LOGICALMSG_ID record type: %u", info);

	FUNC1(ctx->reorder, FUNC10(r), buf->origptr);

	/*
	 * If we don't have snapshot or we are just fast-forwarding, there is no
	 * point in decoding messages.
	 */
	if (FUNC3(builder) < SNAPBUILD_FULL_SNAPSHOT ||
		ctx->fast_forward)
		return;

	message = (xl_logical_message *) FUNC7(r);

	if (message->dbId != ctx->slot->data.database ||
		FUNC0(ctx, origin_id))
		return;

	if (message->transactional &&
		!FUNC5(builder, xid, buf->origptr))
		return;
	else if (!message->transactional &&
			 (FUNC3(builder) != SNAPBUILD_CONSISTENT ||
			  FUNC6(builder, buf->origptr)))
		return;

	snapshot = FUNC4(builder, xid);
	FUNC2(ctx->reorder, xid, snapshot, buf->endptr,
							  message->transactional,
							  message->message, /* first part of message is
												 * prefix */
							  message->message_size,
							  message->message + message->prefix_size);
}