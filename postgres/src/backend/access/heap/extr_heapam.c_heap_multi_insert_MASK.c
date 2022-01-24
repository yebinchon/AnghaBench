#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int datalen; int /*<<< orphan*/  t_hoff; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  TYPE_2__ xl_multi_insert_tuple ;
struct TYPE_18__ {int ntuples; int* offsets; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ xl_heap_multi_insert ;
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_19__ {int /*<<< orphan*/  tts_tid; int /*<<< orphan*/  tts_tableOid; } ;
typedef  TYPE_4__ TupleTableSlot ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_21__ {int t_len; int /*<<< orphan*/  t_self; TYPE_1__* t_data; int /*<<< orphan*/  t_tableOid; } ;
struct TYPE_20__ {char* data; } ;
struct TYPE_16__ {int /*<<< orphan*/  t_hoff; int /*<<< orphan*/  t_infomask; int /*<<< orphan*/  t_infomask2; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_5__ PGAlignedBlock ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_6__* HeapTuple ;
typedef  int /*<<< orphan*/  CommandId ;
typedef  int /*<<< orphan*/  BulkInsertState ;
typedef  scalar_t__ Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int BLCKSZ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 TYPE_6__* FUNC8 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  HEAP_DEFAULT_FILLFACTOR ; 
 int HEAP_INSERT_NO_LOGICAL ; 
 int HEAP_INSERT_SKIP_WAL ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_KEEP_DATA ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_HEAP2_ID ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  SizeOfHeapMultiInsert ; 
 int SizeOfMultiInsertTuple ; 
 int SizeofHeapTupleHeader ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  VISIBILITYMAP_VALID_BITS ; 
 int /*<<< orphan*/  XLH_INSERT_ALL_VISIBLE_CLEARED ; 
 int /*<<< orphan*/  XLH_INSERT_CONTAINS_NEW_TUPLE ; 
 int /*<<< orphan*/  XLH_INSERT_LAST_IN_MULTI ; 
 int /*<<< orphan*/  XLOG_HEAP2_MULTI_INSERT ; 
 int /*<<< orphan*/  XLOG_HEAP_INIT_PAGE ; 
 int /*<<< orphan*/  XLOG_INCLUDE_ORIGIN ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC34 (char*,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC36 (int /*<<< orphan*/ ,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC38 (char*,char*,int) ; 
 TYPE_6__** FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC42(Relation relation, TupleTableSlot **slots, int ntuples,
				  CommandId cid, int options, BulkInsertState bistate)
{
	TransactionId xid = FUNC9();
	HeapTuple  *heaptuples;
	int			i;
	int			ndone;
	PGAlignedBlock scratch;
	Page		page;
	bool		needwal;
	Size		saveFreeSpace;
	bool		need_tuple_data = FUNC23(relation);
	bool		need_cids = FUNC22(relation);

	/* currently not needed (thus unsupported) for heap_multi_insert() */
	FUNC1(!(options & HEAP_INSERT_NO_LOGICAL));

	needwal = !(options & HEAP_INSERT_SKIP_WAL) && FUNC24(relation);
	saveFreeSpace = FUNC21(relation,
												   HEAP_DEFAULT_FILLFACTOR);

	/* Toast and set header data in all the slots */
	heaptuples = FUNC39(ntuples * sizeof(HeapTuple));
	for (i = 0; i < ntuples; i++)
	{
		HeapTuple	tuple;

		tuple = FUNC8(slots[i], true, NULL);
		slots[i]->tts_tableOid = FUNC20(relation);
		tuple->t_tableOid = slots[i]->tts_tableOid;
		heaptuples[i] = FUNC36(relation, tuple, xid, cid,
											options);
	}

	/*
	 * We're about to do the actual inserts -- but check for conflict first,
	 * to minimize the possibility of having to roll back work we've just
	 * done.
	 *
	 * A check here does not definitively prevent a serialization anomaly;
	 * that check MUST be done at least past the point of acquiring an
	 * exclusive buffer content lock on every buffer that will be affected,
	 * and MAY be done after all inserts are reflected in the buffers and
	 * those locks are released; otherwise there race condition.  Since
	 * multiple buffers can be locked and unlocked in the loop below, and it
	 * would not be feasible to identify and lock all of those buffers before
	 * the loop, we must do a final check at the end.
	 *
	 * The check here could be omitted with no loss of correctness; it is
	 * present strictly as an optimization.
	 *
	 * For heap inserts, we only need to check for table-level SSI locks. Our
	 * new tuples can't possibly conflict with existing tuple locks, and heap
	 * page locks are only consolidated versions of tuple locks; they do not
	 * lock "gaps" as index page locks do.  So we don't need to specify a
	 * buffer when making the call, which makes for a faster check.
	 */
	FUNC6(relation, NULL, InvalidBuffer);

	ndone = 0;
	while (ndone < ntuples)
	{
		Buffer		buffer;
		Buffer		vmbuffer = InvalidBuffer;
		bool		all_visible_cleared = false;
		int			nthispage;

		FUNC4();

		/*
		 * Find buffer where at least the next tuple will fit.  If the page is
		 * all-visible, this will also pin the requisite visibility map page.
		 */
		buffer = FUNC19(relation, heaptuples[ndone]->t_len,
										   InvalidBuffer, options, bistate,
										   &vmbuffer, NULL);
		page = FUNC3(buffer);

		/* NO EREPORT(ERROR) from here till changes are logged */
		FUNC28();

		/*
		 * RelationGetBufferForTuple has ensured that the first tuple fits.
		 * Put that on the page, and then as many other tuples as fit.
		 */
		FUNC25(relation, buffer, heaptuples[ndone], false);
		for (nthispage = 1; ndone + nthispage < ntuples; nthispage++)
		{
			HeapTuple	heaptup = heaptuples[ndone + nthispage];

			if (FUNC15(page) < FUNC12(heaptup->t_len) + saveFreeSpace)
				break;

			FUNC25(relation, buffer, heaptup, false);

			/*
			 * We don't use heap_multi_insert for catalog tuples yet, but
			 * better be prepared...
			 */
			if (needwal && need_cids)
				FUNC37(relation, heaptup);
		}

		if (FUNC17(page))
		{
			all_visible_cleared = true;
			FUNC14(page);
			FUNC41(relation,
								FUNC2(buffer),
								vmbuffer, VISIBILITYMAP_VALID_BITS);
		}

		/*
		 * XXX Should we set PageSetPrunable on this page ? See heap_insert()
		 */

		FUNC13(buffer);

		/* XLOG stuff */
		if (needwal)
		{
			XLogRecPtr	recptr;
			xl_heap_multi_insert *xlrec;
			uint8		info = XLOG_HEAP2_MULTI_INSERT;
			char	   *tupledata;
			int			totaldatalen;
			char	   *scratchptr = scratch.data;
			bool		init;
			int			bufflags = 0;

			/*
			 * If the page was previously empty, we can reinit the page
			 * instead of restoring the whole thing.
			 */
			init = (FUNC11(&(heaptuples[ndone]->t_self)) == FirstOffsetNumber &&
					FUNC16(page) == FirstOffsetNumber + nthispage - 1);

			/* allocate xl_heap_multi_insert struct from the scratch area */
			xlrec = (xl_heap_multi_insert *) scratchptr;
			scratchptr += SizeOfHeapMultiInsert;

			/*
			 * Allocate offsets array. Unless we're reinitializing the page,
			 * in that case the tuples are stored in order starting at
			 * FirstOffsetNumber and we don't need to store the offsets
			 * explicitly.
			 */
			if (!init)
				scratchptr += nthispage * sizeof(OffsetNumber);

			/* the rest of the scratch space is used for tuple data */
			tupledata = scratchptr;

			xlrec->flags = all_visible_cleared ? XLH_INSERT_ALL_VISIBLE_CLEARED : 0;
			xlrec->ntuples = nthispage;

			/*
			 * Write out an xl_multi_insert_tuple and the tuple data itself
			 * for each tuple.
			 */
			for (i = 0; i < nthispage; i++)
			{
				HeapTuple	heaptup = heaptuples[ndone + i];
				xl_multi_insert_tuple *tuphdr;
				int			datalen;

				if (!init)
					xlrec->offsets[i] = FUNC11(&heaptup->t_self);
				/* xl_multi_insert_tuple needs two-byte alignment. */
				tuphdr = (xl_multi_insert_tuple *) FUNC27(scratchptr);
				scratchptr = ((char *) tuphdr) + SizeOfMultiInsertTuple;

				tuphdr->t_infomask2 = heaptup->t_data->t_infomask2;
				tuphdr->t_infomask = heaptup->t_data->t_infomask;
				tuphdr->t_hoff = heaptup->t_data->t_hoff;

				/* write bitmap [+ padding] [+ oid] + data */
				datalen = heaptup->t_len - SizeofHeapTupleHeader;
				FUNC38(scratchptr,
					   (char *) heaptup->t_data + SizeofHeapTupleHeader,
					   datalen);
				tuphdr->datalen = datalen;
				scratchptr += datalen;
			}
			totaldatalen = scratchptr - tupledata;
			FUNC0((scratchptr - scratch.data) < BLCKSZ);

			if (need_tuple_data)
				xlrec->flags |= XLH_INSERT_CONTAINS_NEW_TUPLE;

			/*
			 * Signal that this is the last xl_heap_multi_insert record
			 * emitted by this call to heap_multi_insert(). Needed for logical
			 * decoding so it knows when to cleanup temporary data.
			 */
			if (ndone + nthispage == ntuples)
				xlrec->flags |= XLH_INSERT_LAST_IN_MULTI;

			if (init)
			{
				info |= XLOG_HEAP_INIT_PAGE;
				bufflags |= REGBUF_WILL_INIT;
			}

			/*
			 * If we're doing logical decoding, include the new tuple data
			 * even if we take a full-page image of the page.
			 */
			if (need_tuple_data)
				bufflags |= REGBUF_KEEP_DATA;

			FUNC30();
			FUNC34((char *) xlrec, tupledata - scratch.data);
			FUNC33(0, buffer, REGBUF_STANDARD | bufflags);

			FUNC32(0, tupledata, totaldatalen);

			/* filtering by origin on a row level is much more efficient */
			FUNC35(XLOG_INCLUDE_ORIGIN);

			recptr = FUNC31(RM_HEAP2_ID, info);

			FUNC18(page, recptr);
		}

		FUNC7();

		FUNC29(buffer);
		if (vmbuffer != InvalidBuffer)
			FUNC26(vmbuffer);

		ndone += nthispage;
	}

	/*
	 * We're done with the actual inserts.  Check for conflicts again, to
	 * ensure that all rw-conflicts in to these inserts are detected.  Without
	 * this final check, a sequential scan of the heap may have locked the
	 * table after the "before" check, missing one opportunity to detect the
	 * conflict, and then scanned the table before the new tuples were there,
	 * missing the other chance to detect the conflict.
	 *
	 * For heap inserts, we only need to check for table-level SSI locks. Our
	 * new tuples can't possibly conflict with existing tuple locks, and heap
	 * page locks are only consolidated versions of tuple locks; they do not
	 * lock "gaps" as index page locks do.  So we don't need to specify a
	 * buffer when making the call.
	 */
	FUNC6(relation, NULL, InvalidBuffer);

	/*
	 * If tuples are cachable, mark them for invalidation from the caches in
	 * case we abort.  Note it is OK to do this after releasing the buffer,
	 * because the heaptuples data structure is all in local memory, not in
	 * the shared buffer.
	 */
	if (FUNC10(relation))
	{
		for (i = 0; i < ntuples; i++)
			FUNC5(relation, heaptuples[i], NULL);
	}

	/* copy t_self fields back to the caller's slots */
	for (i = 0; i < ntuples; i++)
		slots[i]->tts_tid = heaptuples[i]->t_self;

	FUNC40(relation, ntuples);
}