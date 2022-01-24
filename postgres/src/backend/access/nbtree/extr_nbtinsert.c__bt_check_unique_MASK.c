#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_20__ {scalar_t__ buf; int bounds_valid; scalar_t__ low; scalar_t__ stricthigh; TYPE_3__* itup_key; TYPE_2__* itup; } ;
struct TYPE_19__ {int /*<<< orphan*/  btpo_next; int /*<<< orphan*/  btpo_flags; } ;
struct TYPE_18__ {int /*<<< orphan*/ * scantid; int /*<<< orphan*/  anynullkeys; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_16__ {int /*<<< orphan*/  speculativeToken; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; } ;
typedef  TYPE_1__ SnapshotData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexUniqueCheck ;
typedef  TYPE_2__* IndexTuple ;
typedef  int /*<<< orphan*/  Datum ;
typedef  scalar_t__ Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_3__* BTScanInsert ;
typedef  TYPE_4__* BTPageOpaque ;
typedef  TYPE_5__* BTInsertState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTP_HAS_GARBAGE ; 
 int /*<<< orphan*/  BT_READ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERRCODE_UNIQUE_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int INDEX_MAX_KEYS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__) ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_4__*) ; 
 scalar_t__ P_HIKEY ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_4__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 TYPE_1__* SnapshotSelf ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIQUE_CHECK_EXISTING ; 
 scalar_t__ UNIQUE_CHECK_PARTIAL ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int*) ; 

__attribute__((used)) static TransactionId
FUNC33(Relation rel, BTInsertState insertstate, Relation heapRel,
				 IndexUniqueCheck checkUnique, bool *is_unique,
				 uint32 *speculativeToken)
{
	IndexTuple	itup = insertstate->itup;
	BTScanInsert itup_key = insertstate->itup_key;
	SnapshotData SnapshotDirty;
	OffsetNumber offset;
	OffsetNumber maxoff;
	Page		page;
	BTPageOpaque opaque;
	Buffer		nbuf = InvalidBuffer;
	bool		found = false;

	/* Assume unique until we find a duplicate */
	*is_unique = true;

	FUNC4(SnapshotDirty);

	page = FUNC1(insertstate->buf);
	opaque = (BTPageOpaque) FUNC16(page);
	maxoff = FUNC15(page);

	/*
	 * Find the first tuple with the same key.
	 *
	 * This also saves the binary search bounds in insertstate.  We use them
	 * in the fastpath below, but also in the _bt_findinsertloc() call later.
	 */
	FUNC0(!insertstate->bounds_valid);
	offset = FUNC20(rel, insertstate);

	/*
	 * Scan over all equal tuples, looking for live conflicts.
	 */
	FUNC0(!insertstate->bounds_valid || insertstate->low == offset);
	FUNC0(!itup_key->anynullkeys);
	FUNC0(itup_key->scantid == NULL);
	for (;;)
	{
		ItemId		curitemid;
		IndexTuple	curitup;
		BlockNumber nblkno;

		/*
		 * make sure the offset points to an actual item before trying to
		 * examine it...
		 */
		if (offset <= maxoff)
		{
			/*
			 * Fastpath: In most cases, we can use cached search bounds to
			 * limit our consideration to items that are definitely
			 * duplicates.  This fastpath doesn't apply when the original page
			 * is empty, or when initial offset is past the end of the
			 * original page, which may indicate that we need to examine a
			 * second or subsequent page.
			 *
			 * Note that this optimization allows us to avoid calling
			 * _bt_compare() directly when there are no duplicates, as long as
			 * the offset where the key will go is not at the end of the page.
			 */
			if (nbuf == InvalidBuffer && offset == insertstate->stricthigh)
			{
				FUNC0(insertstate->bounds_valid);
				FUNC0(insertstate->low >= FUNC10(opaque));
				FUNC0(insertstate->low <= insertstate->stricthigh);
				FUNC0(FUNC21(rel, itup_key, page, offset) < 0);
				break;
			}

			curitemid = FUNC14(page, offset);

			/*
			 * We can skip items that are marked killed.
			 *
			 * In the presence of heavy update activity an index may contain
			 * many killed items with the same key; running _bt_compare() on
			 * each killed item gets expensive.  Just advance over killed
			 * items as quickly as we can.  We only apply _bt_compare() when
			 * we get to a non-killed item.  Even those comparisons could be
			 * avoided (in the common case where there is only one page to
			 * visit) by reusing bounds, but just skipping dead items is fast
			 * enough.
			 */
			if (!FUNC5(curitemid))
			{
				ItemPointerData htid;
				bool		all_dead;

				if (FUNC21(rel, itup_key, page, offset) != 0)
					break;		/* we're past all the equal tuples */

				/* okay, we gotta fetch the heap tuple ... */
				curitup = (IndexTuple) FUNC13(page, curitemid);
				htid = curitup->t_tid;

				/*
				 * If we are doing a recheck, we expect to find the tuple we
				 * are rechecking.  It's not a duplicate, but we have to keep
				 * scanning.
				 */
				if (checkUnique == UNIQUE_CHECK_EXISTING &&
					FUNC7(&htid, &itup->t_tid) == 0)
				{
					found = true;
				}

				/*
				 * Check if there's any table tuples for this index entry
				 * satisfying SnapshotDirty. This is necessary because for AMs
				 * with optimizations like heap's HOT, we have just a single
				 * index entry for the entire chain.
				 */
				else if (FUNC32(heapRel, &htid,
													   &SnapshotDirty,
													   &all_dead))
				{
					TransactionId xwait;

					/*
					 * It is a duplicate. If we are only doing a partial
					 * check, then don't bother checking if the tuple is being
					 * updated in another transaction. Just return the fact
					 * that it is a potential conflict and leave the full
					 * check till later. Don't invalidate binary search
					 * bounds.
					 */
					if (checkUnique == UNIQUE_CHECK_PARTIAL)
					{
						if (nbuf != InvalidBuffer)
							FUNC23(rel, nbuf);
						*is_unique = false;
						return InvalidTransactionId;
					}

					/*
					 * If this tuple is being updated by other transaction
					 * then we have to wait for its commit/abort.
					 */
					xwait = (FUNC19(SnapshotDirty.xmin)) ?
						SnapshotDirty.xmin : SnapshotDirty.xmax;

					if (FUNC19(xwait))
					{
						if (nbuf != InvalidBuffer)
							FUNC23(rel, nbuf);
						/* Tell _bt_doinsert to wait... */
						*speculativeToken = SnapshotDirty.speculativeToken;
						/* Caller releases lock on buf immediately */
						insertstate->bounds_valid = false;
						return xwait;
					}

					/*
					 * Otherwise we have a definite conflict.  But before
					 * complaining, look to see if the tuple we want to insert
					 * is itself now committed dead --- if so, don't complain.
					 * This is a waste of time in normal scenarios but we must
					 * do it to support CREATE INDEX CONCURRENTLY.
					 *
					 * We must follow HOT-chains here because during
					 * concurrent index build, we insert the root TID though
					 * the actual tuple may be somewhere in the HOT-chain.
					 * While following the chain we might not stop at the
					 * exact tuple which triggered the insert, but that's OK
					 * because if we find a live tuple anywhere in this chain,
					 * we have a unique key conflict.  The other live tuple is
					 * not part of this chain because it had a different index
					 * entry.
					 */
					htid = itup->t_tid;
					if (FUNC32(heapRel, &htid,
													  SnapshotSelf, NULL))
					{
						/* Normal case --- it's still live */
					}
					else
					{
						/*
						 * It's been deleted, so no error, and no need to
						 * continue searching
						 */
						break;
					}

					/*
					 * Check for a conflict-in as we would if we were going to
					 * write to this page.  We aren't actually going to write,
					 * but we want a chance to report SSI conflicts that would
					 * otherwise be masked by this unique constraint
					 * violation.
					 */
					FUNC3(rel, NULL, insertstate->buf);

					/*
					 * This is a definite conflict.  Break the tuple down into
					 * datums and report the error.  But first, make sure we
					 * release the buffer locks we're holding ---
					 * BuildIndexValueDescription could make catalog accesses,
					 * which in the worst case might touch this same index and
					 * cause deadlocks.
					 */
					if (nbuf != InvalidBuffer)
						FUNC23(rel, nbuf);
					FUNC23(rel, insertstate->buf);
					insertstate->buf = InvalidBuffer;
					insertstate->bounds_valid = false;

					{
						Datum		values[INDEX_MAX_KEYS];
						bool		isnull[INDEX_MAX_KEYS];
						char	   *key_desc;

						FUNC31(itup, FUNC17(rel),
										   values, isnull);

						key_desc = FUNC2(rel, values,
															  isnull);

						FUNC25(ERROR,
								(FUNC26(ERRCODE_UNIQUE_VIOLATION),
								 FUNC29("duplicate key value violates unique constraint \"%s\"",
										FUNC18(rel)),
								 key_desc ? FUNC27("Key %s already exists.",
													  key_desc) : 0,
								 FUNC30(heapRel,
													FUNC18(rel))));
					}
				}
				else if (all_dead)
				{
					/*
					 * The conflicting tuple (or whole HOT chain) is dead to
					 * everyone, so we may as well mark the index entry
					 * killed.
					 */
					FUNC6(curitemid);
					opaque->btpo_flags |= BTP_HAS_GARBAGE;

					/*
					 * Mark buffer with a dirty hint, since state is not
					 * crucial. Be sure to mark the proper buffer dirty.
					 */
					if (nbuf != InvalidBuffer)
						FUNC8(nbuf, true);
					else
						FUNC8(insertstate->buf, true);
				}
			}
		}

		/*
		 * Advance to next tuple to continue checking.
		 */
		if (offset < maxoff)
			offset = FUNC9(offset);
		else
		{
			int			highkeycmp;

			/* If scankey == hikey we gotta check the next page too */
			if (FUNC12(opaque))
				break;
			highkeycmp = FUNC21(rel, itup_key, page, P_HIKEY);
			FUNC0(highkeycmp <= 0);
			if (highkeycmp != 0)
				break;
			/* Advance to next non-dead page --- there must be one */
			for (;;)
			{
				nblkno = opaque->btpo_next;
				nbuf = FUNC22(rel, nbuf, nblkno, BT_READ);
				page = FUNC1(nbuf);
				opaque = (BTPageOpaque) FUNC16(page);
				if (!FUNC11(opaque))
					break;
				if (FUNC12(opaque))
					FUNC24(ERROR, "fell off the end of index \"%s\"",
						 FUNC18(rel));
			}
			maxoff = FUNC15(page);
			offset = FUNC10(opaque);
			/* Don't invalidate binary search bounds */
		}
	}

	/*
	 * If we are doing a recheck then we should have found the tuple we are
	 * checking.  Otherwise there's something very wrong --- probably, the
	 * index is on a non-immutable expression.
	 */
	if (checkUnique == UNIQUE_CHECK_EXISTING && !found)
		FUNC25(ERROR,
				(FUNC26(ERRCODE_INTERNAL_ERROR),
				 FUNC29("failed to re-find tuple within index \"%s\"",
						FUNC18(rel)),
				 FUNC28("This may be because of a non-immutable index expression."),
				 FUNC30(heapRel,
									FUNC18(rel))));

	if (nbuf != InvalidBuffer)
		FUNC23(rel, nbuf);

	return InvalidTransactionId;
}