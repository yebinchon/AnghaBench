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
typedef  int /*<<< orphan*/  AclResult ;
typedef  int AclMode ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NO_PRIV ; 
 int /*<<< orphan*/  ACLCHECK_OK ; 
 int ACL_CREATE ; 
 int FUNC0 (int) ; 
 int ACL_USAGE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AclResult
FUNC4(Oid role_oid, Oid roleid, AclMode mode)
{
	if (mode & FUNC0(ACL_CREATE))
	{
		/*
		 * XXX For roleid == role_oid, is_admin_of_role() also examines the
		 * session and call stack.  That suits two-argument pg_has_role(), but
		 * it gives the three-argument version a lamentable whimsy.
		 */
		if (FUNC2(roleid, role_oid))
			return ACLCHECK_OK;
	}
	if (mode & ACL_CREATE)
	{
		if (FUNC3(roleid, role_oid))
			return ACLCHECK_OK;
	}
	if (mode & ACL_USAGE)
	{
		if (FUNC1(roleid, role_oid))
			return ACLCHECK_OK;
	}
	return ACLCHECK_NO_PRIV;
}