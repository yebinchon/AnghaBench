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
 int /*<<< orphan*/  Anum_pg_subscription_rel_srsubstate ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CHARNE ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBREL_STATE_READY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SubscriptionRelRelationId ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

List *
FUNC12(Oid subid)
{
	List	   *res = NIL;
	Relation	rel;
	HeapTuple	tup;
	int			nkeys = 0;
	ScanKeyData skey[2];
	SysScanDesc scan;

	rel = FUNC11(SubscriptionRelRelationId, AccessShareLock);

	FUNC4(&skey[nkeys++],
				Anum_pg_subscription_rel_srsubid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(subid));

	FUNC4(&skey[nkeys++],
				Anum_pg_subscription_rel_srsubstate,
				BTEqualStrategyNumber, F_CHARNE,
				FUNC0(SUBREL_STATE_READY));

	scan = FUNC7(rel, InvalidOid, false,
							  NULL, nkeys, skey);

	while (FUNC2(tup = FUNC9(scan)))
	{
		Form_pg_subscription_rel subrel;
		SubscriptionRelState *relstate;

		subrel = (Form_pg_subscription_rel) FUNC1(tup);

		relstate = (SubscriptionRelState *) FUNC6(sizeof(SubscriptionRelState));
		relstate->relid = subrel->srrelid;
		relstate->state = subrel->srsubstate;
		relstate->lsn = subrel->srsublsn;

		res = FUNC5(res, relstate);
	}

	/* Cleanup */
	FUNC8(scan);
	FUNC10(rel, AccessShareLock);

	return res;
}