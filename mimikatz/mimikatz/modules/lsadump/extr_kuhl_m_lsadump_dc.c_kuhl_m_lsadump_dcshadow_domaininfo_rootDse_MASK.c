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
struct TYPE_3__ {char* szDCDsServiceName; size_t dwDomainControllerFunctionality; void* szDsServiceName; void* szSchemaNamingContext; void* szConfigurationNamingContext; void* szDomainNamingContext; void* maxDCUsn; int /*<<< orphan*/  ld; } ;
typedef  char* PWCHAR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_BASE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char** SZ_DOMAIN_CONTROLLER_FUNCTIONALITY ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,...) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (void**,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC9 (char*,char*) ; 
 void* FUNC10 (char*,int /*<<< orphan*/ *,int) ; 

BOOL FUNC11(PDCSHADOW_DOMAIN_INFO info)
{
	DWORD dwErr;
	PWCHAR rootAttr[] = {L"rootDomainNamingContext", L"configurationNamingContext", L"schemaNamingContext", L"dsServiceName", L"domainControllerFunctionality", L"highestCommittedUSN", NULL};
	PLDAPMessage pMessage = NULL;
	PWCHAR tmp, p;
	
	dwErr = FUNC8(info->ld, NULL, LDAP_SCOPE_BASE, NULL, rootAttr, FALSE, &pMessage);
	if(dwErr == LDAP_SUCCESS)
	{
		if(FUNC6(info->ld, pMessage) == 1)
		{
			if((info->szDomainNamingContext = FUNC4(info->ld, pMessage, rootAttr[0])))
				FUNC3(L"Domain:         %s\n", info->szDomainNamingContext);
			if((info->szConfigurationNamingContext = FUNC4(info->ld, pMessage, rootAttr[1])))
				FUNC3(L"Configuration:  %s\n", info->szConfigurationNamingContext);
			if((info->szSchemaNamingContext = FUNC4(info->ld, pMessage, rootAttr[2])))
				FUNC3(L"Schema:         %s\n", info->szSchemaNamingContext);
			if((info->szDCDsServiceName = FUNC4(info->ld, pMessage, rootAttr[3])))
			{
				p = FUNC9(info->szDCDsServiceName, L",CN=");
				if(p)
				{
					p = FUNC9(p + 1, L",CN=");
					if(p && (p + 1) && FUNC5(&info->szDsServiceName, p));
						FUNC3(L"dsServiceName:  %s\n", info->szDsServiceName);
				}
			}
			if((tmp = FUNC4(info->ld, pMessage, rootAttr[4])))
			{
				info->dwDomainControllerFunctionality = FUNC10(tmp, NULL, 10);
				FUNC1(tmp);
			}
			FUNC3(L"domainControllerFunctionality: %u ( %s )\n", info->dwDomainControllerFunctionality, (info->dwDomainControllerFunctionality < FUNC0(SZ_DOMAIN_CONTROLLER_FUNCTIONALITY) ? SZ_DOMAIN_CONTROLLER_FUNCTIONALITY[info->dwDomainControllerFunctionality] : L"?"));
			if((tmp = FUNC4(info->ld, pMessage, rootAttr[5])))
			{
				info->maxDCUsn = FUNC10(tmp, NULL, 10);
				FUNC1(tmp);
			}
			FUNC3(L"highestCommittedUSN: %u\n", info->maxDCUsn);
		}
		else FUNC2(L"ldap_count_entries is NOT 1\n");
		FUNC7(pMessage);
	}
	else FUNC2(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);	
	return (dwErr == LDAP_SUCCESS) && info->szDomainNamingContext && info->szConfigurationNamingContext && info->szSchemaNamingContext && info->szDsServiceName;
}