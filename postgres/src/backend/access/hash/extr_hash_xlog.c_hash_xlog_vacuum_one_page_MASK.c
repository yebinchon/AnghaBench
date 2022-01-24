#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ ntuples; int /*<<< orphan*/  latestRemovedXid; } ;
typedef  TYPE_1__ xl_hash_vacuum_one_page ;
typedef  scalar_t__ XLogRedoAction ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_13__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_2__ XLogReaderState ;
struct TYPE_15__ {int /*<<< orphan*/  hashm_ntuples; } ;
struct TYPE_14__ {int /*<<< orphan*/  hasho_flag; } ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  TYPE_3__* HashPageOpaque ;
typedef  TYPE_4__* HashMetaPage ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (scalar_t__) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  LH_PAGE_HAS_DEAD_TUPLES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RBM_NORMAL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SizeOfHashVacuumOnePage ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC14(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_hash_vacuum_one_page *xldata;
	Buffer		buffer;
	Buffer		metabuf;
	Page		page;
	XLogRedoAction action;
	HashPageOpaque pageopaque;

	xldata = (xl_hash_vacuum_one_page *) FUNC12(record);

	/*
	 * If we have any conflict processing to do, it must happen before we
	 * update the page.
	 *
	 * Hash index records that are marked as LP_DEAD and being removed during
	 * hash index tuple insertion can conflict with standby queries. You might
	 * think that vacuum records would conflict as well, but we've handled
	 * that already.  XLOG_HEAP2_CLEANUP_INFO records provide the highest xid
	 * cleaned by the vacuum of the heap and so we can resolve any conflicts
	 * just once when that arrives.  After that we know that no conflicts
	 * exist from individual hash index vacuum records on that index.
	 */
	if (InHotStandby)
	{
		RelFileNode rnode;

		FUNC11(record, 0, &rnode, NULL, NULL);
		FUNC7(xldata->latestRemovedXid, rnode);
	}

	action = FUNC10(record, 0, RBM_NORMAL, true, &buffer);

	if (action == BLK_NEEDS_REDO)
	{
		page = (Page) FUNC0(buffer);

		if (FUNC13(record) > SizeOfHashVacuumOnePage)
		{
			OffsetNumber *unused;

			unused = (OffsetNumber *) ((char *) xldata + SizeOfHashVacuumOnePage);

			FUNC5(page, unused, xldata->ntuples);
		}

		/*
		 * Mark the page as not containing any LP_DEAD items. See comments in
		 * _hash_vacuum_one_page() for details.
		 */
		pageopaque = (HashPageOpaque) FUNC4(page);
		pageopaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;

		FUNC6(page, lsn);
		FUNC3(buffer);
	}
	if (FUNC1(buffer))
		FUNC8(buffer);

	if (FUNC9(record, 1, &metabuf) == BLK_NEEDS_REDO)
	{
		Page		metapage;
		HashMetaPage metap;

		metapage = FUNC0(metabuf);
		metap = FUNC2(metapage);

		metap->hashm_ntuples -= xldata->ntuples;

		FUNC6(metapage, lsn);
		FUNC3(metabuf);
	}
	if (FUNC1(metabuf))
		FUNC8(metabuf);
}