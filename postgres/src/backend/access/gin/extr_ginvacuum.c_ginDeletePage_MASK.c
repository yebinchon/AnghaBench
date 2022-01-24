#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ rightLink; int /*<<< orphan*/  deleteXid; int /*<<< orphan*/  parentOffset; } ;
typedef  TYPE_2__ ginxlogDeletePage ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {scalar_t__ rightlink; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {TYPE_1__* result; int /*<<< orphan*/  index; int /*<<< orphan*/  strategy; } ;
struct TYPE_6__ {int /*<<< orphan*/  pages_deleted; } ;
typedef  int /*<<< orphan*/  PostingItem ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_3__ GinVacuumState ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GIN_DELETED ; 
 int /*<<< orphan*/  GIN_EXCLUSIVE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_GIN_ID ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_GIN_DELETE_PAGE ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,int) ; 

__attribute__((used)) static void
FUNC23(GinVacuumState *gvs, BlockNumber deleteBlkno, BlockNumber leftBlkno,
			  BlockNumber parentBlkno, OffsetNumber myoff, bool isParentRoot)
{
	Buffer		dBuffer;
	Buffer		lBuffer;
	Buffer		pBuffer;
	Page		page,
				parentPage;
	BlockNumber rightlink;

	/*
	 * This function MUST be called only if someone of parent pages hold
	 * exclusive cleanup lock. This guarantees that no insertions currently
	 * happen in this subtree. Caller also acquire Exclusive lock on deletable
	 * page and is acquiring and releasing exclusive lock on left page before.
	 * Left page was locked and released. Then parent and this page are
	 * locked. We acquire left page lock here only to mark page dirty after
	 * changing right pointer.
	 */
	lBuffer = FUNC13(gvs->index, MAIN_FORKNUM, leftBlkno,
								 RBM_NORMAL, gvs->strategy);
	dBuffer = FUNC13(gvs->index, MAIN_FORKNUM, deleteBlkno,
								 RBM_NORMAL, gvs->strategy);
	pBuffer = FUNC13(gvs->index, MAIN_FORKNUM, parentBlkno,
								 RBM_NORMAL, gvs->strategy);

	FUNC8(lBuffer, GIN_EXCLUSIVE);

	page = FUNC1(dBuffer);
	rightlink = FUNC6(page)->rightlink;

	/* For deleted page remember last xid which could knew its address */
	FUNC7(page, FUNC14());

	/*
	 * Any insert which would have gone on the leaf block will now go to its
	 * right sibling.
	 */
	FUNC12(gvs->index, deleteBlkno, rightlink);

	FUNC17();

	/* Unlink the page by changing left sibling's rightlink */
	page = FUNC1(lBuffer);
	FUNC6(page)->rightlink = rightlink;

	/* Delete downlink from parent */
	parentPage = FUNC1(pBuffer);
#ifdef USE_ASSERT_CHECKING
	do
	{
		PostingItem *tod = GinDataPageGetPostingItem(parentPage, myoff);

		Assert(PostingItemGetBlockNumber(tod) == deleteBlkno);
	} while (0);
#endif
	FUNC4(parentPage, myoff);

	page = FUNC1(dBuffer);

	/*
	 * we shouldn't change rightlink field to save workability of running
	 * search scan
	 */
	FUNC6(page)->flags = GIN_DELETED;

	FUNC9(pBuffer);
	FUNC9(lBuffer);
	FUNC9(dBuffer);

	if (FUNC15(gvs->index))
	{
		XLogRecPtr	recptr;
		ginxlogDeletePage data;

		/*
		 * We can't pass REGBUF_STANDARD for the deleted page, because we
		 * didn't set pd_lower on pre-9.4 versions. The page might've been
		 * binary-upgraded from an older version, and hence not have pd_lower
		 * set correctly. Ditto for the left page, but removing the item from
		 * the parent updated its pd_lower, so we know that's OK at this
		 * point.
		 */
		FUNC19();
		FUNC21(0, dBuffer, 0);
		FUNC21(1, pBuffer, REGBUF_STANDARD);
		FUNC21(2, lBuffer, 0);

		data.parentOffset = myoff;
		data.rightLink = FUNC6(page)->rightlink;
		data.deleteXid = FUNC5(page);

		FUNC22((char *) &data, sizeof(ginxlogDeletePage));

		recptr = FUNC20(RM_GIN_ID, XLOG_GIN_DELETE_PAGE);
		FUNC10(page, recptr);
		FUNC10(parentPage, recptr);
		FUNC10(FUNC1(lBuffer), recptr);
	}

	FUNC16(pBuffer);
	FUNC18(lBuffer);
	FUNC16(dBuffer);

	FUNC2();

	gvs->result->pages_deleted++;
}