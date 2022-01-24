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
struct TYPE_7__ {int /*<<< orphan*/  ev_class; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_rewrite ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  Anum_pg_rewrite_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RewriteOidIndexId ; 
 int /*<<< orphan*/  RewriteRelationId ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(Oid ruleOid)
{
	Relation	RewriteRelation;
	ScanKeyData skey[1];
	SysScanDesc rcscan;
	Relation	event_relation;
	HeapTuple	tuple;
	Oid			eventRelationOid;

	/*
	 * Open the pg_rewrite relation.
	 */
	RewriteRelation = FUNC11(RewriteRelationId, RowExclusiveLock);

	/*
	 * Find the tuple for the target rule.
	 */
	FUNC5(&skey[0],
				Anum_pg_rewrite_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(ruleOid));

	rcscan = FUNC7(RewriteRelation, RewriteOidIndexId, true,
								NULL, 1, skey);

	tuple = FUNC9(rcscan);

	if (!FUNC3(tuple))
		FUNC6(ERROR, "could not find tuple for rule %u", ruleOid);

	/*
	 * We had better grab AccessExclusiveLock to ensure that no queries are
	 * going on that might depend on this rule.  (Note: a weaker lock would
	 * suffice if it's not an ON SELECT rule.)
	 */
	eventRelationOid = ((Form_pg_rewrite) FUNC2(tuple))->ev_class;
	event_relation = FUNC11(eventRelationOid, AccessExclusiveLock);

	/*
	 * Now delete the pg_rewrite tuple for the rule
	 */
	FUNC1(RewriteRelation, &tuple->t_self);

	FUNC8(rcscan);

	FUNC10(RewriteRelation, RowExclusiveLock);

	/*
	 * Issue shared-inval notice to force all backends (including me!) to
	 * update relcache entries with the new rule set.
	 */
	FUNC0(event_relation);

	/* Close rel, but keep lock till commit... */
	FUNC10(event_relation, NoLock);
}