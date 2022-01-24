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
struct TYPE_3__ {char* szConfigurationNamingContext; int /*<<< orphan*/  ld; int /*<<< orphan*/  szDCDsServiceName; int /*<<< orphan*/  szDCFQDN; } ;
typedef  char* PWSTR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LDAP ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_BASE ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (char*,char*) ; 

NTSTATUS FUNC13(PDCSHADOW_DOMAIN_INFO info, PWSTR szObjectToKill)
{
	DWORD dwErr;
	PLDAPMessage pMessage = NULL, pEntry, pServerMessage;
	PWSTR szNTDSADn;
	PWSTR szServerDN, szServerFQDN;
	LDAP* ld;
	PWSTR szAttributes[] = {L"dNSHostName", NULL};
	dwErr = FUNC10(info->ld, info->szConfigurationNamingContext, LDAP_SCOPE_SUBTREE, L"(objectClass=nTDSDSA)", NULL, FALSE, &pMessage);
	if(dwErr == LDAP_SUCCESS)
	{
		pEntry = pMessage;
		while(pEntry != NULL)
		{
			szNTDSADn = FUNC7(info->ld, pEntry);
			szServerDN = FUNC12(szNTDSADn, L",CN=") + 1;
			dwErr = FUNC10(info->ld, szServerDN, LDAP_SCOPE_BASE, NULL, szAttributes, FALSE, &pServerMessage);
			if(dwErr == LDAP_SUCCESS)
			{
				szServerFQDN = FUNC4(info->ld, pServerMessage, szAttributes[0]);
				if (szServerFQDN && FUNC2(szServerFQDN, info->szDCFQDN) != 0)
				{
					FUNC3(L"  * %s\n", szServerFQDN);
					if (!(dwErr = FUNC5(szServerFQDN, &ld)))
					{
						dwErr = FUNC6(ld, info->szDCDsServiceName, szObjectToKill);
						if (dwErr)
							FUNC1(L"trigger lingering for %s 0x%x (%u)\n", szServerFQDN, dwErr, dwErr);
						FUNC11(ld);
					}
					else FUNC1(L"ldap_connect 0x%x (%u)\n", dwErr, dwErr);
					FUNC0(szServerFQDN);
				}
				FUNC8(pServerMessage);
			}

			pEntry = FUNC9(info->ld, pEntry);
		}
		FUNC8(pMessage);
	}
	return dwErr;
}