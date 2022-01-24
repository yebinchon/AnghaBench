#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  polname; int /*<<< orphan*/  oid; } ;
struct TYPE_12__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_11__ {int /*<<< orphan*/  newname; int /*<<< orphan*/  subname; int /*<<< orphan*/  relation; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  TYPE_1__ RenameStmt ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_policy ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  Anum_pg_policy_polname ; 
 int /*<<< orphan*/  Anum_pg_policy_polrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PolicyPolrelidPolnameIndexId ; 
 int /*<<< orphan*/  PolicyRelationId ; 
 int /*<<< orphan*/  RangeVarCallbackForPolicy ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC23(RenameStmt *stmt)
{
	Relation	pg_policy_rel;
	Relation	target_table;
	Oid			table_id;
	Oid			opoloid;
	ScanKeyData skey[2];
	SysScanDesc sscan;
	HeapTuple	policy_tuple;
	ObjectAddress address;

	/* Get id of table.  Also handles permissions checks. */
	table_id = FUNC8(stmt->relation, AccessExclusiveLock,
										0,
										RangeVarCallbackForPolicy,
										(void *) stmt);

	target_table = FUNC17(table_id, NoLock);

	pg_policy_rel = FUNC22(PolicyRelationId, RowExclusiveLock);

	/* First pass -- check for conflict */

	/* Add key - policy's relation id. */
	FUNC10(&skey[0],
				Anum_pg_policy_polrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(table_id));

	/* Add key - policy's name. */
	FUNC10(&skey[1],
				Anum_pg_policy_polname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(stmt->newname));

	sscan = FUNC18(pg_policy_rel,
							   PolicyPolrelidPolnameIndexId, true, NULL, 2,
							   skey);

	if (FUNC4(FUNC20(sscan)))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_OBJECT),
				 FUNC13("policy \"%s\" for table \"%s\" already exists",
						stmt->newname, FUNC9(target_table))));

	FUNC19(sscan);

	/* Second pass -- find existing policy and update */
	/* Add key - policy's relation id. */
	FUNC10(&skey[0],
				Anum_pg_policy_polrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(table_id));

	/* Add key - policy's name. */
	FUNC10(&skey[1],
				Anum_pg_policy_polname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(stmt->subname));

	sscan = FUNC18(pg_policy_rel,
							   PolicyPolrelidPolnameIndexId, true, NULL, 2,
							   skey);

	policy_tuple = FUNC20(sscan);

	/* Complain if we did not find the policy */
	if (!FUNC4(policy_tuple))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC13("policy \"%s\" for table \"%s\" does not exist",
						stmt->subname, FUNC9(target_table))));

	opoloid = ((Form_pg_policy) FUNC3(policy_tuple))->oid;

	policy_tuple = FUNC14(policy_tuple);

	FUNC15(&((Form_pg_policy) FUNC3(policy_tuple))->polname,
			   stmt->newname);

	FUNC2(pg_policy_rel, &policy_tuple->t_self, policy_tuple);

	FUNC5(PolicyRelationId, opoloid, 0);

	FUNC6(address, PolicyRelationId, opoloid);

	/*
	 * Invalidate relation's relcache entry so that other backends (and this
	 * one too!) are sent SI message to make them rebuild relcache entries.
	 * (Ideally this should happen automatically...)
	 */
	FUNC1(target_table);

	/* Clean up. */
	FUNC19(sscan);
	FUNC21(pg_policy_rel, RowExclusiveLock);
	FUNC16(target_table, NoLock);

	return address;
}