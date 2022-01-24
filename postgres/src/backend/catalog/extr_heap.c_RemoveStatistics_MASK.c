#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  scalar_t__ AttrNumber ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_statistic_staattnum ; 
 int /*<<< orphan*/  Anum_pg_statistic_starelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_INT2EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  StatisticRelationId ; 
 int /*<<< orphan*/  StatisticRelidAttnumInhIndexId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid relid, AttrNumber attnum)
{
	Relation	pgstatistic;
	SysScanDesc scan;
	ScanKeyData key[2];
	int			nkeys;
	HeapTuple	tuple;

	pgstatistic = FUNC9(StatisticRelationId, RowExclusiveLock);

	FUNC4(&key[0],
				Anum_pg_statistic_starelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relid));

	if (attnum == 0)
		nkeys = 1;
	else
	{
		FUNC4(&key[1],
					Anum_pg_statistic_staattnum,
					BTEqualStrategyNumber, F_INT2EQ,
					FUNC2(attnum));
		nkeys = 2;
	}

	scan = FUNC5(pgstatistic, StatisticRelidAttnumInhIndexId, true,
							  NULL, nkeys, key);

	/* we must loop even when attnum != 0, in case of inherited stats */
	while (FUNC1(tuple = FUNC7(scan)))
		FUNC0(pgstatistic, &tuple->t_self);

	FUNC6(scan);

	FUNC8(pgstatistic, RowExclusiveLock);
}