#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int* offsets; int nToPlaceholder; int firstPlaceholder; int /*<<< orphan*/  newestRedirectXid; } ;
typedef  TYPE_1__ spgxlogVacuumRedirect ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_11__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_13__ {scalar_t__ tupstate; int /*<<< orphan*/  pointer; } ;
struct TYPE_12__ {int nRedirection; int nPlaceholder; } ;
typedef  TYPE_3__* SpGistPageOpaque ;
typedef  TYPE_4__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int OffsetNumber ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InHotStandby ; 
 int InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SPGIST_PLACEHOLDER ; 
 scalar_t__ SPGIST_REDIRECT ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC16 (TYPE_2__*) ; 
 int* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 

__attribute__((used)) static void
FUNC19(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC16(record);
	spgxlogVacuumRedirect *xldata = (spgxlogVacuumRedirect *) ptr;
	OffsetNumber *itemToPlaceholder;
	Buffer		buffer;

	itemToPlaceholder = xldata->offsets;

	/*
	 * If any redirection tuples are being removed, make sure there are no
	 * live Hot Standby transactions that might need to see them.
	 */
	if (InHotStandby)
	{
		if (FUNC12(xldata->newestRedirectXid))
		{
			RelFileNode node;

			FUNC15(record, 0, &node, NULL, NULL);
			FUNC10(xldata->newestRedirectXid,
												node);
		}
	}

	if (FUNC14(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		Page		page = FUNC1(buffer);
		SpGistPageOpaque opaque = FUNC11(page);
		int			i;

		/* Convert redirect pointers to plain placeholders */
		for (i = 0; i < xldata->nToPlaceholder; i++)
		{
			SpGistDeadTuple dt;

			dt = (SpGistDeadTuple) FUNC5(page,
											   FUNC6(page, itemToPlaceholder[i]));
			FUNC0(dt->tupstate == SPGIST_REDIRECT);
			dt->tupstate = SPGIST_PLACEHOLDER;
			FUNC3(&dt->pointer);
		}

		FUNC0(opaque->nRedirection >= xldata->nToPlaceholder);
		opaque->nRedirection -= xldata->nToPlaceholder;
		opaque->nPlaceholder += xldata->nToPlaceholder;

		/* Remove placeholder tuples at end of page */
		if (xldata->firstPlaceholder != InvalidOffsetNumber)
		{
			int			max = FUNC7(page);
			OffsetNumber *toDelete;

			toDelete = FUNC17(sizeof(OffsetNumber) * max);

			for (i = xldata->firstPlaceholder; i <= max; i++)
				toDelete[i - xldata->firstPlaceholder] = i;

			i = max - xldata->firstPlaceholder + 1;
			FUNC0(opaque->nPlaceholder >= i);
			opaque->nPlaceholder -= i;

			/* The array is sorted, so can use PageIndexMultiDelete */
			FUNC8(page, toDelete, i);

			FUNC18(toDelete);
		}

		FUNC9(page, lsn);
		FUNC4(buffer);
	}
	if (FUNC2(buffer))
		FUNC13(buffer);
}