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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  char* PWCHAR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char**,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

BOOL FUNC9(int argc, wchar_t * argv[], BOOL needUnique, PCWCHAR system, PLDAP *ld, PLDAPMessage *pMessage)
{
	BOOL status = FALSE;
	DWORD dwErr;
	PWCHAR myAttrs[] = {L"name", L"sAMAccountName", L"objectSid", L"sIDHistory", L"objectGUID", NULL}, dn, filter;
	if((filter = FUNC3(argc, argv)))
	{
		if(FUNC4(system, NULL, ld, &dn))
		{
			*pMessage = NULL;
			dwErr = FUNC7(*ld, dn, LDAP_SCOPE_SUBTREE, filter, myAttrs, FALSE, pMessage);
			if((status = (dwErr == LDAP_SUCCESS)))
			{
				switch(FUNC5(*ld, *pMessage))
				{
				case 0:
					status = FALSE;
					FUNC1(L"No result! - filter was \'%s\'\n", filter);
					break;
				case 1:
					break;
				default:
					if(needUnique)
					{
						FUNC1(L"Not unique - Please: don\'t brick your AD! - filter was \'%s\'\n", filter);
						status = FALSE;
					}
					break;
				}
			}
			else FUNC1(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
			
			if(status)
				FUNC2(*ld, *pMessage);
			else
			{
				if(*pMessage)
					FUNC6(*pMessage);
				FUNC8(*ld);
			}
			FUNC0(dn);
		}
		FUNC0(filter);
	}
	return status;
}