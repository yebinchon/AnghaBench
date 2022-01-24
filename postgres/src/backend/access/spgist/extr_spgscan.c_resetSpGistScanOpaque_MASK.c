#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ numberOfOrderBys; int nPtrs; int iPtr; scalar_t__* reconTups; scalar_t__ want_itup; scalar_t__* distances; scalar_t__ searchNonNulls; scalar_t__ searchNulls; int /*<<< orphan*/  scanQueue; int /*<<< orphan*/  traversalCxt; } ;
typedef  TYPE_1__* SpGistScanOpaque ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pairingheap_SpGistSearchItem_cmp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC5(SpGistScanOpaque so)
{
	MemoryContext oldCtx;

	FUNC0(so->traversalCxt);

	oldCtx = FUNC1(so->traversalCxt);

	/* initialize queue only for distance-ordered scans */
	so->scanQueue = FUNC2(pairingheap_SpGistSearchItem_cmp, so);

	if (so->searchNulls)
		/* Add a work item to scan the null index entries */
		FUNC4(so, true);

	if (so->searchNonNulls)
		/* Add a work item to scan the non-null index entries */
		FUNC4(so, false);

	FUNC1(oldCtx);

	if (so->numberOfOrderBys > 0)
	{
		/* Must pfree distances to avoid memory leak */
		int			i;

		for (i = 0; i < so->nPtrs; i++)
			if (so->distances[i])
				FUNC3(so->distances[i]);
	}

	if (so->want_itup)
	{
		/* Must pfree reconstructed tuples to avoid memory leak */
		int			i;

		for (i = 0; i < so->nPtrs; i++)
			FUNC3(so->reconTups[i]);
	}
	so->iPtr = so->nPtrs = 0;
}