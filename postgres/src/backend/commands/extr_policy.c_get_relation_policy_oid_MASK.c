#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_policy ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_policy_polname ; 
 int /*<<< orphan*/  Anum_pg_policy_polrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PolicyPolrelidPolnameIndexId ; 
 int /*<<< orphan*/  PolicyRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC14(Oid relid, const char *policy_name, bool missing_ok)
{
	Relation	pg_policy_rel;
	ScanKeyData skey[2];
	SysScanDesc sscan;
	HeapTuple	policy_tuple;
	Oid			policy_oid;

	pg_policy_rel = FUNC13(PolicyRelationId, AccessShareLock);

	/* Add key - policy's relation id. */
	FUNC4(&skey[0],
				Anum_pg_policy_polrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(relid));

	/* Add key - policy's name. */
	FUNC4(&skey[1],
				Anum_pg_policy_polname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(policy_name));

	sscan = FUNC9(pg_policy_rel,
							   PolicyPolrelidPolnameIndexId, true, NULL, 2,
							   skey);

	policy_tuple = FUNC11(sscan);

	if (!FUNC2(policy_tuple))
	{
		if (!missing_ok)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_UNDEFINED_OBJECT),
					 FUNC7("policy \"%s\" for table \"%s\" does not exist",
							policy_name, FUNC8(relid))));

		policy_oid = InvalidOid;
	}
	else
		policy_oid = ((Form_pg_policy) FUNC1(policy_tuple))->oid;

	/* Clean up. */
	FUNC10(sscan);
	FUNC12(pg_policy_rel, AccessShareLock);

	return policy_oid;
}