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
struct TYPE_5__ {int ntuples; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_hash_vacuum_one_page ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_7__ {int hashm_ntuples; } ;
struct TYPE_6__ {int /*<<< orphan*/  hasho_flag; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_2__* HashPageOpaque ;
typedef  TYPE_3__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FirstOffsetNumber ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LH_PAGE_HAS_DEAD_TUPLES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int MaxOffsetNumber ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_HASH_ID ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int SizeOfHashVacuumOnePage ; 
 int /*<<< orphan*/  XLOG_HASH_VACUUM_ONE_PAGE ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC19(Relation rel, Relation hrel, Buffer metabuf, Buffer buf)
{
	OffsetNumber deletable[MaxOffsetNumber];
	int			ndeletable = 0;
	OffsetNumber offnum,
				maxoff;
	Page		page = FUNC0(buf);
	HashPageOpaque pageopaque;
	HashMetaPage metap;

	/* Scan each tuple in page to see if it is marked as LP_DEAD */
	maxoff = FUNC8(page);
	for (offnum = FirstOffsetNumber;
		 offnum <= maxoff;
		 offnum = FUNC6(offnum))
	{
		ItemId		itemId = FUNC7(page, offnum);

		if (FUNC3(itemId))
			deletable[ndeletable++] = offnum;
	}

	if (ndeletable > 0)
	{
		TransactionId latestRemovedXid;

		latestRemovedXid =
			FUNC18(rel, hrel, buf,
												 deletable, ndeletable);

		/*
		 * Write-lock the meta page so that we can decrement tuple count.
		 */
		FUNC4(metabuf, BUFFER_LOCK_EXCLUSIVE);

		/* No ereport(ERROR) until changes are logged */
		FUNC13();

		FUNC10(page, deletable, ndeletable);

		/*
		 * Mark the page as not containing any LP_DEAD items. This is not
		 * certainly true (there might be some that have recently been marked,
		 * but weren't included in our target-item list), but it will almost
		 * always be true and it doesn't seem worth an additional page scan to
		 * check it. Remember that LH_PAGE_HAS_DEAD_TUPLES is only a hint
		 * anyway.
		 */
		pageopaque = (HashPageOpaque) FUNC9(page);
		pageopaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;

		metap = FUNC2(FUNC0(metabuf));
		metap->hashm_ntuples -= ndeletable;

		FUNC5(buf);
		FUNC5(metabuf);

		/* XLOG stuff */
		if (FUNC12(rel))
		{
			xl_hash_vacuum_one_page xlrec;
			XLogRecPtr	recptr;

			xlrec.latestRemovedXid = latestRemovedXid;
			xlrec.ntuples = ndeletable;

			FUNC14();
			FUNC16(0, buf, REGBUF_STANDARD);
			FUNC17((char *) &xlrec, SizeOfHashVacuumOnePage);

			/*
			 * We need the target-offsets array whether or not we store the
			 * whole buffer, to allow us to find the latestRemovedXid on a
			 * standby server.
			 */
			FUNC17((char *) deletable,
							 ndeletable * sizeof(OffsetNumber));

			FUNC16(1, metabuf, REGBUF_STANDARD);

			recptr = FUNC15(RM_HASH_ID, XLOG_HASH_VACUUM_ONE_PAGE);

			FUNC11(FUNC0(buf), recptr);
			FUNC11(FUNC0(metabuf), recptr);
		}

		FUNC1();

		/*
		 * Releasing write lock on meta page as we have updated the tuple
		 * count.
		 */
		FUNC4(metabuf, BUFFER_LOCK_UNLOCK);
	}
}