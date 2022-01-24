#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_OBJECT_DEFINITION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FLOAT8OID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INT2OID ; 
 int /*<<< orphan*/  INTERNALOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  OIDOID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC10(List *joinName)
{
	Oid			typeId[5];
	Oid			joinOid;
	AclResult	aclresult;

	typeId[0] = INTERNALOID;	/* PlannerInfo */
	typeId[1] = OIDOID;			/* operator OID */
	typeId[2] = INTERNALOID;	/* args list */
	typeId[3] = INT2OID;		/* jointype */
	typeId[4] = INTERNALOID;	/* SpecialJoinInfo */

	/*
	 * As of Postgres 8.4, the preferred signature for join estimators has 5
	 * arguments, but we still allow the old 4-argument form. Try the
	 * preferred form first.
	 */
	joinOid = FUNC1(joinName, 5, typeId, true);
	if (!FUNC3(joinOid))
		joinOid = FUNC1(joinName, 4, typeId, true);
	/* If not found, reference the 5-argument signature in error msg */
	if (!FUNC3(joinOid))
		joinOid = FUNC1(joinName, 5, typeId, false);

	/* estimators must return float8 */
	if (FUNC8(joinOid) != FLOAT8OID)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC7("join estimator function %s must return type %s",
						FUNC2(joinName), "float8")));

	/* Require EXECUTE rights for the estimator */
	aclresult = FUNC9(joinOid, FUNC0(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC4(aclresult, OBJECT_FUNCTION,
					   FUNC2(joinName));

	return joinOid;
}