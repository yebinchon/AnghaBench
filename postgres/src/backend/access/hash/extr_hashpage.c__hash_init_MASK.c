#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {double num_tuples; int /*<<< orphan*/  ffactor; int /*<<< orphan*/  procid; } ;
typedef  TYPE_1__ xl_hash_init_meta_page ;
struct TYPE_16__ {int /*<<< orphan*/  bmsize; } ;
typedef  TYPE_2__ xl_hash_init_bitmap_page ;
typedef  scalar_t__ uint32 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_18__ {scalar_t__ hashm_maxbucket; size_t hashm_nmaps; int /*<<< orphan*/  hashm_bmsize; scalar_t__* hashm_mapp; int /*<<< orphan*/  hashm_ffactor; int /*<<< orphan*/  hashm_procid; } ;
struct TYPE_17__ {int /*<<< orphan*/  rd_node; } ;
typedef  TYPE_3__* Relation ;
typedef  int /*<<< orphan*/  RegProcedure ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/  IndexTupleData ;
typedef  TYPE_4__* HashMetaPage ;
typedef  scalar_t__ ForkNumber ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASHSTANDARD_PROC ; 
 int /*<<< orphan*/  HASH_DEFAULT_FILLFACTOR ; 
 size_t HASH_MAX_BITMAPS ; 
 scalar_t__ HASH_METAPAGE ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INIT_FORKNUM ; 
 int /*<<< orphan*/  LH_BUCKET_PAGE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int REGBUF_STANDARD ; 
 int REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 scalar_t__ FUNC8 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  SizeOfHashInitBitmapPage ; 
 int /*<<< orphan*/  SizeOfHashInitMetaPage ; 
 int /*<<< orphan*/  XLOG_HASH_INIT_BITMAP_PAGE ; 
 int /*<<< orphan*/  XLOG_HASH_INIT_META_PAGE ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 

uint32
FUNC27(Relation rel, double num_tuples, ForkNumber forkNum)
{
	Buffer		metabuf;
	Buffer		buf;
	Buffer		bitmapbuf;
	Page		pg;
	HashMetaPage metap;
	RegProcedure procid;
	int32		data_width;
	int32		item_width;
	int32		ffactor;
	uint32		num_buckets;
	uint32		i;
	bool		use_wal;

	/* safety check */
	if (FUNC8(rel, forkNum) != 0)
		FUNC21(ERROR, "cannot initialize non-empty hash index \"%s\"",
			 FUNC9(rel));

	/*
	 * WAL log creation of pages if the relation is persistent, or this is the
	 * init fork.  Init forks for unlogged relations always need to be WAL
	 * logged.
	 */
	use_wal = FUNC11(rel) || forkNum == INIT_FORKNUM;

	/*
	 * Determine the target fill factor (in tuples per bucket) for this index.
	 * The idea is to make the fill factor correspond to pages about as full
	 * as the user-settable fillfactor parameter says.  We can compute it
	 * exactly since the index datatype (i.e. uint32 hash key) is fixed-width.
	 */
	data_width = sizeof(uint32);
	item_width = FUNC5(sizeof(IndexTupleData)) + FUNC5(data_width) +
		sizeof(ItemIdData);		/* include the line pointer */
	ffactor = FUNC10(rel, HASH_DEFAULT_FILLFACTOR) / item_width;
	/* keep to a sane range */
	if (ffactor < 10)
		ffactor = 10;

	procid = FUNC25(rel, 1, HASHSTANDARD_PROC);

	/*
	 * We initialize the metapage, the first N bucket pages, and the first
	 * bitmap page in sequence, using _hash_getnewbuf to cause smgrextend()
	 * calls to occur.  This ensures that the smgr level has the right idea of
	 * the physical index length.
	 *
	 * Critical section not required, because on error the creation of the
	 * whole relation will be rolled back.
	 */
	metabuf = FUNC16(rel, HASH_METAPAGE, forkNum);
	FUNC17(metabuf, num_tuples, procid, ffactor, false);
	FUNC6(metabuf);

	pg = FUNC1(metabuf);
	metap = FUNC3(pg);

	/* XLOG stuff */
	if (use_wal)
	{
		xl_hash_init_meta_page xlrec;
		XLogRecPtr	recptr;

		xlrec.num_tuples = num_tuples;
		xlrec.procid = metap->hashm_procid;
		xlrec.ffactor = metap->hashm_ffactor;

		FUNC12();
		FUNC15((char *) &xlrec, SizeOfHashInitMetaPage);
		FUNC14(0, metabuf, REGBUF_WILL_INIT | REGBUF_STANDARD);

		recptr = FUNC13(RM_HASH_ID, XLOG_HASH_INIT_META_PAGE);

		FUNC7(FUNC1(metabuf), recptr);
	}

	num_buckets = metap->hashm_maxbucket + 1;

	/*
	 * Release buffer lock on the metapage while we initialize buckets.
	 * Otherwise, we'll be in interrupt holdoff and the CHECK_FOR_INTERRUPTS
	 * won't accomplish anything.  It's a bad idea to hold buffer locks for
	 * long intervals in any case, since that can block the bgwriter.
	 */
	FUNC4(metabuf, BUFFER_LOCK_UNLOCK);

	/*
	 * Initialize and WAL Log the first N buckets
	 */
	for (i = 0; i < num_buckets; i++)
	{
		BlockNumber blkno;

		/* Allow interrupts, in case N is huge */
		FUNC2();

		blkno = FUNC0(metap, i);
		buf = FUNC16(rel, blkno, forkNum);
		FUNC19(buf, metap->hashm_maxbucket, i, LH_BUCKET_PAGE, false);
		FUNC6(buf);

		if (use_wal)
			FUNC26(&rel->rd_node,
						forkNum,
						blkno,
						FUNC1(buf),
						true);
		FUNC20(rel, buf);
	}

	/* Now reacquire buffer lock on metapage */
	FUNC4(metabuf, BUFFER_LOCK_EXCLUSIVE);

	/*
	 * Initialize bitmap page
	 */
	bitmapbuf = FUNC16(rel, num_buckets + 1, forkNum);
	FUNC18(bitmapbuf, metap->hashm_bmsize, false);
	FUNC6(bitmapbuf);

	/* add the new bitmap page to the metapage's list of bitmaps */
	/* metapage already has a write lock */
	if (metap->hashm_nmaps >= HASH_MAX_BITMAPS)
		FUNC22(ERROR,
				(FUNC23(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC24("out of overflow pages in hash index \"%s\"",
						FUNC9(rel))));

	metap->hashm_mapp[metap->hashm_nmaps] = num_buckets + 1;

	metap->hashm_nmaps++;
	FUNC6(metabuf);

	/* XLOG stuff */
	if (use_wal)
	{
		xl_hash_init_bitmap_page xlrec;
		XLogRecPtr	recptr;

		xlrec.bmsize = metap->hashm_bmsize;

		FUNC12();
		FUNC15((char *) &xlrec, SizeOfHashInitBitmapPage);
		FUNC14(0, bitmapbuf, REGBUF_WILL_INIT);

		/*
		 * This is safe only because nobody else can be modifying the index at
		 * this stage; it's only visible to the transaction that is creating
		 * it.
		 */
		FUNC14(1, metabuf, REGBUF_STANDARD);

		recptr = FUNC13(RM_HASH_ID, XLOG_HASH_INIT_BITMAP_PAGE);

		FUNC7(FUNC1(bitmapbuf), recptr);
		FUNC7(FUNC1(metabuf), recptr);
	}

	/* all done */
	FUNC20(rel, bitmapbuf);
	FUNC20(rel, metabuf);

	return num_buckets;
}