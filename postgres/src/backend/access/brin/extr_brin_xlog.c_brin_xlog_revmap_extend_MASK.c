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
struct TYPE_10__ {int targetBlk; } ;
typedef  TYPE_1__ xl_brin_revmap_extend ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_11__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_13__ {int lastRevmapPage; } ;
struct TYPE_12__ {int pd_lower; } ;
typedef  TYPE_3__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_4__ BrinMetaPageData ;
typedef  int BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  BRIN_PAGETYPE_REVMAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_brin_revmap_extend *xlrec;
	Buffer		metabuf;
	Buffer		buf;
	Page		page;
	BlockNumber targetBlk;
	XLogRedoAction action;

	xlrec = (xl_brin_revmap_extend *) FUNC10(record);

	FUNC9(record, 1, NULL, NULL, &targetBlk);
	FUNC0(xlrec->targetBlk == targetBlk);

	/* Update the metapage */
	action = FUNC8(record, 0, &metabuf);
	if (action == BLK_NEEDS_REDO)
	{
		Page		metapg;
		BrinMetaPageData *metadata;

		metapg = FUNC1(metabuf);
		metadata = (BrinMetaPageData *) FUNC4(metapg);

		FUNC0(metadata->lastRevmapPage == xlrec->targetBlk - 1);
		metadata->lastRevmapPage = xlrec->targetBlk;

		FUNC5(metapg, lsn);

		/*
		 * Set pd_lower just past the end of the metadata.  This is essential,
		 * because without doing so, metadata will be lost if xlog.c
		 * compresses the page.  (We must do this here because pre-v11
		 * versions of PG did not set the metapage's pd_lower correctly, so a
		 * pg_upgraded index might contain the wrong value.)
		 */
		((PageHeader) metapg)->pd_lower =
			((char *) metadata + sizeof(BrinMetaPageData)) - (char *) metapg;

		FUNC3(metabuf);
	}

	/*
	 * Re-init the target block as a revmap page.  There's never a full- page
	 * image here.
	 */

	buf = FUNC7(record, 1);
	page = (Page) FUNC1(buf);
	FUNC11(page, BRIN_PAGETYPE_REVMAP);

	FUNC5(page, lsn);
	FUNC3(buf);

	FUNC6(buf);
	if (FUNC2(metabuf))
		FUNC6(metabuf);
}