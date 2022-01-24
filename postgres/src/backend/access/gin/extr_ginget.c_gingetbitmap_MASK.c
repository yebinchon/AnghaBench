#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64 ;
struct TYPE_8__ {int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  TIDBitmap ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  GinScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

int64
FUNC12(IndexScanDesc scan, TIDBitmap *tbm)
{
	GinScanOpaque so = (GinScanOpaque) scan->opaque;
	int64		ntids;
	ItemPointerData iptr;
	bool		recheck;

	/*
	 * Set up the scan keys, and check for unsatisfiable query.
	 */
	FUNC5(so);		/* there should be no keys yet, but just to be
								 * sure */
	FUNC6(scan);

	if (FUNC1(scan))
		return 0;

	ntids = 0;

	/*
	 * First, scan the pending list and collect any matching entries into the
	 * bitmap.  After we scan a pending item, some other backend could post it
	 * into the main index, and so we might visit it a second time during the
	 * main scan.  This is okay because we'll just re-set the same bit in the
	 * bitmap.  (The possibility of duplicate visits is a major reason why GIN
	 * can't support the amgettuple API, however.) Note that it would not do
	 * to scan the main index before the pending list, since concurrent
	 * cleanup could then make us miss entries entirely.
	 */
	FUNC8(scan, tbm, &ntids);

	/*
	 * Now scan the main index.
	 */
	FUNC9(scan);

	FUNC4(&iptr);

	for (;;)
	{
		FUNC0();

		if (!FUNC7(scan, iptr, &iptr, &recheck))
			break;

		if (FUNC3(&iptr))
			FUNC10(tbm, FUNC2(&iptr));
		else
			FUNC11(tbm, &iptr, 1, recheck);
		ntids++;
	}

	return ntids;
}