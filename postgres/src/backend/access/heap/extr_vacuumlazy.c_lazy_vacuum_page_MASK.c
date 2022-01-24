#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_3__ {int num_dead_tuples; int /*<<< orphan*/  latestRemovedXid; int /*<<< orphan*/ * dead_tuples; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_1__ LVRelStats ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  InvalidXLogRecPtr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MaxOffsetNumber ; 
 int /*<<< orphan*/  PROGRESS_VACUUM_HEAP_BLKS_VACUUMED ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int VISIBILITYMAP_ALL_FROZEN ; 
 int VISIBILITYMAP_ALL_VISIBLE ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC20(Relation onerel, BlockNumber blkno, Buffer buffer,
				 int tupindex, LVRelStats *vacrelstats, Buffer *vmbuffer)
{
	Page		page = FUNC1(buffer);
	OffsetNumber unused[MaxOffsetNumber];
	int			uncnt = 0;
	TransactionId visibility_cutoff_xid;
	bool		all_frozen;

	FUNC17(PROGRESS_VACUUM_HEAP_BLKS_VACUUMED, blkno);

	FUNC14();

	for (; tupindex < vacrelstats->num_dead_tuples; tupindex++)
	{
		BlockNumber tblk;
		OffsetNumber toff;
		ItemId		itemid;

		tblk = FUNC5(&vacrelstats->dead_tuples[tupindex]);
		if (tblk != blkno)
			break;				/* past end of tuples for this block */
		toff = FUNC6(&vacrelstats->dead_tuples[tupindex]);
		itemid = FUNC8(page, toff);
		FUNC4(itemid);
		unused[uncnt++] = toff;
	}

	FUNC10(page);

	/*
	 * Mark buffer dirty before we write WAL.
	 */
	FUNC7(buffer);

	/* XLOG stuff */
	if (FUNC13(onerel))
	{
		XLogRecPtr	recptr;

		recptr = FUNC16(onerel, buffer,
								NULL, 0, NULL, 0,
								unused, uncnt,
								vacrelstats->latestRemovedXid);
		FUNC12(page, recptr);
	}

	/*
	 * End critical section, so we safely can do visibility tests (which
	 * possibly need to perform IO and allocate memory!). If we crash now the
	 * page (including the corresponding vm bit) might not be marked all
	 * visible, but that's fine. A later vacuum will fix that.
	 */
	FUNC3();

	/*
	 * Now that we have removed the dead tuples from the page, once again
	 * check if the page has become all-visible.  The page is already marked
	 * dirty, exclusively locked, and, if needed, a full page image has been
	 * emitted in the log_heap_clean() above.
	 */
	if (FUNC15(onerel, buffer, &visibility_cutoff_xid,
								 &all_frozen))
		FUNC11(page);

	/*
	 * All the changes to the heap page have been done. If the all-visible
	 * flag is now set, also set the VM all-visible bit (and, if possible, the
	 * all-frozen bit) unless this has already been done previously.
	 */
	if (FUNC9(page))
	{
		uint8		vm_status = FUNC18(onerel, blkno, vmbuffer);
		uint8		flags = 0;

		/* Set the VM all-frozen bit to flag, if needed */
		if ((vm_status & VISIBILITYMAP_ALL_VISIBLE) == 0)
			flags |= VISIBILITYMAP_ALL_VISIBLE;
		if ((vm_status & VISIBILITYMAP_ALL_FROZEN) == 0 && all_frozen)
			flags |= VISIBILITYMAP_ALL_FROZEN;

		FUNC0(FUNC2(*vmbuffer));
		if (flags != 0)
			FUNC19(onerel, blkno, buffer, InvalidXLogRecPtr,
							  *vmbuffer, visibility_cutoff_xid, flags);
	}

	return tupindex;
}