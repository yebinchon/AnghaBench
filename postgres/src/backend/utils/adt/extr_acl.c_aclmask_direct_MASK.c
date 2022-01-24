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
struct TYPE_3__ {scalar_t__ ai_grantee; int ai_privs; } ;
typedef  scalar_t__ Oid ;
typedef  int AclMode ;
typedef  scalar_t__ AclMaskHow ;
typedef  TYPE_1__ AclItem ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int ACLITEM_ALL_GOPTION_BITS ; 
 scalar_t__ ACLMASK_ALL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static AclMode
FUNC4(const Acl *acl, Oid roleid, Oid ownerId,
			   AclMode mask, AclMaskHow how)
{
	AclMode		result;
	AclItem    *aidat;
	int			i,
				num;

	/*
	 * Null ACL should not happen, since caller should have inserted
	 * appropriate default
	 */
	if (acl == NULL)
		FUNC3(ERROR, "null ACL");

	FUNC2(acl);

	/* Quick exit for mask == 0 */
	if (mask == 0)
		return 0;

	result = 0;

	/* Owner always implicitly has all grant options */
	if ((mask & ACLITEM_ALL_GOPTION_BITS) &&
		roleid == ownerId)
	{
		result = mask & ACLITEM_ALL_GOPTION_BITS;
		if ((how == ACLMASK_ALL) ? (result == mask) : (result != 0))
			return result;
	}

	num = FUNC1(acl);
	aidat = FUNC0(acl);

	/*
	 * Check privileges granted directly to roleid (and not to public)
	 */
	for (i = 0; i < num; i++)
	{
		AclItem    *aidata = &aidat[i];

		if (aidata->ai_grantee == roleid)
		{
			result |= aidata->ai_privs & mask;
			if ((how == ACLMASK_ALL) ? (result == mask) : (result != 0))
				return result;
		}
	}

	return result;
}