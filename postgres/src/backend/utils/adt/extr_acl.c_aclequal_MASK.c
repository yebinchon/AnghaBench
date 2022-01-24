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
typedef  int /*<<< orphan*/  AclItem ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool
FUNC3(const Acl *left_acl, const Acl *right_acl)
{
	/* Check for cases where one or both are empty/null */
	if (left_acl == NULL || FUNC1(left_acl) == 0)
	{
		if (right_acl == NULL || FUNC1(right_acl) == 0)
			return true;
		else
			return false;
	}
	else
	{
		if (right_acl == NULL || FUNC1(right_acl) == 0)
			return false;
	}

	if (FUNC1(left_acl) != FUNC1(right_acl))
		return false;

	if (FUNC2(FUNC0(left_acl),
			   FUNC0(right_acl),
			   FUNC1(left_acl) * sizeof(AclItem)) == 0)
		return true;

	return false;
}