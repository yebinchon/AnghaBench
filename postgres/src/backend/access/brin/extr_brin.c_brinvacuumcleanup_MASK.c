#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  num_index_tuples; int /*<<< orphan*/  num_pages; } ;
struct TYPE_6__ {int /*<<< orphan*/  index; int /*<<< orphan*/  strategy; scalar_t__ analyze_only; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ IndexVacuumInfo ;
typedef  TYPE_2__ IndexBulkDeleteResult ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  BRIN_ALL_BLOCKRANGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

IndexBulkDeleteResult *
FUNC8(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
	Relation	heapRel;

	/* No-op in ANALYZE ONLY mode */
	if (info->analyze_only)
		return stats;

	if (!stats)
		stats = (IndexBulkDeleteResult *) FUNC5(sizeof(IndexBulkDeleteResult));
	stats->num_pages = FUNC1(info->index);
	/* rest of stats is initialized by zeroing */

	heapRel = FUNC7(FUNC0(FUNC2(info->index), false),
						 AccessShareLock);

	FUNC3(info->index, info->strategy);

	FUNC4(info->index, heapRel, BRIN_ALL_BLOCKRANGES, false,
				  &stats->num_index_tuples, &stats->num_index_tuples);

	FUNC6(heapRel, AccessShareLock);

	return stats;
}