#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ targetBlk; } ;
typedef  TYPE_1__ xl_brin_revmap_extend ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_10__ {scalar_t__ lastRevmapPage; } ;
struct TYPE_9__ {scalar_t__ rm_lastRevmapPage; int /*<<< orphan*/  rm_metaBuf; int /*<<< orphan*/  rm_irel; int /*<<< orphan*/  rm_pagesPerRange; } ;
struct TYPE_8__ {int pd_lower; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_3__ BrinRevmap ;
typedef  TYPE_4__ BrinMetaPageData ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  BRIN_PAGETYPE_REVMAP ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERRCODE_INDEX_CORRUPTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ P_NEW ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  REGBUF_WILL_INIT ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RM_BRIN_ID ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  SizeOfBrinRevmapExtend ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_BRIN_REVMAP_EXTEND ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC30(BrinRevmap *revmap)
{
	Buffer		buf;
	Page		page;
	Page		metapage;
	BrinMetaPageData *metadata;
	BlockNumber mapBlk;
	BlockNumber nblocks;
	Relation	irel = revmap->rm_irel;
	bool		needLock = !FUNC11(irel);

	/*
	 * Lock the metapage. This locks out concurrent extensions of the revmap,
	 * but note that we still need to grab the relation extension lock because
	 * another backend can extend the index with regular BRIN pages.
	 */
	FUNC5(revmap->rm_metaBuf, BUFFER_LOCK_EXCLUSIVE);
	metapage = FUNC3(revmap->rm_metaBuf);
	metadata = (BrinMetaPageData *) FUNC8(metapage);

	/*
	 * Check that our cached lastRevmapPage value was up-to-date; if it
	 * wasn't, update the cached copy and have caller start over.
	 */
	if (metadata->lastRevmapPage != revmap->rm_lastRevmapPage)
	{
		revmap->rm_lastRevmapPage = metadata->lastRevmapPage;
		FUNC5(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);
		return;
	}
	mapBlk = metadata->lastRevmapPage + 1;

	nblocks = FUNC13(irel);
	if (mapBlk < nblocks)
	{
		buf = FUNC12(irel, mapBlk);
		FUNC5(buf, BUFFER_LOCK_EXCLUSIVE);
		page = FUNC3(buf);
	}
	else
	{
		if (needLock)
			FUNC6(irel, ExclusiveLock);

		buf = FUNC12(irel, P_NEW);
		if (FUNC2(buf) != mapBlk)
		{
			/*
			 * Very rare corner case: somebody extended the relation
			 * concurrently after we read its length.  If this happens, give
			 * up and have caller start over.  We will have to evacuate that
			 * page from under whoever is using it.
			 */
			if (needLock)
				FUNC18(irel, ExclusiveLock);
			FUNC5(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);
			FUNC16(buf);
			return;
		}
		FUNC5(buf, BUFFER_LOCK_EXCLUSIVE);
		page = FUNC3(buf);

		if (needLock)
			FUNC18(irel, ExclusiveLock);
	}

	/* Check that it's a regular block (or an empty page) */
	if (!FUNC9(page) && !FUNC0(page))
		FUNC27(ERROR,
				(FUNC28(ERRCODE_INDEX_CORRUPTED),
				 FUNC29("unexpected page type 0x%04X in BRIN index \"%s\" block %u",
						FUNC1(page),
						FUNC14(irel),
						FUNC2(buf))));

	/* If the page is in use, evacuate it and restart */
	if (FUNC26(irel, buf))
	{
		FUNC5(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);
		FUNC24(irel, revmap->rm_pagesPerRange, revmap, buf);

		/* have caller start over */
		return;
	}

	/*
	 * Ok, we have now locked the metapage and the target block. Re-initialize
	 * the target block as a revmap page, and update the metapage.
	 */
	FUNC17();

	/* the rm_tids array is initialized to all invalid by PageInit */
	FUNC25(page, BRIN_PAGETYPE_REVMAP);
	FUNC7(buf);

	metadata->lastRevmapPage = mapBlk;

	/*
	 * Set pd_lower just past the end of the metadata.  This is essential,
	 * because without doing so, metadata will be lost if xlog.c compresses
	 * the page.  (We must do this here because pre-v11 versions of PG did not
	 * set the metapage's pd_lower correctly, so a pg_upgraded index might
	 * contain the wrong value.)
	 */
	((PageHeader) metapage)->pd_lower =
		((char *) metadata + sizeof(BrinMetaPageData)) - (char *) metapage;

	FUNC7(revmap->rm_metaBuf);

	if (FUNC15(revmap->rm_irel))
	{
		xl_brin_revmap_extend xlrec;
		XLogRecPtr	recptr;

		xlrec.targetBlk = mapBlk;

		FUNC20();
		FUNC23((char *) &xlrec, SizeOfBrinRevmapExtend);
		FUNC22(0, revmap->rm_metaBuf, REGBUF_STANDARD);

		FUNC22(1, buf, REGBUF_WILL_INIT);

		recptr = FUNC21(RM_BRIN_ID, XLOG_BRIN_REVMAP_EXTEND);
		FUNC10(metapage, recptr);
		FUNC10(page, recptr);
	}

	FUNC4();

	FUNC5(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);

	FUNC19(buf);
}