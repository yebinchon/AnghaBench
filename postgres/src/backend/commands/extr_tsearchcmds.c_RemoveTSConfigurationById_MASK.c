#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_ts_config_map_mapcfg ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSCONFIGOID ; 
 int /*<<< orphan*/  TSConfigMapIndexId ; 
 int /*<<< orphan*/  TSConfigMapRelationId ; 
 int /*<<< orphan*/  TSConfigRelationId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(Oid cfgId)
{
	Relation	relCfg,
				relMap;
	HeapTuple	tup;
	ScanKeyData skey;
	SysScanDesc scan;

	/* Remove the pg_ts_config entry */
	relCfg = FUNC11(TSConfigRelationId, RowExclusiveLock);

	tup = FUNC5(TSCONFIGOID, FUNC2(cfgId));

	if (!FUNC1(tup))
		FUNC6(ERROR, "cache lookup failed for text search dictionary %u",
			 cfgId);

	FUNC0(relCfg, &tup->t_self);

	FUNC3(tup);

	FUNC10(relCfg, RowExclusiveLock);

	/* Remove any pg_ts_config_map entries */
	relMap = FUNC11(TSConfigMapRelationId, RowExclusiveLock);

	FUNC4(&skey,
				Anum_pg_ts_config_map_mapcfg,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(cfgId));

	scan = FUNC7(relMap, TSConfigMapIndexId, true,
							  NULL, 1, &skey);

	while (FUNC1((tup = FUNC9(scan))))
	{
		FUNC0(relMap, &tup->t_self);
	}

	FUNC8(scan);

	FUNC10(relMap, RowExclusiveLock);
}