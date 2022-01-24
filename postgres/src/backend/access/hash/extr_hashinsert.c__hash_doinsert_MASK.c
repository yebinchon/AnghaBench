#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  offnum; } ;
typedef  TYPE_1__ xl_hash_insert ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {int hashm_maxbucket; int hashm_ntuples; scalar_t__ hashm_ffactor; int /*<<< orphan*/  hashm_lowmask; int /*<<< orphan*/  hashm_highmask; } ;
struct TYPE_9__ {scalar_t__ hasho_bucket; int hasho_flag; int /*<<< orphan*/  hasho_nextblkno; } ;
typedef  scalar_t__ Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_2__* HashPageOpaque ;
typedef  TYPE_3__* HashMetaPage ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ Bucket ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_METAPAGE ; 
 int /*<<< orphan*/  HASH_NOLOCK ; 
 int /*<<< orphan*/  HASH_WRITE ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int LH_META_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int LH_PAGE_TYPE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  SizeOfHashInsert ; 
 int /*<<< orphan*/  XLOG_HASH_INSERT ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 
 int /*<<< orphan*/  FUNC37 (char*,scalar_t__,scalar_t__) ; 

void
FUNC38(Relation rel, IndexTuple itup, Relation heapRel)
{
	Buffer		buf = InvalidBuffer;
	Buffer		bucket_buf;
	Buffer		metabuf;
	HashMetaPage metap;
	HashMetaPage usedmetap = NULL;
	Page		metapage;
	Page		page;
	HashPageOpaque pageopaque;
	Size		itemsz;
	bool		do_expand;
	uint32		hashkey;
	Bucket		bucket;
	OffsetNumber itup_off;

	/*
	 * Get the hash key for the item (it's stored in the index tuple itself).
	 */
	hashkey = FUNC28(itup);

	/* compute item size too */
	itemsz = FUNC9(itup);
	itemsz = FUNC12(itemsz);	/* be safe, PageAddItem will do this but we
								 * need to be consistent */

restart_insert:

	/*
	 * Read the metapage.  We don't lock it yet; HashMaxItemSize() will
	 * examine pd_pagesize_version, but that can't change so we can examine it
	 * without a lock.
	 */
	metabuf = FUNC30(rel, HASH_METAPAGE, HASH_NOLOCK, LH_META_PAGE);
	metapage = FUNC2(metabuf);

	/*
	 * Check whether the item can fit on a hash page at all. (Eventually, we
	 * ought to try to apply TOAST methods if not.)  Note that at this point,
	 * itemsz doesn't include the ItemId.
	 *
	 * XXX this is useless code if we are only storing hash keys.
	 */
	if (itemsz > FUNC7(metapage))
		FUNC34(ERROR,
				(FUNC35(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC37("index row size %zu exceeds hash maximum %zu",
						itemsz, FUNC7(metapage)),
				 FUNC36("Values larger than a buffer page cannot be indexed.")));

	/* Lock the primary bucket page for the target bucket. */
	buf = FUNC29(rel, hashkey, HASH_WRITE,
										  &usedmetap);
	FUNC0(usedmetap != NULL);

	FUNC3(rel, NULL, buf);

	/* remember the primary bucket buffer to release the pin on it at end. */
	bucket_buf = buf;

	page = FUNC2(buf);
	pageopaque = (HashPageOpaque) FUNC15(page);
	bucket = pageopaque->hasho_bucket;

	/*
	 * If this bucket is in the process of being split, try to finish the
	 * split before inserting, because that might create room for the
	 * insertion to proceed without allocating an additional overflow page.
	 * It's only interesting to finish the split if we're trying to insert
	 * into the bucket from which we're removing tuples (the "old" bucket),
	 * not if we're trying to insert into the bucket into which tuples are
	 * being moved (the "new" bucket).
	 */
	if (FUNC5(pageopaque) && FUNC10(buf))
	{
		/* release the lock on bucket buffer, before completing the split. */
		FUNC11(buf, BUFFER_LOCK_UNLOCK);

		FUNC27(rel, metabuf, buf, bucket,
						   usedmetap->hashm_maxbucket,
						   usedmetap->hashm_highmask,
						   usedmetap->hashm_lowmask);

		/* release the pin on old and meta buffer.  retry for insert. */
		FUNC25(rel, buf);
		FUNC25(rel, metabuf);
		goto restart_insert;
	}

	/* Do the insertion */
	while (FUNC14(page) < itemsz)
	{
		BlockNumber nextblkno;

		/*
		 * Check if current page has any DEAD tuples. If yes, delete these
		 * tuples and see if we can get a space for the new item to be
		 * inserted before moving to the next page in the bucket chain.
		 */
		if (FUNC6(pageopaque))
		{

			if (FUNC10(buf))
			{
				FUNC33(rel, heapRel, metabuf, buf);

				if (FUNC14(page) >= itemsz)
					break;		/* OK, now we have enough space */
			}
		}

		/*
		 * no space on this page; check for an overflow page
		 */
		nextblkno = pageopaque->hasho_nextblkno;

		if (FUNC1(nextblkno))
		{
			/*
			 * ovfl page exists; go get it.  if it doesn't have room, we'll
			 * find out next pass through the loop test above.  we always
			 * release both the lock and pin if this is an overflow page, but
			 * only the lock if this is the primary bucket page, since the pin
			 * on the primary bucket must be retained throughout the scan.
			 */
			if (buf != bucket_buf)
				FUNC32(rel, buf);
			else
				FUNC11(buf, BUFFER_LOCK_UNLOCK);
			buf = FUNC30(rel, nextblkno, HASH_WRITE, LH_OVERFLOW_PAGE);
			page = FUNC2(buf);
		}
		else
		{
			/*
			 * we're at the end of the bucket chain and we haven't found a
			 * page with enough room.  allocate a new overflow page.
			 */

			/* release our write lock without modifying buffer */
			FUNC11(buf, BUFFER_LOCK_UNLOCK);

			/* chain to a new overflow page */
			buf = FUNC24(rel, metabuf, buf, (buf == bucket_buf) ? true : false);
			page = FUNC2(buf);

			/* should fit now, given test above */
			FUNC0(FUNC14(page) >= itemsz);
		}
		pageopaque = (HashPageOpaque) FUNC15(page);
		FUNC0((pageopaque->hasho_flag & LH_PAGE_TYPE) == LH_OVERFLOW_PAGE);
		FUNC0(pageopaque->hasho_bucket == bucket);
	}

	/*
	 * Write-lock the metapage so we can increment the tuple count. After
	 * incrementing it, check to see if it's time for a split.
	 */
	FUNC11(metabuf, BUFFER_LOCK_EXCLUSIVE);

	/* Do the update.  No ereport(ERROR) until changes are logged */
	FUNC18();

	/* found page with enough space, so add the item here */
	itup_off = FUNC31(rel, buf, itemsz, itup);
	FUNC13(buf);

	/* metapage operations */
	metap = FUNC8(metapage);
	metap->hashm_ntuples += 1;

	/* Make sure this stays in sync with _hash_expandtable() */
	do_expand = metap->hashm_ntuples >
		(double) metap->hashm_ffactor * (metap->hashm_maxbucket + 1);

	FUNC13(metabuf);

	/* XLOG stuff */
	if (FUNC17(rel))
	{
		xl_hash_insert xlrec;
		XLogRecPtr	recptr;

		xlrec.offnum = itup_off;

		FUNC19();
		FUNC23((char *) &xlrec, SizeOfHashInsert);

		FUNC22(1, metabuf, REGBUF_STANDARD);

		FUNC22(0, buf, REGBUF_STANDARD);
		FUNC21(0, (char *) itup, FUNC9(itup));

		recptr = FUNC20(RM_HASH_ID, XLOG_HASH_INSERT);

		FUNC16(FUNC2(buf), recptr);
		FUNC16(FUNC2(metabuf), recptr);
	}

	FUNC4();

	/* drop lock on metapage, but keep pin */
	FUNC11(metabuf, BUFFER_LOCK_UNLOCK);

	/*
	 * Release the modified page and ensure to release the pin on primary
	 * page.
	 */
	FUNC32(rel, buf);
	if (buf != bucket_buf)
		FUNC25(rel, bucket_buf);

	/* Attempt to split if a split is needed */
	if (do_expand)
		FUNC26(rel, metabuf);

	/* Finally drop our pin on the metapage */
	FUNC25(rel, metabuf);
}