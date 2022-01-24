#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  polrelid; } ;
struct TYPE_17__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ relkind; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__* HeapTuple ;
typedef  TYPE_4__* Form_pg_policy ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  Anum_pg_policy_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PolicyOidIndexId ; 
 int /*<<< orphan*/  PolicyRelationId ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC17(Oid policy_id)
{
	Relation	pg_policy_rel;
	SysScanDesc sscan;
	ScanKeyData skey[1];
	HeapTuple	tuple;
	Oid			relid;
	Relation	rel;

	pg_policy_rel = FUNC16(PolicyRelationId, RowExclusiveLock);

	/*
	 * Find the policy to delete.
	 */
	FUNC7(&skey[0],
				Anum_pg_policy_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC5(policy_id));

	sscan = FUNC12(pg_policy_rel, PolicyOidIndexId, true,
							   NULL, 1, skey);

	tuple = FUNC14(sscan);

	/* If the policy exists, then remove it, otherwise raise an error. */
	if (!FUNC3(tuple))
		FUNC8(ERROR, "could not find tuple for policy %u", policy_id);

	/*
	 * Open and exclusive-lock the relation the policy belongs to.  (We need
	 * exclusive lock to lock out queries that might otherwise depend on the
	 * set of policies the rel has; furthermore we've got to hold the lock
	 * till commit.)
	 */
	relid = ((Form_pg_policy) FUNC2(tuple))->polrelid;

	rel = FUNC16(relid, AccessExclusiveLock);
	if (rel->rd_rel->relkind != RELKIND_RELATION &&
		rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
		FUNC9(ERROR,
				(FUNC10(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC11("\"%s\" is not a table",
						FUNC6(rel))));

	if (!allowSystemTableMods && FUNC4(rel))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC11("permission denied: \"%s\" is a system catalog",
						FUNC6(rel))));

	FUNC1(pg_policy_rel, &tuple->t_self);

	FUNC13(sscan);

	/*
	 * Note that, unlike some of the other flags in pg_class, relrowsecurity
	 * is not just an indication of if policies exist.  When relrowsecurity is
	 * set by a user, then all access to the relation must be through a
	 * policy.  If no policy is defined for the relation then a default-deny
	 * policy is created and all records are filtered (except for queries from
	 * the owner).
	 */
	FUNC0(rel);

	FUNC15(rel, NoLock);

	/* Clean up */
	FUNC15(pg_policy_rel, RowExclusiveLock);
}