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
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {int /*<<< orphan*/  pages_deleted; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_8__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__ IndexVacuumInfo ;
typedef  TYPE_3__* IndexTuple ;
typedef  TYPE_4__ GistBulkDeleteResult ;
typedef  int /*<<< orphan*/  FullTransactionId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC21(IndexVacuumInfo *info, GistBulkDeleteResult *stats,
			   Buffer parentBuffer, OffsetNumber downlink,
			   Buffer leafBuffer)
{
	Page		parentPage = FUNC2(parentBuffer);
	Page		leafPage = FUNC2(leafBuffer);
	ItemId		iid;
	IndexTuple	idxtuple;
	XLogRecPtr	recptr;
	FullTransactionId txid;

	/*
	 * Check that the leaf is still empty and deletable.
	 */
	if (!FUNC6(leafPage))
	{
		/* a leaf page should never become a non-leaf page */
		FUNC0(false);
		return false;
	}

	if (FUNC4(leafPage))
		return false;			/* don't mess with a concurrent page split */

	if (FUNC12(leafPage) != InvalidOffsetNumber)
		return false;			/* not empty anymore */

	/*
	 * Ok, the leaf is deletable.  Is the downlink in the parent page still
	 * valid?  It might have been moved by a concurrent insert.  We could try
	 * to re-find it by scanning the page again, possibly moving right if the
	 * was split.  But for now, let's keep it simple and just give up.  The
	 * next VACUUM will pick it up.
	 */
	if (FUNC14(parentPage) || FUNC5(parentPage) ||
		FUNC6(parentPage))
	{
		/* shouldn't happen, internal pages are never deleted */
		FUNC0(false);
		return false;
	}

	if (FUNC12(parentPage) < downlink
		|| FUNC12(parentPage) <= FirstOffsetNumber)
		return false;

	iid = FUNC11(parentPage, downlink);
	idxtuple = (IndexTuple) FUNC10(parentPage, iid);
	if (FUNC1(leafBuffer) !=
		FUNC8(&(idxtuple->t_tid)))
		return false;

	/*
	 * All good, proceed with the deletion.
	 *
	 * The page cannot be immediately recycled, because in-progress scans that
	 * saw the downlink might still visit it.  Mark the page with the current
	 * next-XID counter, so that we know when it can be recycled.  Once that
	 * XID becomes older than GlobalXmin, we know that all scans that are
	 * currently in progress must have ended.  (That's much more conservative
	 * than needed, but let's keep it safe and simple.)
	 */
	txid = FUNC16();

	FUNC18();

	/* mark the page as deleted */
	FUNC9(leafBuffer);
	FUNC7(leafPage, txid);
	stats->stats.pages_deleted++;

	/* remove the downlink from the parent */
	FUNC9(parentBuffer);
	FUNC13(parentPage, downlink);

	if (FUNC17(info->index))
		recptr = FUNC20(leafBuffer, txid, parentBuffer, downlink);
	else
		recptr = FUNC19(info->index);
	FUNC15(parentPage, recptr);
	FUNC15(leafPage, recptr);

	FUNC3();

	return true;
}