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
struct TYPE_3__ {scalar_t__ szFakeDN; scalar_t__ szFakeFQDN; int /*<<< orphan*/  ld; int /*<<< orphan*/  szDomainNamingContext; int /*<<< orphan*/  szFakeDCNetBIOS; } ;
typedef  char* PWSTR ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*) ; 
 scalar_t__ FUNC3 (char**,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

BOOL FUNC8(PDCSHADOW_DOMAIN_INFO info)
{
	DWORD dwErr;
	PWSTR szComputerFilter, szTempComputerDN;
	PWSTR szComputerAttributes[] = {L"distinguishedName",L"userAccountControl", L"dNSHostName", NULL};
	LDAPMessage *pComputerSearchResult = NULL;

	if(FUNC3(&szComputerFilter, L"(&(|(objectClass=user)(objectClass=computer))(sAMAccountName=%s$))", info->szFakeDCNetBIOS))
	{
		// search for computer info in LDAP
		if(!(dwErr = FUNC7(info->ld, info->szDomainNamingContext, LDAP_SCOPE_SUBTREE, szComputerFilter, szComputerAttributes, FALSE, &pComputerSearchResult)))
		{
			szTempComputerDN = FUNC4(info->ld,pComputerSearchResult);
			FUNC2(&info->szFakeDN, szTempComputerDN);
			FUNC5(szTempComputerDN);
			info->szFakeFQDN  = FUNC1(info->ld, pComputerSearchResult, L"dNSHostName");
			FUNC6(pComputerSearchResult);
		}
		else FUNC0(L"computer not found in AD 0x%x (%u)\n", dwErr, dwErr);
	}
	return info->szFakeFQDN && info->szFakeDN;
}