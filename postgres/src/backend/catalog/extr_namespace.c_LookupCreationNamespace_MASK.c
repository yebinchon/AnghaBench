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
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  OBJECT_SCHEMA ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  myTempNamespace ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

Oid
FUNC6(const char *nspname)
{
	Oid			namespaceId;
	AclResult	aclresult;

	/* check for pg_temp alias */
	if (FUNC5(nspname, "pg_temp") == 0)
	{
		/* Initialize temp namespace */
		FUNC0(false);
		return myTempNamespace;
	}

	namespaceId = FUNC3(nspname, false);

	aclresult = FUNC4(namespaceId, FUNC1(), ACL_CREATE);
	if (aclresult != ACLCHECK_OK)
		FUNC2(aclresult, OBJECT_SCHEMA,
					   nspname);

	return namespaceId;
}