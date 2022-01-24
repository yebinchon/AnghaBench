#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nDead; int nPlaceholder; int nMove; int nChain; int /*<<< orphan*/  stateSrc; } ;
typedef  TYPE_1__ spgxlogVacuumLeaf ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_8__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_9__ {scalar_t__ tupstate; int /*<<< orphan*/  nextOffset; } ;
typedef  int /*<<< orphan*/  SpGistState ;
typedef  TYPE_3__* SpGistLeafTuple ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemIdData ;
typedef  int /*<<< orphan*/ * ItemId ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidOffsetNumber ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPGIST_DEAD ; 
 scalar_t__ SPGIST_LIVE ; 
 int /*<<< orphan*/  SPGIST_PLACEHOLDER ; 
 int /*<<< orphan*/  SizeOfSpgxlogVacuumLeaf ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	char	   *ptr = FUNC9(record);
	spgxlogVacuumLeaf *xldata = (spgxlogVacuumLeaf *) ptr;
	OffsetNumber *toDead;
	OffsetNumber *toPlaceholder;
	OffsetNumber *moveSrc;
	OffsetNumber *moveDest;
	OffsetNumber *chainSrc;
	OffsetNumber *chainDest;
	SpGistState state;
	Buffer		buffer;
	Page		page;
	int			i;

	FUNC10(&state, xldata->stateSrc);

	ptr += SizeOfSpgxlogVacuumLeaf;
	toDead = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nDead;
	toPlaceholder = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nPlaceholder;
	moveSrc = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nMove;
	moveDest = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nMove;
	chainSrc = (OffsetNumber *) ptr;
	ptr += sizeof(OffsetNumber) * xldata->nChain;
	chainDest = (OffsetNumber *) ptr;

	if (FUNC8(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		page = FUNC1(buffer);

		FUNC11(&state, page,
								toDead, xldata->nDead,
								SPGIST_DEAD, SPGIST_DEAD,
								InvalidBlockNumber,
								InvalidOffsetNumber);

		FUNC11(&state, page,
								toPlaceholder, xldata->nPlaceholder,
								SPGIST_PLACEHOLDER, SPGIST_PLACEHOLDER,
								InvalidBlockNumber,
								InvalidOffsetNumber);

		/* see comments in vacuumLeafPage() */
		for (i = 0; i < xldata->nMove; i++)
		{
			ItemId		idSrc = FUNC5(page, moveSrc[i]);
			ItemId		idDest = FUNC5(page, moveDest[i]);
			ItemIdData	tmp;

			tmp = *idSrc;
			*idSrc = *idDest;
			*idDest = tmp;
		}

		FUNC11(&state, page,
								moveSrc, xldata->nMove,
								SPGIST_PLACEHOLDER, SPGIST_PLACEHOLDER,
								InvalidBlockNumber,
								InvalidOffsetNumber);

		for (i = 0; i < xldata->nChain; i++)
		{
			SpGistLeafTuple lt;

			lt = (SpGistLeafTuple) FUNC4(page,
											   FUNC5(page, chainSrc[i]));
			FUNC0(lt->tupstate == SPGIST_LIVE);
			lt->nextOffset = chainDest[i];
		}

		FUNC6(page, lsn);
		FUNC3(buffer);
	}
	if (FUNC2(buffer))
		FUNC7(buffer);
}