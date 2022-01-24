#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ai_grantee; int /*<<< orphan*/  ai_grantor; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ AclMode ;
typedef  TYPE_1__ const AclItem ;
typedef  int /*<<< orphan*/  const Acl ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const) ; 
 int /*<<< orphan*/  ACLMASK_ALL ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ ACL_ID_PUBLIC ; 
 int /*<<< orphan*/  ACL_MODECHG_DEL ; 
 scalar_t__ ACL_NO_RIGHTS ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  DROP_CASCADE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_GRANT_OPERATION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC8 (int /*<<< orphan*/  const*,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC16(const Acl *old_acl, const AclItem *mod_aip,
				  Oid ownerId)
{
	Acl		   *acl;
	AclItem    *aip;
	int			i,
				num;
	AclMode		own_privs;

	FUNC10(old_acl);

	/*
	 * For now, grant options can only be granted to roles, not PUBLIC.
	 * Otherwise we'd have to work a bit harder here.
	 */
	FUNC6(mod_aip->ai_grantee != ACL_ID_PUBLIC);

	/* The owner always has grant options, no need to check */
	if (mod_aip->ai_grantor == ownerId)
		return;

	/* Make a working copy */
	acl = FUNC9(FUNC3(old_acl));
	FUNC14(acl, old_acl, FUNC5(old_acl));

	/* Zap all grant options of target grantee, plus what depends on 'em */
cc_restart:
	num = FUNC3(acl);
	aip = FUNC1(acl);
	for (i = 0; i < num; i++)
	{
		if (aip[i].ai_grantee == mod_aip->ai_grantee &&
			FUNC0(aip[i]) != ACL_NO_RIGHTS)
		{
			Acl		   *new_acl;

			/* We'll actually zap ordinary privs too, but no matter */
			new_acl = FUNC8(acl, &aip[i], ACL_MODECHG_DEL,
								ownerId, DROP_CASCADE);

			FUNC15(acl);
			acl = new_acl;

			goto cc_restart;
		}
	}

	/* Now we can compute grantor's independently-derived privileges */
	own_privs = FUNC7(acl,
						mod_aip->ai_grantor,
						ownerId,
						FUNC2(FUNC0(*mod_aip)),
						ACLMASK_ALL);
	own_privs = FUNC4(own_privs);

	if ((FUNC0(*mod_aip) & ~own_privs) != 0)
		FUNC11(ERROR,
				(FUNC12(ERRCODE_INVALID_GRANT_OPERATION),
				 FUNC13("grant options cannot be granted back to your own grantor")));

	FUNC15(acl);
}