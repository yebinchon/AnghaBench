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
typedef  TYPE_5__ xl_heap_update ;
struct TYPE_22__ {int /*<<< orphan*/  origptr; int /*<<< orphan*/ * record; } ;
typedef  TYPE_6__ XLogRecordBuffer ;
typedef  int /*<<< orphan*/  XLogReaderState ;
struct TYPE_25__ {int /*<<< orphan*/  reorder; TYPE_2__* slot; } ;
struct TYPE_24__ {scalar_t__ dbNode; } ;
struct TYPE_19__ {int clear_toast_afterwards; void* oldtuple; void* newtuple; int /*<<< orphan*/  relnode; } ;
struct TYPE_20__ {TYPE_3__ tp; } ;
struct TYPE_23__ {TYPE_4__ data; int /*<<< orphan*/  origin_id; int /*<<< orphan*/  action; } ;
struct TYPE_17__ {scalar_t__ database; } ;
struct TYPE_18__ {TYPE_1__ data; } ;
typedef  int Size ;
typedef  TYPE_7__ ReorderBufferChange ;
typedef  TYPE_8__ RelFileNode ;
typedef  TYPE_9__ LogicalDecodingContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,void*) ; 
 scalar_t__ FUNC1 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REORDER_BUFFER_CHANGE_UPDATE ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__*) ; 
 int SizeOfHeapHeader ; 
 int SizeOfHeapUpdate ; 
 int XLH_UPDATE_CONTAINS_NEW_TUPLE ; 
 int XLH_UPDATE_CONTAINS_OLD ; 
 char* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_8__*,int) ; 

__attribute__((used)) static void
FUNC12(LogicalDecodingContext *ctx, XLogRecordBuffer *buf)
{
	XLogReaderState *r = buf->record;
	xl_heap_update *xlrec;
	ReorderBufferChange *change;
	char	   *data;
	RelFileNode target_node;

	xlrec = (xl_heap_update *) FUNC7(r);

	/* only interested in our database */
	FUNC6(r, 0, &target_node, NULL, NULL);
	if (target_node.dbNode != ctx->slot->data.database)
		return;

	/* output plugin doesn't look for this origin, no need to queue */
	if (FUNC1(ctx, FUNC9(r)))
		return;

	change = FUNC2(ctx->reorder);
	change->action = REORDER_BUFFER_CHANGE_UPDATE;
	change->origin_id = FUNC9(r);
	FUNC11(&change->data.tp.relnode, &target_node, sizeof(RelFileNode));

	if (xlrec->flags & XLH_UPDATE_CONTAINS_NEW_TUPLE)
	{
		Size		datalen;
		Size		tuplelen;

		data = FUNC5(r, 0, &datalen);

		tuplelen = datalen - SizeOfHeapHeader;

		change->data.tp.newtuple =
			FUNC3(ctx->reorder, tuplelen);

		FUNC0(data, datalen, change->data.tp.newtuple);
	}

	if (xlrec->flags & XLH_UPDATE_CONTAINS_OLD)
	{
		Size		datalen;
		Size		tuplelen;

		/* caution, remaining data in record is not aligned */
		data = FUNC7(r) + SizeOfHeapUpdate;
		datalen = FUNC8(r) - SizeOfHeapUpdate;
		tuplelen = datalen - SizeOfHeapHeader;

		change->data.tp.oldtuple =
			FUNC3(ctx->reorder, tuplelen);

		FUNC0(data, datalen, change->data.tp.oldtuple);
	}

	change->data.tp.clear_toast_afterwards = true;

	FUNC4(ctx->reorder, FUNC10(r), buf->origptr, change);
}