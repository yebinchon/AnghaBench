#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ rd_isnailed; scalar_t__ rd_isvalid; TYPE_1__* rd_rel; } ;
struct TYPE_10__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ RELKIND_INDEX ; 
 scalar_t__ RELKIND_PARTITIONED_INDEX ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  criticalRelcachesBuilt ; 

Relation
FUNC8(Oid relationId)
{
	Relation	rd;

	/* Make sure we're in an xact, even if this ends up being a cache hit */
	FUNC0(FUNC1());

	/*
	 * first try to find reldesc in the cache
	 */
	FUNC4(relationId, rd);

	if (FUNC6(rd))
	{
		FUNC5(rd);
		/* revalidate cache entry if necessary */
		if (!rd->rd_isvalid)
		{
			/*
			 * Indexes only have a limited number of possible schema changes,
			 * and we don't want to use the full-blown procedure because it's
			 * a headache for indexes that reload itself depends on.
			 */
			if (rd->rd_rel->relkind == RELKIND_INDEX ||
				rd->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
				FUNC7(rd);
			else
				FUNC3(rd, true);

			/*
			 * Normally entries need to be valid here, but before the relcache
			 * has been initialized, not enough infrastructure exists to
			 * perform pg_class lookups. The structure of such entries doesn't
			 * change, but we still want to update the rd_rel entry. So
			 * rd_isvalid = false is left in place for a later lookup.
			 */
			FUNC0(rd->rd_isvalid ||
				   (rd->rd_isnailed && !criticalRelcachesBuilt));
		}
		return rd;
	}

	/*
	 * no reldesc in the cache, so have RelationBuildDesc() build one and add
	 * it.
	 */
	rd = FUNC2(relationId, true);
	if (FUNC6(rd))
		FUNC5(rd);
	return rd;
}