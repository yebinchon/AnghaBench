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
typedef  scalar_t__ PWCHAR ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  scalar_t__ PCWCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LDAP_AUTH_NEGOTIATE ; 
 int /*<<< orphan*/  LDAP_PORT ; 
 scalar_t__ LDAP_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

BOOL FUNC6(PCWCHAR system, PCWCHAR nc, PLDAP *ld, PWCHAR *rootDn)
{
	BOOL status = FALSE;
	DWORD dwErr;

	if((*ld = FUNC4((PWCHAR) system, LDAP_PORT)))
	{
		if((*rootDn = FUNC2(nc, *ld)))
		{
			dwErr = FUNC3(*ld, NULL, NULL, LDAP_AUTH_NEGOTIATE);
			status = (dwErr == LDAP_SUCCESS);
			if(!status)
			{
				FUNC1(L"ldap_bind_s 0x%x (%u)\n", dwErr, dwErr);
				*rootDn = (PWCHAR) FUNC0(*rootDn);
			}
		}
		if(!status)
			FUNC5(*ld);
	}
	else FUNC1(L"ldap_init\n");
	return status;
}