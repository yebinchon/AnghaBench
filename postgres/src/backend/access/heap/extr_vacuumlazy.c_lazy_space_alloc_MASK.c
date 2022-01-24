#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int max_dead_tuples; scalar_t__ dead_tuples; scalar_t__ num_dead_tuples; scalar_t__ useindex; } ;
typedef  TYPE_1__ LVRelStats ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  scalar_t__ ItemPointer ;
typedef  long BlockNumber ;

/* Variables and functions */
 int INT_MAX ; 
 scalar_t__ FUNC0 () ; 
 long LAZY_ALLOC_TUPLES ; 
 long FUNC1 (long,long) ; 
 int MaxAllocSize ; 
 long MaxHeapTuplesPerPage ; 
 long FUNC2 (long,int) ; 
 int autovacuum_work_mem ; 
 int maintenance_work_mem ; 
 scalar_t__ FUNC3 (long) ; 

__attribute__((used)) static void
FUNC4(LVRelStats *vacrelstats, BlockNumber relblocks)
{
	long		maxtuples;
	int			vac_work_mem = FUNC0() &&
	autovacuum_work_mem != -1 ?
	autovacuum_work_mem : maintenance_work_mem;

	if (vacrelstats->useindex)
	{
		maxtuples = (vac_work_mem * 1024L) / sizeof(ItemPointerData);
		maxtuples = FUNC2(maxtuples, INT_MAX);
		maxtuples = FUNC2(maxtuples, MaxAllocSize / sizeof(ItemPointerData));

		/* curious coding here to ensure the multiplication can't overflow */
		if ((BlockNumber) (maxtuples / LAZY_ALLOC_TUPLES) > relblocks)
			maxtuples = relblocks * LAZY_ALLOC_TUPLES;

		/* stay sane if small maintenance_work_mem */
		maxtuples = FUNC1(maxtuples, MaxHeapTuplesPerPage);
	}
	else
	{
		maxtuples = MaxHeapTuplesPerPage;
	}

	vacrelstats->num_dead_tuples = 0;
	vacrelstats->max_dead_tuples = (int) maxtuples;
	vacrelstats->dead_tuples = (ItemPointer)
		FUNC3(maxtuples * sizeof(ItemPointerData));
}