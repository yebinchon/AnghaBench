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
struct TYPE_3__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ SID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/  PSID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_POWER_USERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(void)
{
	PSID		AdministratorsSid;
	PSID		PowerUsersSid;
	SID_IDENTIFIER_AUTHORITY NtAuthority = {SECURITY_NT_AUTHORITY};
	BOOL		IsAdministrators;
	BOOL		IsPowerUsers;

	if (!FUNC0(&NtAuthority, 2,
								  SECURITY_BUILTIN_DOMAIN_RID,
								  DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0,
								  0, &AdministratorsSid))
	{
		FUNC6(FUNC4("could not get SID for Administrators group: error code %lu\n"),
				  FUNC3());
		FUNC5(1);
	}

	if (!FUNC0(&NtAuthority, 2,
								  SECURITY_BUILTIN_DOMAIN_RID,
								  DOMAIN_ALIAS_RID_POWER_USERS, 0, 0, 0, 0, 0,
								  0, &PowerUsersSid))
	{
		FUNC6(FUNC4("could not get SID for PowerUsers group: error code %lu\n"),
				  FUNC3());
		FUNC5(1);
	}

	if (!FUNC1(NULL, AdministratorsSid, &IsAdministrators) ||
		!FUNC1(NULL, PowerUsersSid, &IsPowerUsers))
	{
		FUNC6(FUNC4("could not check access token membership: error code %lu\n"),
				  FUNC3());
		FUNC5(1);
	}

	FUNC2(AdministratorsSid);
	FUNC2(PowerUsersSid);

	if (IsAdministrators || IsPowerUsers)
		return 1;
	else
		return 0;
}