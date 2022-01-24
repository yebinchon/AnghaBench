#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  flags; scalar_t__ offnum; } ;
typedef  TYPE_2__ xl_heap_insert ;
struct TYPE_14__ {int /*<<< orphan*/  t_hoff; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  TYPE_3__ xl_heap_header ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_15__ {int t_len; int /*<<< orphan*/  t_self; TYPE_1__* t_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_hoff; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_4__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  int /*<<< orphan*/  BulkInsertState ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int HEAP_INSERT_NO_LOGICAL ; 
 int HEAP_INSERT_SKIP_WAL ; 
 int HEAP_INSERT_SPECULATIVE ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_KEEP_DATA ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_HEAP_ID ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int SizeOfHeapHeader ; 
 int /*<<< orphan*/  SizeOfHeapInsert ; 
 int SizeofHeapTupleHeader ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  VISIBILITYMAP_VALID_BITS ; 
 int /*<<< orphan*/  XLH_INSERT_ALL_VISIBLE_CLEARED ; 
 int /*<<< orphan*/  XLH_INSERT_CONTAINS_NEW_TUPLE ; 
 int /*<<< orphan*/  XLH_INSERT_IS_SPECULATIVE ; 
 int /*<<< orphan*/  XLOG_HEAP_INIT_PAGE ; 
 int /*<<< orphan*/  XLOG_HEAP_INSERT ; 
 int /*<<< orphan*/  XLOG_INCLUDE_ORIGIN ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*) ; 
 TYPE_4__* FUNC29 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC33(Relation relation, HeapTuple tup, CommandId cid,
			int options, BulkInsertState bistate)
{
	TransactionId xid = FUNC6();
	HeapTuple	heaptup;
	Buffer		buffer;
	Buffer		vmbuffer = InvalidBuffer;
	bool		all_visible_cleared = false;

	/*
	 * Fill in tuple header fields and toast the tuple if necessary.
	 *
	 * Note: below this point, heaptup is the data we actually intend to store
	 * into the relation; tup is the caller's original untoasted data.
	 */
	heaptup = FUNC29(relation, tup, xid, cid, options);

	/*
	 * Find buffer to insert this tuple into.  If the page is all visible,
	 * this will also pin the requisite visibility map page.
	 */
	buffer = FUNC14(relation, heaptup->t_len,
									   InvalidBuffer, options, bistate,
									   &vmbuffer, NULL);

	/*
	 * We're about to do the actual insert -- but check for conflict first, to
	 * avoid possibly having to roll back work we've just done.
	 *
	 * This is safe without a recheck as long as there is no possibility of
	 * another process scanning the page between this check and the insert
	 * being visible to the scan (i.e., an exclusive buffer content lock is
	 * continuously held from this point until the tuple insert is visible).
	 *
	 * For a heap insert, we only need to check for table-level SSI locks. Our
	 * new tuple can't possibly conflict with existing tuple locks, and heap
	 * page locks are only consolidated versions of tuple locks; they do not
	 * lock "gaps" as index page locks do.  So we don't need to specify a
	 * buffer when making the call, which makes for a faster check.
	 */
	FUNC4(relation, NULL, InvalidBuffer);

	/* NO EREPORT(ERROR) from here till changes are logged */
	FUNC20();

	FUNC18(relation, buffer, heaptup,
						 (options & HEAP_INSERT_SPECULATIVE) != 0);

	if (FUNC12(FUNC2(buffer)))
	{
		all_visible_cleared = true;
		FUNC10(FUNC2(buffer));
		FUNC32(relation,
							FUNC7(&(heaptup->t_self)),
							vmbuffer, VISIBILITYMAP_VALID_BITS);
	}

	/*
	 * XXX Should we set PageSetPrunable on this page ?
	 *
	 * The inserting transaction may eventually abort thus making this tuple
	 * DEAD and hence available for pruning. Though we don't want to optimize
	 * for aborts, if no other tuple in this page is UPDATEd/DELETEd, the
	 * aborted tuple will never be pruned until next vacuum is triggered.
	 *
	 * If you do add PageSetPrunable here, add it in heap_xlog_insert too.
	 */

	FUNC9(buffer);

	/* XLOG stuff */
	if (!(options & HEAP_INSERT_SKIP_WAL) && FUNC17(relation))
	{
		xl_heap_insert xlrec;
		xl_heap_header xlhdr;
		XLogRecPtr	recptr;
		Page		page = FUNC2(buffer);
		uint8		info = XLOG_HEAP_INSERT;
		int			bufflags = 0;

		/*
		 * If this is a catalog, we need to transmit combocids to properly
		 * decode, so log that as well.
		 */
		if (FUNC15(relation))
			FUNC30(relation, heaptup);

		/*
		 * If this is the single and first tuple on page, we can reinit the
		 * page instead of restoring the whole thing.  Set flag, and hide
		 * buffer references from XLogInsert.
		 */
		if (FUNC8(&(heaptup->t_self)) == FirstOffsetNumber &&
			FUNC11(page) == FirstOffsetNumber)
		{
			info |= XLOG_HEAP_INIT_PAGE;
			bufflags |= REGBUF_WILL_INIT;
		}

		xlrec.offnum = FUNC8(&heaptup->t_self);
		xlrec.flags = 0;
		if (all_visible_cleared)
			xlrec.flags |= XLH_INSERT_ALL_VISIBLE_CLEARED;
		if (options & HEAP_INSERT_SPECULATIVE)
			xlrec.flags |= XLH_INSERT_IS_SPECULATIVE;
		FUNC0(FUNC7(&heaptup->t_self) == FUNC1(buffer));

		/*
		 * For logical decoding, we need the tuple even if we're doing a full
		 * page write, so make sure it's included even if we take a full-page
		 * image. (XXX We could alternatively store a pointer into the FPW).
		 */
		if (FUNC16(relation) &&
			!(options & HEAP_INSERT_NO_LOGICAL))
		{
			xlrec.flags |= XLH_INSERT_CONTAINS_NEW_TUPLE;
			bufflags |= REGBUF_KEEP_DATA;
		}

		FUNC22();
		FUNC26((char *) &xlrec, SizeOfHeapInsert);

		xlhdr.t_infomask2 = heaptup->t_data->t_infomask2;
		xlhdr.t_infomask = heaptup->t_data->t_infomask;
		xlhdr.t_hoff = heaptup->t_data->t_hoff;

		/*
		 * note we mark xlhdr as belonging to buffer; if XLogInsert decides to
		 * write the whole page to the xlog, we don't need to store
		 * xl_heap_header in the xlog.
		 */
		FUNC25(0, buffer, REGBUF_STANDARD | bufflags);
		FUNC24(0, (char *) &xlhdr, SizeOfHeapHeader);
		/* PG73FORMAT: write bitmap [+ padding] [+ oid] + data */
		FUNC24(0,
							(char *) heaptup->t_data + SizeofHeapTupleHeader,
							heaptup->t_len - SizeofHeapTupleHeader);

		/* filtering by origin on a row level is much more efficient */
		FUNC27(XLOG_INCLUDE_ORIGIN);

		recptr = FUNC23(RM_HEAP_ID, info);

		FUNC13(page, recptr);
	}

	FUNC5();

	FUNC21(buffer);
	if (vmbuffer != InvalidBuffer)
		FUNC19(vmbuffer);

	/*
	 * If tuple is cachable, mark it for invalidation from the caches in case
	 * we abort.  Note it is OK to do this after releasing the buffer, because
	 * the heaptup data structure is all in local memory, not in the shared
	 * buffer.
	 */
	FUNC3(relation, heaptup, NULL);

	/* Note: speculative insertions are counted too, even if aborted later */
	FUNC31(relation, 1);

	/*
	 * If heaptup is a private copy, release it.  Don't forget to copy t_self
	 * back to the caller's image, too.
	 */
	if (heaptup != tup)
	{
		tup->t_self = heaptup->t_self;
		FUNC28(heaptup);
	}
}