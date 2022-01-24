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
struct TYPE_3__ {int /*<<< orphan*/  szObjectDN; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  TYPE_1__* PDCSHADOW_PUSH_REQUEST_OBJECT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

BOOL FUNC6(PLDAP ld, PWSTR szDomainNamingContext, PDCSHADOW_PUSH_REQUEST_OBJECT object)
{
	BOOL status = FALSE; 
	DWORD dwErr;
	PLDAPMessage pMessage = NULL;
	PWSTR szFilter, szDN;
	
	if(FUNC2(&szFilter, L"(sAMAccountName=%s)", object->szObjectDN))
	{
		dwErr = FUNC5(ld, szDomainNamingContext, LDAP_SCOPE_SUBTREE, szFilter, NULL, FALSE, &pMessage);
		if(dwErr == LDAP_SUCCESS)
		{
			if((szDN = FUNC3(ld, pMessage)))
			{
				FUNC0(object->szObjectDN);
				if(FUNC1(&object->szObjectDN, szDN))
					status = TRUE;
			}
			FUNC4(pMessage);
		}
		FUNC0(szFilter);
	}
	return status;
}