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
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_subscription_rel_srrelid ; 
 int /*<<< orphan*/  Anum_pg_subscription_rel_srsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubscriptionRelRelationId ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid subid, Oid relid)
{
	Relation	rel;
	TableScanDesc scan;
	ScanKeyData skey[2];
	HeapTuple	tup;
	int			nkeys = 0;

	rel = FUNC9(SubscriptionRelRelationId, RowExclusiveLock);

	if (FUNC3(subid))
	{
		FUNC4(&skey[nkeys++],
					Anum_pg_subscription_rel_srsubid,
					BTEqualStrategyNumber,
					F_OIDEQ,
					FUNC2(subid));
	}

	if (FUNC3(relid))
	{
		FUNC4(&skey[nkeys++],
					Anum_pg_subscription_rel_srrelid,
					BTEqualStrategyNumber,
					F_OIDEQ,
					FUNC2(relid));
	}

	/* Do the search and delete what we found. */
	scan = FUNC6(rel, nkeys, skey);
	while (FUNC1(tup = FUNC5(scan, ForwardScanDirection)))
	{
		FUNC0(rel, &tup->t_self);
	}
	FUNC8(scan);

	FUNC7(rel, RowExclusiveLock);
}