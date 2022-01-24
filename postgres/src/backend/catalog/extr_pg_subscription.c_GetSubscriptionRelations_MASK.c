#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  srsublsn; int /*<<< orphan*/  srsubstate; int /*<<< orphan*/  srrelid; } ;
struct TYPE_4__ {int /*<<< orphan*/  lsn; int /*<<< orphan*/  state; int /*<<< orphan*/  relid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  TYPE_1__ SubscriptionRelState ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_subscription_rel ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_subscription_rel_srsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubscriptionRelRelationId ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC11(Oid subid)
{
	List	   *res = NIL;
	Relation	rel;
	HeapTuple	tup;
	int			nkeys = 0;
	ScanKeyData skey[2];
	SysScanDesc scan;

	rel = FUNC10(SubscriptionRelRelationId, AccessShareLock);

	FUNC3(&skey[nkeys++],
				Anum_pg_subscription_rel_srsubid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(subid));

	scan = FUNC6(rel, InvalidOid, false,
							  NULL, nkeys, skey);

	while (FUNC1(tup = FUNC8(scan)))
	{
		Form_pg_subscription_rel subrel;
		SubscriptionRelState *relstate;

		subrel = (Form_pg_subscription_rel) FUNC0(tup);

		relstate = (SubscriptionRelState *) FUNC5(sizeof(SubscriptionRelState));
		relstate->relid = subrel->srrelid;
		relstate->state = subrel->srsubstate;
		relstate->lsn = subrel->srsublsn;

		res = FUNC4(res, relstate);
	}

	/* Cleanup */
	FUNC7(scan);
	FUNC9(rel, AccessShareLock);

	return res;
}