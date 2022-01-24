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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(Oid userid, const char *role)
{
	Oid			roleid;

	if (!FUNC0(userid))
		return false;			/* if user not exist, say "no" */

	roleid = FUNC1(role, true);

	if (!FUNC0(roleid))
		return false;			/* if target role not exist, say "no" */

	/*
	 * See if user is directly or indirectly a member of role. For this
	 * purpose, a superuser is not considered to be automatically a member of
	 * the role, so group auth only applies to explicit membership.
	 */
	return FUNC2(userid, roleid);
}