#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  new_bucket_flag; int /*<<< orphan*/  old_bucket_flag; } ;
typedef  TYPE_1__ xl_hash_split_complete ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_12__ {int /*<<< orphan*/  hasho_flag; int /*<<< orphan*/  hasho_nextblkno; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_info; int /*<<< orphan*/  t_tid; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_2__* IndexTuple ;
typedef  TYPE_3__* HashPageOpaque ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ Bucket ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  HASH_READ ; 
 int /*<<< orphan*/  INDEX_MOVED_BY_SPLIT_MASK ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LH_BUCKET_BEING_POPULATED ; 
 int /*<<< orphan*/  LH_BUCKET_BEING_SPLIT ; 
 int /*<<< orphan*/  LH_BUCKET_NEEDS_SPLIT_CLEANUP ; 
 int /*<<< orphan*/  LH_OVERFLOW_PAGE ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  SizeOfHashSplitComplete ; 
 int /*<<< orphan*/  XLOG_HASH_SPLIT_COMPLETE ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__**,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC36(Relation rel,
				  Buffer metabuf,
				  Bucket obucket,
				  Bucket nbucket,
				  Buffer obuf,
				  Buffer nbuf,
				  HTAB *htab,
				  uint32 maxbucket,
				  uint32 highmask,
				  uint32 lowmask)
{
	Buffer		bucket_obuf;
	Buffer		bucket_nbuf;
	Page		opage;
	Page		npage;
	HashPageOpaque oopaque;
	HashPageOpaque nopaque;
	OffsetNumber itup_offsets[MaxIndexTuplesPerPage];
	IndexTuple	itups[MaxIndexTuplesPerPage];
	Size		all_tups_size = 0;
	int			i;
	uint16		nitups = 0;

	bucket_obuf = obuf;
	opage = FUNC3(obuf);
	oopaque = (HashPageOpaque) FUNC17(opage);

	bucket_nbuf = nbuf;
	npage = FUNC3(nbuf);
	nopaque = (HashPageOpaque) FUNC17(npage);

	/* Copy the predicate locks from old bucket to new bucket. */
	FUNC19(rel,
						   FUNC2(bucket_obuf),
						   FUNC2(bucket_nbuf));

	/*
	 * Partition the tuples in the old bucket between the old bucket and the
	 * new bucket, advancing along the old bucket's overflow bucket chain and
	 * adding overflow pages to the new bucket as needed.  Outer loop iterates
	 * once per page in old bucket.
	 */
	for (;;)
	{
		BlockNumber oblkno;
		OffsetNumber ooffnum;
		OffsetNumber omaxoffnum;

		/* Scan each tuple in old page */
		omaxoffnum = FUNC16(opage);
		for (ooffnum = FirstOffsetNumber;
			 ooffnum <= omaxoffnum;
			 ooffnum = FUNC12(ooffnum))
		{
			IndexTuple	itup;
			Size		itemsz;
			Bucket		bucket;
			bool		found = false;

			/* skip dead tuples */
			if (FUNC8(FUNC15(opage, ooffnum)))
				continue;

			/*
			 * Before inserting a tuple, probe the hash table containing TIDs
			 * of tuples belonging to new bucket, if we find a match, then
			 * skip that tuple, else fetch the item's hash key (conveniently
			 * stored in the item) and determine which bucket it now belongs
			 * in.
			 */
			itup = (IndexTuple) FUNC14(opage,
											FUNC15(opage, ooffnum));

			if (htab)
				(void) FUNC32(htab, &itup->t_tid, HASH_FIND, &found);

			if (found)
				continue;

			bucket = FUNC29(FUNC27(itup),
										  maxbucket, highmask, lowmask);

			if (bucket == nbucket)
			{
				IndexTuple	new_itup;

				/*
				 * make a copy of index tuple as we have to scribble on it.
				 */
				new_itup = FUNC4(itup);

				/*
				 * mark the index tuple as moved by split, such tuples are
				 * skipped by scan if there is split in progress for a bucket.
				 */
				new_itup->t_info |= INDEX_MOVED_BY_SPLIT_MASK;

				/*
				 * insert the tuple into the new bucket.  if it doesn't fit on
				 * the current page in the new bucket, we must allocate a new
				 * overflow page and place the tuple on that page instead.
				 */
				itemsz = FUNC6(new_itup);
				itemsz = FUNC10(itemsz);

				if (FUNC13(npage, nitups + 1) < (all_tups_size + itemsz))
				{
					/*
					 * Change the shared buffer state in critical section,
					 * otherwise any error could make it unrecoverable.
					 */
					FUNC21();

					FUNC30(rel, nbuf, itups, itup_offsets, nitups);
					FUNC11(nbuf);
					/* log the split operation before releasing the lock */
					FUNC34(rel, nbuf);

					FUNC5();

					/* drop lock, but keep pin */
					FUNC9(nbuf, BUFFER_LOCK_UNLOCK);

					/* be tidy */
					for (i = 0; i < nitups; i++)
						FUNC35(itups[i]);
					nitups = 0;
					all_tups_size = 0;

					/* chain to a new overflow page */
					nbuf = FUNC26(rel, metabuf, nbuf, (nbuf == bucket_nbuf) ? true : false);
					npage = FUNC3(nbuf);
					nopaque = (HashPageOpaque) FUNC17(npage);
				}

				itups[nitups++] = new_itup;
				all_tups_size += itemsz;
			}
			else
			{
				/*
				 * the tuple stays on this page, so nothing to do.
				 */
				FUNC0(bucket == obucket);
			}
		}

		oblkno = oopaque->hasho_nextblkno;

		/* retain the pin on the old primary bucket */
		if (obuf == bucket_obuf)
			FUNC9(obuf, BUFFER_LOCK_UNLOCK);
		else
			FUNC31(rel, obuf);

		/* Exit loop if no more overflow pages in old bucket */
		if (!FUNC1(oblkno))
		{
			/*
			 * Change the shared buffer state in critical section, otherwise
			 * any error could make it unrecoverable.
			 */
			FUNC21();

			FUNC30(rel, nbuf, itups, itup_offsets, nitups);
			FUNC11(nbuf);
			/* log the split operation before releasing the lock */
			FUNC34(rel, nbuf);

			FUNC5();

			if (nbuf == bucket_nbuf)
				FUNC9(nbuf, BUFFER_LOCK_UNLOCK);
			else
				FUNC31(rel, nbuf);

			/* be tidy */
			for (i = 0; i < nitups; i++)
				FUNC35(itups[i]);
			break;
		}

		/* Else, advance to next old page */
		obuf = FUNC28(rel, oblkno, HASH_READ, LH_OVERFLOW_PAGE);
		opage = FUNC3(obuf);
		oopaque = (HashPageOpaque) FUNC17(opage);
	}

	/*
	 * We're at the end of the old bucket chain, so we're done partitioning
	 * the tuples.  Mark the old and new buckets to indicate split is
	 * finished.
	 *
	 * To avoid deadlocks due to locking order of buckets, first lock the old
	 * bucket and then the new bucket.
	 */
	FUNC9(bucket_obuf, BUFFER_LOCK_EXCLUSIVE);
	opage = FUNC3(bucket_obuf);
	oopaque = (HashPageOpaque) FUNC17(opage);

	FUNC9(bucket_nbuf, BUFFER_LOCK_EXCLUSIVE);
	npage = FUNC3(bucket_nbuf);
	nopaque = (HashPageOpaque) FUNC17(npage);

	FUNC21();

	oopaque->hasho_flag &= ~LH_BUCKET_BEING_SPLIT;
	nopaque->hasho_flag &= ~LH_BUCKET_BEING_POPULATED;

	/*
	 * After the split is finished, mark the old bucket to indicate that it
	 * contains deletable tuples.  We will clear split-cleanup flag after
	 * deleting such tuples either at the end of split or at the next split
	 * from old bucket or at the time of vacuum.
	 */
	oopaque->hasho_flag |= LH_BUCKET_NEEDS_SPLIT_CLEANUP;

	/*
	 * now write the buffers, here we don't release the locks as caller is
	 * responsible to release locks.
	 */
	FUNC11(bucket_obuf);
	FUNC11(bucket_nbuf);

	if (FUNC20(rel))
	{
		XLogRecPtr	recptr;
		xl_hash_split_complete xlrec;

		xlrec.old_bucket_flag = oopaque->hasho_flag;
		xlrec.new_bucket_flag = nopaque->hasho_flag;

		FUNC22();

		FUNC25((char *) &xlrec, SizeOfHashSplitComplete);

		FUNC24(0, bucket_obuf, REGBUF_STANDARD);
		FUNC24(1, bucket_nbuf, REGBUF_STANDARD);

		recptr = FUNC23(RM_HASH_ID, XLOG_HASH_SPLIT_COMPLETE);

		FUNC18(FUNC3(bucket_obuf), recptr);
		FUNC18(FUNC3(bucket_nbuf), recptr);
	}

	FUNC5();

	/*
	 * If possible, clean up the old bucket.  We might not be able to do this
	 * if someone else has a pin on it, but if not then we can go ahead.  This
	 * isn't absolutely necessary, but it reduces bloat; if we don't do it
	 * now, VACUUM will do it eventually, but maybe not until new overflow
	 * pages have been allocated.  Note that there's no need to clean up the
	 * new bucket.
	 */
	if (FUNC7(bucket_obuf))
	{
		FUNC9(bucket_nbuf, BUFFER_LOCK_UNLOCK);
		FUNC33(rel, obucket, bucket_obuf,
						  FUNC2(bucket_obuf), NULL,
						  maxbucket, highmask, lowmask, NULL, NULL, true,
						  NULL, NULL);
	}
	else
	{
		FUNC9(bucket_nbuf, BUFFER_LOCK_UNLOCK);
		FUNC9(bucket_obuf, BUFFER_LOCK_UNLOCK);
	}
}