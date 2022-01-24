#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pagesPerRange; int /*<<< orphan*/  lastRevmapPage; } ;
struct TYPE_5__ {int /*<<< orphan*/  rm_currBuf; int /*<<< orphan*/  rm_metaBuf; int /*<<< orphan*/  rm_lastRevmapPage; int /*<<< orphan*/  rm_pagesPerRange; int /*<<< orphan*/  rm_irel; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_1__ BrinRevmap ;
typedef  TYPE_2__ BrinMetaPageData ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  BRIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int) ; 

BrinRevmap *
FUNC6(Relation idxrel, BlockNumber *pagesPerRange,
					 Snapshot snapshot)
{
	BrinRevmap *revmap;
	Buffer		meta;
	BrinMetaPageData *metadata;
	Page		page;

	meta = FUNC3(idxrel, BRIN_METAPAGE_BLKNO);
	FUNC1(meta, BUFFER_LOCK_SHARE);
	page = FUNC0(meta);
	FUNC4(snapshot, idxrel, page);
	metadata = (BrinMetaPageData *) FUNC2(page);

	revmap = FUNC5(sizeof(BrinRevmap));
	revmap->rm_irel = idxrel;
	revmap->rm_pagesPerRange = metadata->pagesPerRange;
	revmap->rm_lastRevmapPage = metadata->lastRevmapPage;
	revmap->rm_metaBuf = meta;
	revmap->rm_currBuf = InvalidBuffer;

	*pagesPerRange = metadata->pagesPerRange;

	FUNC1(meta, BUFFER_LOCK_UNLOCK);

	return revmap;
}