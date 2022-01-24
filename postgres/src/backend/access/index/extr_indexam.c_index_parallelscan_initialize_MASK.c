#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  ps_snapshot_data; int /*<<< orphan*/  ps_offset; void* ps_indexid; void* ps_relid; } ;
struct TYPE_10__ {TYPE_1__* rd_indam; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* aminitparallelscan ) (void*) ;} ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Size ;
typedef  TYPE_2__* Relation ;
typedef  TYPE_3__* ParallelIndexScanDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ParallelIndexScanDescData ; 
 int /*<<< orphan*/  RELATION_CHECKS ; 
 void* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_snapshot_data ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

void
FUNC8(Relation heapRelation, Relation indexRelation,
							  Snapshot snapshot, ParallelIndexScanDesc target)
{
	Size		offset;

	RELATION_CHECKS;

	offset = FUNC5(FUNC6(ParallelIndexScanDescData, ps_snapshot_data),
					  FUNC0(snapshot));
	offset = FUNC1(offset);

	target->ps_relid = FUNC3(heapRelation);
	target->ps_indexid = FUNC3(indexRelation);
	target->ps_offset = offset;
	FUNC4(snapshot, target->ps_snapshot_data);

	/* aminitparallelscan is optional; assume no-op if not provided by AM */
	if (indexRelation->rd_indam->aminitparallelscan != NULL)
	{
		void	   *amtarget;

		amtarget = FUNC2(target, offset);
		indexRelation->rd_indam->aminitparallelscan(amtarget);
	}
}