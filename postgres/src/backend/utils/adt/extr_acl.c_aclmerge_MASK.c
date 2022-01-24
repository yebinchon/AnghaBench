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
typedef  int /*<<< orphan*/  AclItem ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ACL_MODECHG_ADD ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  DROP_RESTRICT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

Acl *
FUNC5(const Acl *left_acl, const Acl *right_acl, Oid ownerId)
{
	Acl		   *result_acl;
	AclItem    *aip;
	int			i,
				num;

	/* Check for cases where one or both are empty/null */
	if (left_acl == NULL || FUNC1(left_acl) == 0)
	{
		if (right_acl == NULL || FUNC1(right_acl) == 0)
			return NULL;
		else
			return FUNC2(right_acl);
	}
	else
	{
		if (right_acl == NULL || FUNC1(right_acl) == 0)
			return FUNC2(left_acl);
	}

	/* Merge them the hard way, one item at a time */
	result_acl = FUNC2(left_acl);

	aip = FUNC0(right_acl);
	num = FUNC1(right_acl);

	for (i = 0; i < num; i++, aip++)
	{
		Acl		   *tmp_acl;

		tmp_acl = FUNC3(result_acl, aip, ACL_MODECHG_ADD,
							ownerId, DROP_RESTRICT);
		FUNC4(result_acl);
		result_acl = tmp_acl;
	}

	return result_acl;
}