#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ginVersion; scalar_t__ nEntries; scalar_t__ nDataPages; scalar_t__ nEntryPages; scalar_t__ nTotalPages; scalar_t__ nPendingHeapTuples; scalar_t__ nPendingPages; scalar_t__ tailFreeSize; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {int pd_lower; } ;
typedef  TYPE_1__* PageHeader ;
typedef  scalar_t__ Page ;
typedef  TYPE_2__ GinMetaPageData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIN_CURRENT_VERSION ; 
 int /*<<< orphan*/  GIN_META ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 

void
FUNC4(Buffer b)
{
	GinMetaPageData *metadata;
	Page		page = FUNC0(b);

	FUNC2(page, GIN_META, FUNC1(b));

	metadata = FUNC3(page);

	metadata->head = metadata->tail = InvalidBlockNumber;
	metadata->tailFreeSize = 0;
	metadata->nPendingPages = 0;
	metadata->nPendingHeapTuples = 0;
	metadata->nTotalPages = 0;
	metadata->nEntryPages = 0;
	metadata->nDataPages = 0;
	metadata->nEntries = 0;
	metadata->ginVersion = GIN_CURRENT_VERSION;

	/*
	 * Set pd_lower just past the end of the metadata.  This is essential,
	 * because without doing so, metadata will be lost if xlog.c compresses
	 * the page.
	 */
	((PageHeader) page)->pd_lower =
		((char *) metadata + sizeof(GinMetaPageData)) - (char *) page;
}