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
struct TYPE_5__ {int /*<<< orphan*/  attrcollid; int /*<<< orphan*/  attrtypid; } ;
typedef  TYPE_1__ VacAttrStats ;
struct TYPE_6__ {scalar_t__ lt_opr; } ;
typedef  TYPE_2__ TypeCacheEntry ;
typedef  int /*<<< orphan*/  MultiSortSupport ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  TYPECACHE_LT_OPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static MultiSortSupport
FUNC4(VacAttrStats **stats, int numattrs)
{
	int			i;

	/* Sort by multiple columns (using array of SortSupport) */
	MultiSortSupport mss = FUNC3(numattrs);

	/* prepare the sort functions for all the attributes */
	for (i = 0; i < numattrs; i++)
	{
		VacAttrStats *colstat = stats[i];
		TypeCacheEntry *type;

		type = FUNC1(colstat->attrtypid, TYPECACHE_LT_OPR);
		if (type->lt_opr == InvalidOid) /* shouldn't happen */
			FUNC0(ERROR, "cache lookup failed for ordering operator for type %u",
				 colstat->attrtypid);

		FUNC2(mss, i, type->lt_opr, colstat->attrcollid);
	}

	return mss;
}