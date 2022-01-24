#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ai_grantor; scalar_t__ ai_grantee; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ AclItem ;
typedef  int /*<<< orphan*/  const Acl ;

/* Variables and functions */
 int FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int ACL_NO_RIGHTS ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  const* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,int) ; 

Acl *
FUNC11(const Acl *old_acl, Oid oldOwnerId, Oid newOwnerId)
{
	Acl		   *new_acl;
	AclItem    *new_aip;
	AclItem    *old_aip;
	AclItem    *dst_aip;
	AclItem    *src_aip;
	AclItem    *targ_aip;
	bool		newpresent = false;
	int			dst,
				src,
				targ,
				num;

	FUNC9(old_acl);

	/*
	 * Make a copy of the given ACL, substituting new owner ID for old
	 * wherever it appears as either grantor or grantee.  Also note if the new
	 * owner ID is already present.
	 */
	num = FUNC3(old_acl);
	old_aip = FUNC2(old_acl);
	new_acl = FUNC8(num);
	new_aip = FUNC2(new_acl);
	FUNC10(new_aip, old_aip, num * sizeof(AclItem));
	for (dst = 0, dst_aip = new_aip; dst < num; dst++, dst_aip++)
	{
		if (dst_aip->ai_grantor == oldOwnerId)
			dst_aip->ai_grantor = newOwnerId;
		else if (dst_aip->ai_grantor == newOwnerId)
			newpresent = true;
		if (dst_aip->ai_grantee == oldOwnerId)
			dst_aip->ai_grantee = newOwnerId;
		else if (dst_aip->ai_grantee == newOwnerId)
			newpresent = true;
	}

	/*
	 * If the old ACL contained any references to the new owner, then we may
	 * now have generated an ACL containing duplicate entries.  Find them and
	 * merge them so that there are not duplicates.  (This is relatively
	 * expensive since we use a stupid O(N^2) algorithm, but it's unlikely to
	 * be the normal case.)
	 *
	 * To simplify deletion of duplicate entries, we temporarily leave them in
	 * the array but set their privilege masks to zero; when we reach such an
	 * entry it's just skipped.  (Thus, a side effect of this code will be to
	 * remove privilege-free entries, should there be any in the input.)  dst
	 * is the next output slot, targ is the currently considered input slot
	 * (always >= dst), and src scans entries to the right of targ looking for
	 * duplicates.  Once an entry has been emitted to dst it is known
	 * duplicate-free and need not be considered anymore.
	 */
	if (newpresent)
	{
		dst = 0;
		for (targ = 0, targ_aip = new_aip; targ < num; targ++, targ_aip++)
		{
			/* ignore if deleted in an earlier pass */
			if (FUNC0(*targ_aip) == ACL_NO_RIGHTS)
				continue;
			/* find and merge any duplicates */
			for (src = targ + 1, src_aip = targ_aip + 1; src < num;
				 src++, src_aip++)
			{
				if (FUNC0(*src_aip) == ACL_NO_RIGHTS)
					continue;
				if (FUNC7(targ_aip, src_aip))
				{
					FUNC1(*targ_aip,
									   FUNC0(*targ_aip) |
									   FUNC0(*src_aip));
					/* mark the duplicate deleted */
					FUNC1(*src_aip, ACL_NO_RIGHTS);
				}
			}
			/* and emit to output */
			new_aip[dst] = *targ_aip;
			dst++;
		}
		/* Adjust array size to be 'dst' items */
		FUNC5(new_acl)[0] = dst;
		FUNC6(new_acl, FUNC4(dst));
	}

	return new_acl;
}