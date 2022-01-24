#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int bmpage_found; int /*<<< orphan*/  bmsize; } ;
typedef  TYPE_1__ xl_hash_add_ovfl_page ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_11__ {int hashm_firstfree; int hashm_ovflpoint; int* hashm_spares; int hashm_nmaps; int /*<<< orphan*/  hashm_bmsize; void** hashm_mapp; } ;
struct TYPE_10__ {int hasho_flag; int /*<<< orphan*/  hasho_bucket; void* hasho_nextblkno; int /*<<< orphan*/  hasho_page_id; void* hasho_prevblkno; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_2__* HashPageOpaque ;
typedef  TYPE_3__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  Bucket ;
typedef  void* BlockNumber ;

/* Variables and functions */
 int ALL_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BITS_PER_MAP ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASHO_PAGE_ID ; 
 int HASH_MAX_BITMAPS ; 
 int /*<<< orphan*/  HASH_WRITE ; 
 int* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 void* InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int LH_BITMAP_PAGE ; 
 int LH_BUCKET_PAGE ; 
 int LH_META_PAGE ; 
 int LH_OVERFLOW_PAGE ; 
 int LH_PAGE_TYPE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  SizeOfHashAddOvflPage ; 
 int /*<<< orphan*/  XLOG_HASH_ADD_OVFL_PAGE ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC31 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (char*,int /*<<< orphan*/ ) ; 

Buffer
FUNC35(Relation rel, Buffer metabuf, Buffer buf, bool retain_pin)
{
	Buffer		ovflbuf;
	Page		page;
	Page		ovflpage;
	HashPageOpaque pageopaque;
	HashPageOpaque ovflopaque;
	HashMetaPage metap;
	Buffer		mapbuf = InvalidBuffer;
	Buffer		newmapbuf = InvalidBuffer;
	BlockNumber blkno;
	uint32		orig_firstfree;
	uint32		splitnum;
	uint32	   *freep = NULL;
	uint32		max_ovflpg;
	uint32		bit;
	uint32		bitmap_page_bit;
	uint32		first_page;
	uint32		last_bit;
	uint32		last_page;
	uint32		i,
				j;
	bool		page_found = false;

	/*
	 * Write-lock the tail page.  Here, we need to maintain locking order such
	 * that, first acquire the lock on tail page of bucket, then on meta page
	 * to find and lock the bitmap page and if it is found, then lock on meta
	 * page is released, then finally acquire the lock on new overflow buffer.
	 * We need this locking order to avoid deadlock with backends that are
	 * doing inserts.
	 *
	 * Note: We could have avoided locking many buffers here if we made two
	 * WAL records for acquiring an overflow page (one to allocate an overflow
	 * page and another to add it to overflow bucket chain).  However, doing
	 * so can leak an overflow page, if the system crashes after allocation.
	 * Needless to say, it is better to have a single record from a
	 * performance point of view as well.
	 */
	FUNC11(buf, BUFFER_LOCK_EXCLUSIVE);

	/* probably redundant... */
	FUNC24(rel, buf, LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);

	/* loop to find current tail page, in case someone else inserted too */
	for (;;)
	{
		BlockNumber nextblkno;

		page = FUNC6(buf);
		pageopaque = (HashPageOpaque) FUNC13(page);
		nextblkno = pageopaque->hasho_nextblkno;

		if (!FUNC4(nextblkno))
			break;

		/* we assume we do not need to write the unmodified page */
		if (retain_pin)
		{
			/* pin will be retained only for the primary bucket page */
			FUNC0((pageopaque->hasho_flag & LH_PAGE_TYPE) == LH_BUCKET_PAGE);
			FUNC11(buf, BUFFER_LOCK_UNLOCK);
		}
		else
			FUNC30(rel, buf);

		retain_pin = false;

		buf = FUNC26(rel, nextblkno, HASH_WRITE, LH_OVERFLOW_PAGE);
	}

	/* Get exclusive lock on the meta page */
	FUNC11(metabuf, BUFFER_LOCK_EXCLUSIVE);

	FUNC24(rel, metabuf, LH_META_PAGE);
	metap = FUNC10(FUNC6(metabuf));

	/* start search at hashm_firstfree */
	orig_firstfree = metap->hashm_firstfree;
	first_page = orig_firstfree >> FUNC3(metap);
	bit = orig_firstfree & FUNC2(metap);
	i = first_page;
	j = bit / BITS_PER_MAP;
	bit &= ~(BITS_PER_MAP - 1);

	/* outer loop iterates once per bitmap page */
	for (;;)
	{
		BlockNumber mapblkno;
		Page		mappage;
		uint32		last_inpage;

		/* want to end search with the last existing overflow page */
		splitnum = metap->hashm_ovflpoint;
		max_ovflpg = metap->hashm_spares[splitnum] - 1;
		last_page = max_ovflpg >> FUNC3(metap);
		last_bit = max_ovflpg & FUNC2(metap);

		if (i > last_page)
			break;

		FUNC0(i < metap->hashm_nmaps);
		mapblkno = metap->hashm_mapp[i];

		if (i == last_page)
			last_inpage = last_bit;
		else
			last_inpage = FUNC1(metap) - 1;

		/* Release exclusive lock on metapage while reading bitmap page */
		FUNC11(metabuf, BUFFER_LOCK_UNLOCK);

		mapbuf = FUNC26(rel, mapblkno, HASH_WRITE, LH_BITMAP_PAGE);
		mappage = FUNC6(mapbuf);
		freep = FUNC9(mappage);

		for (; bit <= last_inpage; j++, bit += BITS_PER_MAP)
		{
			if (freep[j] != ALL_SET)
			{
				page_found = true;

				/* Reacquire exclusive lock on the meta page */
				FUNC11(metabuf, BUFFER_LOCK_EXCLUSIVE);

				/* convert bit to bit number within page */
				bit += FUNC25(freep[j]);
				bitmap_page_bit = bit;

				/* convert bit to absolute bit number */
				bit += (i << FUNC3(metap));
				/* Calculate address of the recycled overflow page */
				blkno = FUNC31(metap, bit);

				/* Fetch and init the recycled page */
				ovflbuf = FUNC27(rel, blkno);

				goto found;
			}
		}

		/* No free space here, try to advance to next map page */
		FUNC30(rel, mapbuf);
		mapbuf = InvalidBuffer;
		i++;
		j = 0;					/* scan from start of next map page */
		bit = 0;

		/* Reacquire exclusive lock on the meta page */
		FUNC11(metabuf, BUFFER_LOCK_EXCLUSIVE);
	}

	/*
	 * No free pages --- have to extend the relation to add an overflow page.
	 * First, check to see if we have to add a new bitmap page too.
	 */
	if (last_bit == (uint32) (FUNC1(metap) - 1))
	{
		/*
		 * We create the new bitmap page with all pages marked "in use".
		 * Actually two pages in the new bitmap's range will exist
		 * immediately: the bitmap page itself, and the following page which
		 * is the one we return to the caller.  Both of these are correctly
		 * marked "in use".  Subsequent pages do not exist yet, but it is
		 * convenient to pre-mark them as "in use" too.
		 */
		bit = metap->hashm_spares[splitnum];

		/* metapage already has a write lock */
		if (metap->hashm_nmaps >= HASH_MAX_BITMAPS)
			FUNC32(ERROR,
					(FUNC33(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
					 FUNC34("out of overflow pages in hash index \"%s\"",
							FUNC15(rel))));

		newmapbuf = FUNC28(rel, FUNC31(metap, bit), MAIN_FORKNUM);
	}
	else
	{
		/*
		 * Nothing to do here; since the page will be past the last used page,
		 * we know its bitmap bit was preinitialized to "in use".
		 */
	}

	/* Calculate address of the new overflow page */
	bit = FUNC7(newmapbuf) ?
		metap->hashm_spares[splitnum] + 1 : metap->hashm_spares[splitnum];
	blkno = FUNC31(metap, bit);

	/*
	 * Fetch the page with _hash_getnewbuf to ensure smgr's idea of the
	 * relation length stays in sync with ours.  XXX It's annoying to do this
	 * with metapage write lock held; would be better to use a lock that
	 * doesn't block incoming searches.
	 *
	 * It is okay to hold two buffer locks here (one on tail page of bucket
	 * and other on new overflow page) since there cannot be anyone else
	 * contending for access to ovflbuf.
	 */
	ovflbuf = FUNC28(rel, blkno, MAIN_FORKNUM);

found:

	/*
	 * Do the update.  No ereport(ERROR) until changes are logged. We want to
	 * log the changes for bitmap page and overflow page together to avoid
	 * loss of pages in case the new page is added.
	 */
	FUNC18();

	if (page_found)
	{
		FUNC0(FUNC7(mapbuf));

		/* mark page "in use" in the bitmap */
		FUNC17(freep, bitmap_page_bit);
		FUNC12(mapbuf);
	}
	else
	{
		/* update the count to indicate new overflow page is added */
		metap->hashm_spares[splitnum]++;

		if (FUNC7(newmapbuf))
		{
			FUNC29(newmapbuf, metap->hashm_bmsize, false);
			FUNC12(newmapbuf);

			/* add the new bitmap page to the metapage's list of bitmaps */
			metap->hashm_mapp[metap->hashm_nmaps] = FUNC5(newmapbuf);
			metap->hashm_nmaps++;
			metap->hashm_spares[splitnum]++;
		}

		FUNC12(metabuf);

		/*
		 * for new overflow page, we don't need to explicitly set the bit in
		 * bitmap page, as by default that will be set to "in use".
		 */
	}

	/*
	 * Adjust hashm_firstfree to avoid redundant searches.  But don't risk
	 * changing it if someone moved it while we were searching bitmap pages.
	 */
	if (metap->hashm_firstfree == orig_firstfree)
	{
		metap->hashm_firstfree = bit + 1;
		FUNC12(metabuf);
	}

	/* initialize new overflow page */
	ovflpage = FUNC6(ovflbuf);
	ovflopaque = (HashPageOpaque) FUNC13(ovflpage);
	ovflopaque->hasho_prevblkno = FUNC5(buf);
	ovflopaque->hasho_nextblkno = InvalidBlockNumber;
	ovflopaque->hasho_bucket = pageopaque->hasho_bucket;
	ovflopaque->hasho_flag = LH_OVERFLOW_PAGE;
	ovflopaque->hasho_page_id = HASHO_PAGE_ID;

	FUNC12(ovflbuf);

	/* logically chain overflow page to previous page */
	pageopaque->hasho_nextblkno = FUNC5(ovflbuf);

	FUNC12(buf);

	/* XLOG stuff */
	if (FUNC16(rel))
	{
		XLogRecPtr	recptr;
		xl_hash_add_ovfl_page xlrec;

		xlrec.bmpage_found = page_found;
		xlrec.bmsize = metap->hashm_bmsize;

		FUNC19();
		FUNC23((char *) &xlrec, SizeOfHashAddOvflPage);

		FUNC22(0, ovflbuf, REGBUF_WILL_INIT);
		FUNC21(0, (char *) &pageopaque->hasho_bucket, sizeof(Bucket));

		FUNC22(1, buf, REGBUF_STANDARD);

		if (FUNC7(mapbuf))
		{
			FUNC22(2, mapbuf, REGBUF_STANDARD);
			FUNC21(2, (char *) &bitmap_page_bit, sizeof(uint32));
		}

		if (FUNC7(newmapbuf))
			FUNC22(3, newmapbuf, REGBUF_WILL_INIT);

		FUNC22(4, metabuf, REGBUF_STANDARD);
		FUNC21(4, (char *) &metap->hashm_firstfree, sizeof(uint32));

		recptr = FUNC20(RM_HASH_ID, XLOG_HASH_ADD_OVFL_PAGE);

		FUNC14(FUNC6(ovflbuf), recptr);
		FUNC14(FUNC6(buf), recptr);

		if (FUNC7(mapbuf))
			FUNC14(FUNC6(mapbuf), recptr);

		if (FUNC7(newmapbuf))
			FUNC14(FUNC6(newmapbuf), recptr);

		FUNC14(FUNC6(metabuf), recptr);
	}

	FUNC8();

	if (retain_pin)
		FUNC11(buf, BUFFER_LOCK_UNLOCK);
	else
		FUNC30(rel, buf);

	if (FUNC7(mapbuf))
		FUNC30(rel, mapbuf);

	FUNC11(metabuf, BUFFER_LOCK_UNLOCK);

	if (FUNC7(newmapbuf))
		FUNC30(rel, newmapbuf);

	return ovflbuf;
}