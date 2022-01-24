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
typedef  int /*<<< orphan*/  Bitmapset ;
typedef  scalar_t__ AttrNumber ;
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACLMASK_ANY ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstLowInvalidHeapAttributeNumber ; 
 scalar_t__ InvalidAttrNumber ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(Oid relOid, Oid userid, Bitmapset *modifiedCols,
						  AclMode requiredPerms)
{
	int			col = -1;

	/*
	 * When the query doesn't explicitly update any columns, allow the query
	 * if we have permission on any column of the rel.  This is to handle
	 * SELECT FOR UPDATE as well as possible corner cases in UPDATE.
	 */
	if (FUNC0(modifiedCols))
	{
		if (FUNC4(relOid, userid, requiredPerms,
									  ACLMASK_ANY) != ACLCHECK_OK)
			return false;
	}

	while ((col = FUNC1(modifiedCols, col)) >= 0)
	{
		/* bit #s are offset by FirstLowInvalidHeapAttributeNumber */
		AttrNumber	attno = col + FirstLowInvalidHeapAttributeNumber;

		if (attno == InvalidAttrNumber)
		{
			/* whole-row reference can't happen here */
			FUNC2(ERROR, "whole-row update is not implemented");
		}
		else
		{
			if (FUNC3(relOid, attno, userid,
									  requiredPerms) != ACLCHECK_OK)
				return false;
		}
	}
	return true;
}