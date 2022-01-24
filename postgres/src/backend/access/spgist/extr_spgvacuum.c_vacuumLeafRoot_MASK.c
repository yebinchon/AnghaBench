#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t nDelete; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_2__ spgxlogVacuumRoot ;
struct TYPE_8__ {int /*<<< orphan*/  spgstate; TYPE_1__* stats; int /*<<< orphan*/  callback_state; scalar_t__ (* callback ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ spgBulkDeleteState ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_9__ {scalar_t__ tupstate; int /*<<< orphan*/  heapPtr; } ;
struct TYPE_6__ {int tuples_removed; int num_index_tuples; } ;
typedef  TYPE_4__* SpGistLeafTuple ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REGBUF_STANDARD ; 
 int /*<<< orphan*/  RM_SPGIST_ID ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPGIST_LIVE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SizeOfSpgxlogVacuumRoot ; 
 int /*<<< orphan*/  XLOG_SPGIST_VACUUM_ROOT ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(spgBulkDeleteState *bds, Relation index, Buffer buffer)
{
	Page		page = FUNC1(buffer);
	spgxlogVacuumRoot xlrec;
	OffsetNumber toDelete[MaxIndexTuplesPerPage];
	OffsetNumber i,
				max = FUNC7(page);

	xlrec.nDelete = 0;

	/* Scan page, identify tuples to delete, accumulate stats */
	for (i = FirstOffsetNumber; i <= max; i++)
	{
		SpGistLeafTuple lt;

		lt = (SpGistLeafTuple) FUNC5(page,
										   FUNC6(page, i));
		if (lt->tupstate == SPGIST_LIVE)
		{
			FUNC0(FUNC3(&lt->heapPtr));

			if (bds->callback(&lt->heapPtr, bds->callback_state))
			{
				bds->stats->tuples_removed += 1;
				toDelete[xlrec.nDelete] = i;
				xlrec.nDelete++;
			}
			else
			{
				bds->stats->num_index_tuples += 1;
			}
		}
		else
		{
			/* all tuples on root should be live */
			FUNC17(ERROR, "unexpected SPGiST tuple state: %d",
				 lt->tupstate);
		}
	}

	if (xlrec.nDelete == 0)
		return;					/* nothing more to do */

	/* Do the update */
	FUNC11();

	/* The tuple numbers are in order, so we can use PageIndexMultiDelete */
	FUNC8(page, toDelete, xlrec.nDelete);

	FUNC4(buffer);

	if (FUNC10(index))
	{
		XLogRecPtr	recptr;

		FUNC13();

		/* Prepare WAL record */
		FUNC12(&bds->spgstate, xlrec.stateSrc);

		FUNC16((char *) &xlrec, SizeOfSpgxlogVacuumRoot);
		/* sizeof(xlrec) should be a multiple of sizeof(OffsetNumber) */
		FUNC16((char *) toDelete,
						 sizeof(OffsetNumber) * xlrec.nDelete);

		FUNC15(0, buffer, REGBUF_STANDARD);

		recptr = FUNC14(RM_SPGIST_ID, XLOG_SPGIST_VACUUM_ROOT);

		FUNC9(page, recptr);
	}

	FUNC2();
}