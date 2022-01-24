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
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  myTempNamespace ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

Oid
FUNC7(const char *nspname, bool missing_ok)
{
	Oid			namespaceId;
	AclResult	aclresult;

	/* check for pg_temp alias */
	if (FUNC6(nspname, "pg_temp") == 0)
	{
		if (FUNC2(myTempNamespace))
			return myTempNamespace;

		/*
		 * Since this is used only for looking up existing objects, there is
		 * no point in trying to initialize the temp namespace here; and doing
		 * so might create problems for some callers --- just fall through.
		 */
	}

	namespaceId = FUNC4(nspname, missing_ok);
	if (missing_ok && !FUNC2(namespaceId))
		return InvalidOid;

	aclresult = FUNC5(namespaceId, FUNC0(), ACL_USAGE);
	if (aclresult != ACLCHECK_OK)
		FUNC3(aclresult, OBJECT_SCHEMA,
					   nspname);
	/* Schema search hook for this lookup */
	FUNC1(namespaceId, true);

	return namespaceId;
}