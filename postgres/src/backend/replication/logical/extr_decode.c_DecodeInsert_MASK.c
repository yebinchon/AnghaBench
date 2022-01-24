#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {int flags; } ;
typedef  TYPE_5__ xl_heap_insert ;
struct TYPE_22__ {int /*<<< orphan*/  origptr; int /*<<< orphan*/ * record; } ;
typedef  TYPE_6__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  XLogReaderState ;
struct TYPE_25__ {int /*<<< orphan*/  reorder; TYPE_2__* slot; } ;
struct TYPE_24__ {scalar_t__ dbNode; } ;
struct TYPE_19__ {int clear_toast_afterwards; int /*<<< orphan*/  newtuple; int /*<<< orphan*/  relnode; } ;
struct TYPE_20__ {TYPE_3__ tp; } ;
struct TYPE_23__ {TYPE_4__ data; int /*<<< orphan*/  origin_id; int /*<<< orphan*/  action; } ;
struct TYPE_17__ {scalar_t__ database; } ;
struct TYPE_18__ {TYPE_1__ data; } ;
typedef  scalar_t__ Size ;
typedef  TYPE_7__ ReorderBufferChange ;
typedef  TYPE_8__ RelFileNode ;
typedef  TYPE_9__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REORDER_BUFFER_CHANGE_INSERT ; 
 int /*<<< orphan*/  REORDER_BUFFER_CHANGE_INTERNAL_SPEC_INSERT ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 scalar_t__ SizeOfHeapHeader ; 
 int XLH_INSERT_CONTAINS_NEW_TUPLE ; 
 int XLH_INSERT_IS_SPECULATIVE ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_8__*,int) ; 

__attribute__((used)) static void
FUNC11(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	Size		datalen;
	char	   *tupledata;
	Size		tuplelen;
	XLogReaderState *r = buf->record;
	xl_heap_insert *xlrec;
	ReorderBufferChange *change;
	RelFileNode target_node;

	xlrec = (xl_heap_insert *) FUNC7(r);

	/*
	 * Ignore insert records without new tuples (this does happen when
	 * raw_heap_insert marks the TOAST record as HEAP_INSERT_NO_LOGICAL).
	 */
	if (!(xlrec->flags & XLH_INSERT_CONTAINS_NEW_TUPLE))
		return;

	/* only interested in our database */
	FUNC6(r, 0, &target_node, NULL, NULL);
	if (target_node.dbNode != ctx->slot->data.database)
		return;

	/* output plugin doesn't look for this origin, no need to queue */
	if (FUNC1(ctx, FUNC8(r)))
		return;

	change = FUNC2(ctx->reorder);
	if (!(xlrec->flags & XLH_INSERT_IS_SPECULATIVE))
		change->action = REORDER_BUFFER_CHANGE_INSERT;
	else
		change->action = REORDER_BUFFER_CHANGE_INTERNAL_SPEC_INSERT;
	change->origin_id = FUNC8(r);

	FUNC10(&change->data.tp.relnode, &target_node, sizeof(RelFileNode));

	tupledata = FUNC5(r, 0, &datalen);
	tuplelen = datalen - SizeOfHeapHeader;

	change->data.tp.newtuple =
		FUNC3(ctx->reorder, tuplelen);

	FUNC0(tupledata, datalen, change->data.tp.newtuple);

	change->data.tp.clear_toast_afterwards = true;

	FUNC4(ctx->reorder, FUNC9(r), buf->origptr, change);
}