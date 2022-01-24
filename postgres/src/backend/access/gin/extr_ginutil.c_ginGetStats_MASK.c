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
struct TYPE_6__ {int /*<<< orphan*/  ginVersion; int /*<<< orphan*/  nEntries; int /*<<< orphan*/  nDataPages; int /*<<< orphan*/  nEntryPages; int /*<<< orphan*/  nTotalPages; int /*<<< orphan*/  nPendingPages; } ;
struct TYPE_5__ {int /*<<< orphan*/  ginVersion; int /*<<< orphan*/  nEntries; int /*<<< orphan*/  nDataPages; int /*<<< orphan*/  nEntryPages; int /*<<< orphan*/  nTotalPages; int /*<<< orphan*/  nPendingPages; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ GinStatsData ;
typedef  TYPE_2__ GinMetaPageData ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIN_METAPAGE_BLKNO ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(Relation index, GinStatsData *stats)
{
	Buffer		metabuffer;
	Page		metapage;
	GinMetaPageData *metadata;

	metabuffer = FUNC3(index, GIN_METAPAGE_BLKNO);
	FUNC2(metabuffer, GIN_SHARE);
	metapage = FUNC0(metabuffer);
	metadata = FUNC1(metapage);

	stats->nPendingPages = metadata->nPendingPages;
	stats->nTotalPages = metadata->nTotalPages;
	stats->nEntryPages = metadata->nEntryPages;
	stats->nDataPages = metadata->nDataPages;
	stats->nEntries = metadata->nEntries;
	stats->ginVersion = metadata->ginVersion;

	FUNC4(metabuffer);
}