#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t nToPlaceholder; scalar_t__ firstPlaceholder; int /*<<< orphan*/  newestRedirectXid; } ;
typedef  TYPE_1__ spgxlogVacuumRedirect ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_7__ {scalar_t__ tupstate; int /*<<< orphan*/  pointer; int /*<<< orphan*/  xid; } ;
struct TYPE_6__ {scalar_t__ nRedirection; scalar_t__ nPlaceholder; } ;
typedef  TYPE_2__* SpGistPageOpaque ;
typedef  TYPE_3__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ InvalidOffsetNumber ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_SPGIST_ID ; 
 int /*<<< orphan*/  RecentGlobalXmin ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPGIST_PLACEHOLDER ; 
 scalar_t__ SPGIST_REDIRECT ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int SizeOfSpgxlogVacuumRedirect ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XLOG_SPGIST_VACUUM_REDIRECT ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 

__attribute__((used)) static void
FUNC19(Relation index, Buffer buffer)
{
	Page		page = FUNC1(buffer);
	SpGistPageOpaque opaque = FUNC12(page);
	OffsetNumber i,
				max = FUNC7(page),
				firstPlaceholder = InvalidOffsetNumber;
	bool		hasNonPlaceholder = false;
	bool		hasUpdate = false;
	OffsetNumber itemToPlaceholder[MaxIndexTuplesPerPage];
	OffsetNumber itemnos[MaxIndexTuplesPerPage];
	spgxlogVacuumRedirect xlrec;

	xlrec.nToPlaceholder = 0;
	xlrec.newestRedirectXid = InvalidTransactionId;

	FUNC11();

	/*
	 * Scan backwards to convert old redirection tuples to placeholder tuples,
	 * and identify location of last non-placeholder tuple while at it.
	 */
	for (i = max;
		 i >= FirstOffsetNumber &&
		 (opaque->nRedirection > 0 || !hasNonPlaceholder);
		 i--)
	{
		SpGistDeadTuple dt;

		dt = (SpGistDeadTuple) FUNC5(page, FUNC6(page, i));

		if (dt->tupstate == SPGIST_REDIRECT &&
			FUNC14(dt->xid, RecentGlobalXmin))
		{
			dt->tupstate = SPGIST_PLACEHOLDER;
			FUNC0(opaque->nRedirection > 0);
			opaque->nRedirection--;
			opaque->nPlaceholder++;

			/* remember newest XID among the removed redirects */
			if (!FUNC13(xlrec.newestRedirectXid) ||
				FUNC14(xlrec.newestRedirectXid, dt->xid))
				xlrec.newestRedirectXid = dt->xid;

			FUNC3(&dt->pointer);

			itemToPlaceholder[xlrec.nToPlaceholder] = i;
			xlrec.nToPlaceholder++;

			hasUpdate = true;
		}

		if (dt->tupstate == SPGIST_PLACEHOLDER)
		{
			if (!hasNonPlaceholder)
				firstPlaceholder = i;
		}
		else
		{
			hasNonPlaceholder = true;
		}
	}

	/*
	 * Any placeholder tuples at the end of page can safely be removed.  We
	 * can't remove ones before the last non-placeholder, though, because we
	 * can't alter the offset numbers of non-placeholder tuples.
	 */
	if (firstPlaceholder != InvalidOffsetNumber)
	{
		/*
		 * We do not store this array to rdata because it's easy to recreate.
		 */
		for (i = firstPlaceholder; i <= max; i++)
			itemnos[i - firstPlaceholder] = i;

		i = max - firstPlaceholder + 1;
		FUNC0(opaque->nPlaceholder >= i);
		opaque->nPlaceholder -= i;

		/* The array is surely sorted, so can use PageIndexMultiDelete */
		FUNC8(page, itemnos, i);

		hasUpdate = true;
	}

	xlrec.firstPlaceholder = firstPlaceholder;

	if (hasUpdate)
		FUNC4(buffer);

	if (hasUpdate && FUNC10(index))
	{
		XLogRecPtr	recptr;

		FUNC15();

		FUNC18((char *) &xlrec, SizeOfSpgxlogVacuumRedirect);
		FUNC18((char *) itemToPlaceholder,
						 sizeof(OffsetNumber) * xlrec.nToPlaceholder);

		FUNC17(0, buffer, REGBUF_STANDARD);

		recptr = FUNC16(RM_SPGIST_ID, XLOG_SPGIST_VACUUM_REDIRECT);

		FUNC9(page, recptr);
	}

	FUNC2();
}