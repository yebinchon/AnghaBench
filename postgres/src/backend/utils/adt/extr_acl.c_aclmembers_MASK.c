#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ai_grantee; scalar_t__ ai_grantor; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ AclItem ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ ACL_ID_PUBLIC ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  oid_cmp ; 
 scalar_t__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__*,int,int,int /*<<< orphan*/ ) ; 

int
FUNC6(const Acl *acl, Oid **roleids)
{
	Oid		   *list;
	const AclItem *acldat;
	int			i,
				j;

	if (acl == NULL || FUNC1(acl) == 0)
	{
		*roleids = NULL;
		return 0;
	}

	FUNC2(acl);

	/* Allocate the worst-case space requirement */
	list = FUNC3(FUNC1(acl) * 2 * sizeof(Oid));
	acldat = FUNC0(acl);

	/*
	 * Walk the ACL collecting mentioned RoleIds.
	 */
	j = 0;
	for (i = 0; i < FUNC1(acl); i++)
	{
		const AclItem *ai = &acldat[i];

		if (ai->ai_grantee != ACL_ID_PUBLIC)
			list[j++] = ai->ai_grantee;
		/* grantor is currently never PUBLIC, but let's check anyway */
		if (ai->ai_grantor != ACL_ID_PUBLIC)
			list[j++] = ai->ai_grantor;
	}

	/* Sort the array */
	FUNC4(list, j, sizeof(Oid), oid_cmp);

	/*
	 * We could repalloc the array down to minimum size, but it's hardly worth
	 * it since it's only transient memory.
	 */
	*roleids = list;

	/* Remove duplicates from the array */
	return FUNC5(list, j, sizeof(Oid), oid_cmp);
}