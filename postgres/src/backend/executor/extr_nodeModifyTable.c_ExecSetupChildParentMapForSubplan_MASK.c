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
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  TupleConversionMap ;
struct TYPE_7__ {int mt_nplans; int /*<<< orphan*/ ** mt_per_subplan_tupconv_maps; TYPE_1__* resultRelInfo; } ;
struct TYPE_6__ {int /*<<< orphan*/  ri_RelationDesc; } ;
typedef  TYPE_1__ ResultRelInfo ;
typedef  TYPE_2__ ModifyTableState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(ModifyTableState *mtstate)
{
	ResultRelInfo *targetRelInfo = FUNC2(mtstate);
	ResultRelInfo *resultRelInfos = mtstate->resultRelInfo;
	TupleDesc	outdesc;
	int			numResultRelInfos = mtstate->mt_nplans;
	int			i;

	/*
	 * Build array of conversion maps from each child's TupleDesc to the one
	 * used in the target relation.  The map pointers may be NULL when no
	 * conversion is necessary, which is hopefully a common case.
	 */

	/* Get tuple descriptor of the target rel. */
	outdesc = FUNC0(targetRelInfo->ri_RelationDesc);

	mtstate->mt_per_subplan_tupconv_maps = (TupleConversionMap **)
		FUNC3(sizeof(TupleConversionMap *) * numResultRelInfos);

	for (i = 0; i < numResultRelInfos; ++i)
	{
		mtstate->mt_per_subplan_tupconv_maps[i] =
			FUNC1(FUNC0(resultRelInfos[i].ri_RelationDesc),
								   outdesc);
	}
}