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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 scalar_t__ ACL_ID_PUBLIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC3(ArrayType *policy_roles, Oid user_id)
{
	int			i;
	Oid		   *roles = (Oid *) FUNC0(policy_roles);

	/* Quick fall-thru for policies applied to all roles */
	if (roles[0] == ACL_ID_PUBLIC)
		return true;

	for (i = 0; i < FUNC1(policy_roles)[0]; i++)
	{
		if (FUNC2(user_id, roles[i]))
			return true;
	}

	return false;
}