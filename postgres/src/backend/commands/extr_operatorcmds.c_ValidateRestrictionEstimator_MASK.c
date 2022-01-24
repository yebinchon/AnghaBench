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
 int /*<<< orphan*/  INT4OID ; 
 int /*<<< orphan*/  INTERNALOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJECT_FUNCTION ; 
 int /*<<< orphan*/  OIDOID ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC9(List *restrictionName)
{
	Oid			typeId[4];
	Oid			restrictionOid;
	AclResult	aclresult;

	typeId[0] = INTERNALOID;	/* PlannerInfo */
	typeId[1] = OIDOID;			/* operator OID */
	typeId[2] = INTERNALOID;	/* args list */
	typeId[3] = INT4OID;		/* varRelid */

	restrictionOid = FUNC1(restrictionName, 4, typeId, false);

	/* estimators must return float8 */
	if (FUNC7(restrictionOid) != FLOAT8OID)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_OBJECT_DEFINITION),
				 FUNC6("restriction estimator function %s must return type %s",
						FUNC2(restrictionName), "float8")));

	/* Require EXECUTE rights for the estimator */
	aclresult = FUNC8(restrictionOid, FUNC0(), ACL_EXECUTE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, OBJECT_FUNCTION,
					   FUNC2(restrictionName));

	return restrictionOid;
}