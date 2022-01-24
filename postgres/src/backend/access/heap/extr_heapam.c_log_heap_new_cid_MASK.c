#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {void* combocid; void* cmax; void* cmin; int /*<<< orphan*/  target_tid; int /*<<< orphan*/  target_node; int /*<<< orphan*/  top_xid; } ;
typedef  TYPE_1__ xl_heap_new_cid ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_14__ {scalar_t__ t_tableOid; int /*<<< orphan*/  t_self; TYPE_3__* t_data; } ;
struct TYPE_13__ {int t_infomask; } ;
struct TYPE_12__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* HeapTupleHeader ;
typedef  TYPE_4__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int HEAP_COMBOCID ; 
 int HEAP_XMAX_INVALID ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (TYPE_3__*) ; 
 void* FUNC4 (TYPE_3__*) ; 
 void* FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 void* InvalidCommandId ; 
 scalar_t__ InvalidOid ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RM_HEAP2_ID ; 
 int /*<<< orphan*/  SizeOfHeapNewCid ; 
 int /*<<< orphan*/  XLOG_HEAP2_NEW_CID ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static XLogRecPtr
FUNC11(Relation relation, HeapTuple tup)
{
	xl_heap_new_cid xlrec;

	XLogRecPtr	recptr;
	HeapTupleHeader hdr = tup->t_data;

	FUNC0(FUNC7(&tup->t_self));
	FUNC0(tup->t_tableOid != InvalidOid);

	xlrec.top_xid = FUNC1();
	xlrec.target_node = relation->rd_node;
	xlrec.target_tid = tup->t_self;

	/*
	 * If the tuple got inserted & deleted in the same TX we definitely have a
	 * combocid, set cmin and cmax.
	 */
	if (hdr->t_infomask & HEAP_COMBOCID)
	{
		FUNC0(!(hdr->t_infomask & HEAP_XMAX_INVALID));
		FUNC0(!FUNC6(hdr));
		xlrec.cmin = FUNC4(hdr);
		xlrec.cmax = FUNC3(hdr);
		xlrec.combocid = FUNC5(hdr);
	}
	/* No combocid, so only cmin or cmax can be set by this TX */
	else
	{
		/*
		 * Tuple inserted.
		 *
		 * We need to check for LOCK ONLY because multixacts might be
		 * transferred to the new tuple in case of FOR KEY SHARE updates in
		 * which case there will be an xmax, although the tuple just got
		 * inserted.
		 */
		if (hdr->t_infomask & HEAP_XMAX_INVALID ||
			FUNC2(hdr->t_infomask))
		{
			xlrec.cmin = FUNC5(hdr);
			xlrec.cmax = InvalidCommandId;
		}
		/* Tuple from a different tx updated or deleted. */
		else
		{
			xlrec.cmin = InvalidCommandId;
			xlrec.cmax = FUNC5(hdr);

		}
		xlrec.combocid = InvalidCommandId;
	}

	/*
	 * Note that we don't need to register the buffer here, because this
	 * operation does not modify the page. The insert/update/delete that
	 * called us certainly did, but that's WAL-logged separately.
	 */
	FUNC8();
	FUNC10((char *) &xlrec, SizeOfHeapNewCid);

	/* will be looked at irrespective of origin */

	recptr = FUNC9(RM_HEAP2_ID, XLOG_HEAP2_NEW_CID);

	return recptr;
}