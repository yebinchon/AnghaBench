#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_22__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_27__ {void* buf; TYPE_3__* downlink; } ;
struct TYPE_26__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_23__ {scalar_t__ blkno; int num; } ;
struct TYPE_25__ {void* buffer; struct TYPE_25__* next; void* page; TYPE_1__ block; scalar_t__ list; TYPE_3__* itup; int /*<<< orphan*/  lenlist; } ;
struct TYPE_24__ {scalar_t__ rightlink; int /*<<< orphan*/  flags; } ;
typedef  TYPE_2__ SplitedPageLayout ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Relation ;
typedef  void* Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Item ;
typedef  TYPE_3__* IndexTuple ;
typedef  int /*<<< orphan*/  GistNSN ;
typedef  int /*<<< orphan*/  GISTSTATE ;
typedef  TYPE_4__ GISTPageSplitInfo ;
typedef  void* Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_LEAF ; 
 int FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int GIST_MAX_SPLIT_PAGES ; 
 scalar_t__ GIST_ROOT_BLKNO ; 
 int /*<<< orphan*/  GistBuildLSN ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 TYPE_22__* FUNC9 (void*) ; 
 scalar_t__ FUNC10 (void*) ; 
 scalar_t__ FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ InvalidBlockNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (void*,int) ; 
 int /*<<< orphan*/  FUNC22 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (void*,void*) ; 
 int /*<<< orphan*/  FUNC24 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 
 int /*<<< orphan*/  FUNC30 (int,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ) ; 
 void* FUNC33 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC34 (int /*<<< orphan*/ ,void*,TYPE_3__**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC36 (void*,int*,int,TYPE_3__**,int,void*) ; 
 TYPE_3__** FUNC37 (void*,int*) ; 
 int /*<<< orphan*/  FUNC38 (void*,TYPE_3__**,int,scalar_t__) ; 
 scalar_t__ FUNC39 (TYPE_3__**,int,int /*<<< orphan*/ *) ; 
 TYPE_3__** FUNC40 (TYPE_3__**,int*,TYPE_3__**,int) ; 
 int FUNC41 (void*,TYPE_3__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC43 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC44 (TYPE_3__**,TYPE_3__**,int) ; 
 void* FUNC45 (int) ; 

bool
FUNC46(Relation rel, Size freespace, GISTSTATE *giststate,
				Buffer buffer,
				IndexTuple *itup, int ntup, OffsetNumber oldoffnum,
				BlockNumber *newblkno,
				Buffer leftchildbuf,
				List **splitinfo,
				bool markfollowright,
				Relation heapRel,
				bool is_build)
{
	BlockNumber blkno = FUNC0(buffer);
	Page		page = FUNC1(buffer);
	bool		is_leaf = (FUNC11(page)) ? true : false;
	XLogRecPtr	recptr;
	int			i;
	bool		is_split;

	/*
	 * Refuse to modify a page that's incompletely split. This should not
	 * happen because we finish any incomplete splits while we walk down the
	 * tree. However, it's remotely possible that another concurrent inserter
	 * splits a parent page, and errors out before completing the split. We
	 * will just throw an error in that case, and leave any split we had in
	 * progress unfinished too. The next insert that comes along will clean up
	 * the mess.
	 */
	if (FUNC6(page))
		FUNC31(ERROR, "concurrent GiST page split was incomplete");

	*splitinfo = NIL;

	/*
	 * if isupdate, remove old key: This node's key has been modified, either
	 * because a child split occurred or because we needed to adjust our key
	 * for an insert in a child node. Therefore, remove the old version of
	 * this node's key.
	 *
	 * for WAL replay, in the non-split case we handle this by setting up a
	 * one-element todelete array; in the split case, it's handled implicitly
	 * because the tuple vector passed to gistSplit won't include this tuple.
	 */
	is_split = FUNC41(page, itup, ntup, oldoffnum, freespace);

	/*
	 * If leaf page is full, try at first to delete dead tuples. And then
	 * check again.
	 */
	if (is_split && FUNC11(page) && FUNC10(page))
	{
		FUNC42(rel, page, buffer, heapRel);
		is_split = FUNC41(page, itup, ntup, oldoffnum, freespace);
	}

	if (is_split)
	{
		/* no space for insertion */
		IndexTuple *itvec;
		int			tlen;
		SplitedPageLayout *dist = NULL,
				   *ptr;
		BlockNumber oldrlink = InvalidBlockNumber;
		GistNSN		oldnsn = 0;
		SplitedPageLayout rootpg;
		bool		is_rootsplit;
		int			npage;

		is_rootsplit = (blkno == GIST_ROOT_BLKNO);

		/*
		 * Form index tuples vector to split. If we're replacing an old tuple,
		 * remove the old version from the vector.
		 */
		itvec = FUNC37(page, &tlen);
		if (FUNC18(oldoffnum))
		{
			/* on inner page we should remove old tuple */
			int			pos = oldoffnum - FirstOffsetNumber;

			tlen--;
			if (pos != tlen)
				FUNC44(itvec + pos, itvec + pos + 1, sizeof(IndexTuple) * (tlen - pos));
		}
		itvec = FUNC40(itvec, &tlen, itup, ntup);
		dist = FUNC34(rel, page, itvec, tlen, giststate);

		/*
		 * Check that split didn't produce too many pages.
		 */
		npage = 0;
		for (ptr = dist; ptr; ptr = ptr->next)
			npage++;
		/* in a root split, we'll add one more page to the list below */
		if (is_rootsplit)
			npage++;
		if (npage > GIST_MAX_SPLIT_PAGES)
			FUNC31(ERROR, "GiST page split into too many halves (%d, maximum %d)",
				 npage, GIST_MAX_SPLIT_PAGES);

		/*
		 * Set up pages to work with. Allocate new buffers for all but the
		 * leftmost page. The original page becomes the new leftmost page, and
		 * is just replaced with the new contents.
		 *
		 * For a root-split, allocate new buffers for all child pages, the
		 * original page is overwritten with new root page containing
		 * downlinks to the new child pages.
		 */
		ptr = dist;
		if (!is_rootsplit)
		{
			/* save old rightlink and NSN */
			oldrlink = FUNC9(page)->rightlink;
			oldnsn = FUNC8(page);

			dist->buffer = buffer;
			dist->block.blkno = FUNC0(buffer);
			dist->page = FUNC20(FUNC1(buffer));

			/* clean all flags except F_LEAF */
			FUNC9(dist->page)->flags = (is_leaf) ? F_LEAF : 0;

			ptr = ptr->next;
		}
		for (; ptr; ptr = ptr->next)
		{
			/* Allocate new page */
			ptr->buffer = FUNC33(rel);
			FUNC4(ptr->buffer, (is_leaf) ? F_LEAF : 0);
			ptr->page = FUNC1(ptr->buffer);
			ptr->block.blkno = FUNC0(ptr->buffer);
			FUNC25(rel,
								   FUNC0(buffer),
								   FUNC0(ptr->buffer));
		}

		/*
		 * Now that we know which blocks the new pages go to, set up downlink
		 * tuples to point to them.
		 */
		for (ptr = dist; ptr; ptr = ptr->next)
		{
			FUNC16(&(ptr->itup->t_tid), ptr->block.blkno);
			FUNC13(ptr->itup);
		}

		/*
		 * If this is a root split, we construct the new root page with the
		 * downlinks here directly, instead of requiring the caller to insert
		 * them. Add the new root page to the list along with the child pages.
		 */
		if (is_rootsplit)
		{
			IndexTuple *downlinks;
			int			ndownlinks = 0;
			int			i;

			rootpg.buffer = buffer;
			rootpg.page = FUNC20(FUNC1(rootpg.buffer));
			FUNC9(rootpg.page)->flags = 0;

			/* Prepare a vector of all the downlinks */
			for (ptr = dist; ptr; ptr = ptr->next)
				ndownlinks++;
			downlinks = FUNC45(sizeof(IndexTuple) * ndownlinks);
			for (i = 0, ptr = dist; ptr; ptr = ptr->next)
				downlinks[i++] = ptr->itup;

			rootpg.block.blkno = GIST_ROOT_BLKNO;
			rootpg.block.num = ndownlinks;
			rootpg.list = FUNC39(downlinks, ndownlinks,
										  &(rootpg.lenlist));
			rootpg.itup = NULL;

			rootpg.next = dist;
			dist = &rootpg;
		}
		else
		{
			/* Prepare split-info to be returned to caller */
			for (ptr = dist; ptr; ptr = ptr->next)
			{
				GISTPageSplitInfo *si = FUNC45(sizeof(GISTPageSplitInfo));

				si->buf = ptr->buffer;
				si->downlink = ptr->itup;
				*splitinfo = FUNC43(*splitinfo, si);
			}
		}

		/*
		 * Fill all pages. All the pages are new, ie. freshly allocated empty
		 * pages, or a temporary copy of the old page.
		 */
		for (ptr = dist; ptr; ptr = ptr->next)
		{
			char	   *data = (char *) (ptr->list);

			for (i = 0; i < ptr->block.num; i++)
			{
				IndexTuple	thistup = (IndexTuple) data;

				if (FUNC19(ptr->page, (Item) data, FUNC14(thistup), i + FirstOffsetNumber, false, false) == InvalidOffsetNumber)
					FUNC31(ERROR, "failed to add item to index page in \"%s\"", FUNC26(rel));

				/*
				 * If this is the first inserted/updated tuple, let the caller
				 * know which page it landed on.
				 */
				if (newblkno && FUNC15(&thistup->t_tid, &(*itup)->t_tid))
					*newblkno = ptr->block.blkno;

				data += FUNC14(thistup);
			}

			/* Set up rightlinks */
			if (ptr->next && ptr->block.blkno != GIST_ROOT_BLKNO)
				FUNC9(ptr->page)->rightlink =
					ptr->next->block.blkno;
			else
				FUNC9(ptr->page)->rightlink = oldrlink;

			/*
			 * Mark the all but the right-most page with the follow-right
			 * flag. It will be cleared as soon as the downlink is inserted
			 * into the parent, but this ensures that if we error out before
			 * that, the index is still consistent. (in buffering build mode,
			 * any error will abort the index build anyway, so this is not
			 * needed.)
			 */
			if (ptr->next && !is_rootsplit && markfollowright)
				FUNC7(ptr->page);
			else
				FUNC5(ptr->page);

			/*
			 * Copy the NSN of the original page to all pages. The
			 * F_FOLLOW_RIGHT flags ensure that scans will follow the
			 * rightlinks until the downlinks are inserted.
			 */
			FUNC12(ptr->page, oldnsn);
		}

		/*
		 * gistXLogSplit() needs to WAL log a lot of pages, prepare WAL
		 * insertion for that. NB: The number of pages and data segments
		 * specified here must match the calculations in gistXLogSplit()!
		 */
		if (!is_build && FUNC27(rel))
			FUNC30(npage, 1 + npage * 2);

		FUNC28();

		/*
		 * Must mark buffers dirty before XLogInsert, even though we'll still
		 * be changing their opaque fields below.
		 */
		for (ptr = dist; ptr; ptr = ptr->next)
			FUNC17(ptr->buffer);
		if (FUNC2(leftchildbuf))
			FUNC17(leftchildbuf);

		/*
		 * The first page in the chain was a temporary working copy meant to
		 * replace the old page. Copy it over the old page.
		 */
		FUNC23(dist->page, FUNC1(dist->buffer));
		dist->page = FUNC1(dist->buffer);

		/*
		 * Write the WAL record.
		 *
		 * If we're building a new index, however, we don't WAL-log changes
		 * yet. The LSN-NSN interlock between parent and child requires that
		 * LSNs never move backwards, so set the LSNs to a value that's
		 * smaller than any real or fake unlogged LSN that might be generated
		 * later. (There can't be any concurrent scans during index build, so
		 * we don't need to be able to detect concurrent splits yet.)
		 */
		if (is_build)
			recptr = GistBuildLSN;
		else
		{
			if (FUNC27(rel))
				recptr = FUNC35(is_leaf,
									   dist, oldrlink, oldnsn, leftchildbuf,
									   markfollowright);
			else
				recptr = FUNC32(rel);
		}

		for (ptr = dist; ptr; ptr = ptr->next)
			FUNC24(ptr->page, recptr);

		/*
		 * Return the new child buffers to the caller.
		 *
		 * If this was a root split, we've already inserted the downlink
		 * pointers, in the form of a new root page. Therefore we can release
		 * all the new buffers, and keep just the root page locked.
		 */
		if (is_rootsplit)
		{
			for (ptr = dist->next; ptr; ptr = ptr->next)
				FUNC29(ptr->buffer);
		}
	}
	else
	{
		/*
		 * Enough space.  We always get here if ntup==0.
		 */
		FUNC28();

		/*
		 * Delete old tuple if any, then insert new tuple(s) if any.  If
		 * possible, use the fast path of PageIndexTupleOverwrite.
		 */
		if (FUNC18(oldoffnum))
		{
			if (ntup == 1)
			{
				/* One-for-one replacement, so use PageIndexTupleOverwrite */
				if (!FUNC22(page, oldoffnum, (Item) *itup,
											 FUNC14(*itup)))
					FUNC31(ERROR, "failed to add item to index page in \"%s\"",
						 FUNC26(rel));
			}
			else
			{
				/* Delete old, then append new tuple(s) to page */
				FUNC21(page, oldoffnum);
				FUNC38(page, itup, ntup, InvalidOffsetNumber);
			}
		}
		else
		{
			/* Just append new tuples at the end of the page */
			FUNC38(page, itup, ntup, InvalidOffsetNumber);
		}

		FUNC17(buffer);

		if (FUNC2(leftchildbuf))
			FUNC17(leftchildbuf);

		if (is_build)
			recptr = GistBuildLSN;
		else
		{
			if (FUNC27(rel))
			{
				OffsetNumber ndeloffs = 0,
							deloffs[1];

				if (FUNC18(oldoffnum))
				{
					deloffs[0] = oldoffnum;
					ndeloffs = 1;
				}

				recptr = FUNC36(buffer,
										deloffs, ndeloffs, itup, ntup,
										leftchildbuf);
			}
			else
				recptr = FUNC32(rel);
		}
		FUNC24(page, recptr);

		if (newblkno)
			*newblkno = blkno;
	}

	/*
	 * If we inserted the downlink for a child page, set NSN and clear
	 * F_FOLLOW_RIGHT flag on the left child, so that concurrent scans know to
	 * follow the rightlink if and only if they looked at the parent page
	 * before we inserted the downlink.
	 *
	 * Note that we do this *after* writing the WAL record. That means that
	 * the possible full page image in the WAL record does not include these
	 * changes, and they must be replayed even if the page is restored from
	 * the full page image. There's a chicken-and-egg problem: if we updated
	 * the child pages first, we wouldn't know the recptr of the WAL record
	 * we're about to write.
	 */
	if (FUNC2(leftchildbuf))
	{
		Page		leftpg = FUNC1(leftchildbuf);

		FUNC12(leftpg, recptr);
		FUNC5(leftpg);

		FUNC24(leftpg, recptr);
	}

	FUNC3();

	return is_split;
}