#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  oid; } ;
struct TYPE_8__ {int rd_statvalid; int /*<<< orphan*/ * rd_statlist; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_statistic_ext ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_statistic_ext_stxrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  CacheMemoryContext ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StatisticExtRelationId ; 
 int /*<<< orphan*/  StatisticExtRelidIndexId ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_oid_cmp ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC15(Relation relation)
{
	Relation	indrel;
	SysScanDesc indscan;
	ScanKeyData skey;
	HeapTuple	htup;
	List	   *result;
	List	   *oldlist;
	MemoryContext oldcxt;

	/* Quick exit if we already computed the list. */
	if (relation->rd_statvalid != 0)
		return FUNC7(relation->rd_statlist);

	/*
	 * We build the list we intend to return (in the caller's context) while
	 * doing the scan.  After successfully completing the scan, we copy that
	 * list into the relcache entry.  This avoids cache-context memory leakage
	 * if we get some sort of error partway through.
	 */
	result = NIL;

	/*
	 * Prepare to scan pg_statistic_ext for entries having stxrelid = this
	 * rel.
	 */
	FUNC5(&skey,
				Anum_pg_statistic_ext_stxrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(FUNC4(relation)));

	indrel = FUNC14(StatisticExtRelationId, AccessShareLock);
	indscan = FUNC10(indrel, StatisticExtRelidIndexId, true,
								 NULL, 1, &skey);

	while (FUNC1(htup = FUNC12(indscan)))
	{
		Oid			oid = ((Form_pg_statistic_ext) FUNC0(htup))->oid;

		result = FUNC6(result, oid);
	}

	FUNC11(indscan);

	FUNC13(indrel, AccessShareLock);

	/* Sort the result list into OID order, per API spec. */
	FUNC9(result, list_oid_cmp);

	/* Now save a copy of the completed list in the relcache entry. */
	oldcxt = FUNC2(CacheMemoryContext);
	oldlist = relation->rd_statlist;
	relation->rd_statlist = FUNC7(result);

	relation->rd_statvalid = true;
	FUNC2(oldcxt);

	/* Don't leak the old list, if there is one */
	FUNC8(oldlist);

	return result;
}