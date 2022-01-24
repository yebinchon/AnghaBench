#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ dbId; int flags; int nrelids; int /*<<< orphan*/  relids; } ;
typedef  TYPE_5__ xl_heap_truncate ;
struct TYPE_19__ {int /*<<< orphan*/  origptr; int /*<<< orphan*/ * record; } ;
typedef  TYPE_6__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  XLogReaderState ;
struct TYPE_21__ {int /*<<< orphan*/  reorder; TYPE_2__* slot; } ;
struct TYPE_16__ {int cascade; int restart_seqs; int nrelids; int /*<<< orphan*/  relids; } ;
struct TYPE_17__ {TYPE_3__ truncate; } ;
struct TYPE_20__ {TYPE_4__ data; int /*<<< orphan*/  origin_id; int /*<<< orphan*/  action; } ;
struct TYPE_14__ {scalar_t__ database; } ;
struct TYPE_15__ {TYPE_1__ data; } ;
typedef  TYPE_7__ ReorderBufferChange ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_8__ LogicalDecodingContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REORDER_BUFFER_CHANGE_TRUNCATE ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int XLH_TRUNCATE_CASCADE ; 
 int XLH_TRUNCATE_RESTART_SEQS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	XLogReaderState *r = buf->record;
	xl_heap_truncate *xlrec;
	ReorderBufferChange *change;

	xlrec = (xl_heap_truncate *) FUNC4(r);

	/* only interested in our database */
	if (xlrec->dbId != ctx->slot->data.database)
		return;

	/* output plugin doesn't look for this origin, no need to queue */
	if (FUNC0(ctx, FUNC5(r)))
		return;

	change = FUNC1(ctx->reorder);
	change->action = REORDER_BUFFER_CHANGE_TRUNCATE;
	change->origin_id = FUNC5(r);
	if (xlrec->flags & XLH_TRUNCATE_CASCADE)
		change->data.truncate.cascade = true;
	if (xlrec->flags & XLH_TRUNCATE_RESTART_SEQS)
		change->data.truncate.restart_seqs = true;
	change->data.truncate.nrelids = xlrec->nrelids;
	change->data.truncate.relids = FUNC2(ctx->reorder,
														  xlrec->nrelids);
	FUNC7(change->data.truncate.relids, xlrec->relids,
		   xlrec->nrelids * sizeof(Oid));
	FUNC3(ctx->reorder, FUNC6(r),
							 buf->origptr, change);
}