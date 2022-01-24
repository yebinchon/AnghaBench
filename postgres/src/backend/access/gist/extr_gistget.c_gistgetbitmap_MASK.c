#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_14__ {scalar_t__ pageDataCxt; scalar_t__ nPageData; scalar_t__ curPageData; int /*<<< orphan*/  qual_ok; } ;
struct TYPE_11__ {int /*<<< orphan*/  parentlsn; } ;
struct TYPE_13__ {int /*<<< orphan*/ * distances; TYPE_1__ data; int /*<<< orphan*/  blkno; } ;
struct TYPE_12__ {int /*<<< orphan*/ * xs_hitup; int /*<<< orphan*/  indexRelation; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  TIDBitmap ;
typedef  TYPE_2__* IndexScanDesc ;
typedef  int /*<<< orphan*/  GistNSN ;
typedef  TYPE_3__ GISTSearchItem ;
typedef  TYPE_4__* GISTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GIST_ROOT_BLKNO ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int64
FUNC7(IndexScanDesc scan, TIDBitmap *tbm)
{
	GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
	int64		ntids = 0;
	GISTSearchItem fakeItem;

	if (!so->qual_ok)
		return 0;

	FUNC6(scan->indexRelation);

	/* Begin the scan by processing the root page */
	so->curPageData = so->nPageData = 0;
	scan->xs_hitup = NULL;
	if (so->pageDataCxt)
		FUNC1(so->pageDataCxt);

	fakeItem.blkno = GIST_ROOT_BLKNO;
	FUNC4(&fakeItem.data.parentlsn, 0, sizeof(GistNSN));
	FUNC3(scan, &fakeItem, NULL, tbm, &ntids);

	/*
	 * While scanning a leaf page, ItemPointers of matching heap tuples will
	 * be stored directly into tbm, so we don't need to deal with them here.
	 */
	for (;;)
	{
		GISTSearchItem *item = FUNC2(so);

		if (!item)
			break;

		FUNC0();

		FUNC3(scan, item, item->distances, tbm, &ntids);

		FUNC5(item);
	}

	return ntids;
}