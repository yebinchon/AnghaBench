#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char** modv_strvals; } ;
struct TYPE_8__ {char* mod_type; TYPE_1__ mod_vals; int /*<<< orphan*/  mod_op; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {int /*<<< orphan*/  szFakeDN; int /*<<< orphan*/  ld; int /*<<< orphan*/  szDomainName; int /*<<< orphan*/  szFakeFQDN; int /*<<< orphan*/  szConfigurationNamingContext; } ;
typedef  char* PWSTR ;
typedef  TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_3__ LDAPMod ;
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LDAP_MOD_DELETE ; 
 int /*<<< orphan*/  LDAP_SCOPE_ONELEVEL ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (char**,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 

NTSTATUS FUNC10(PDCSHADOW_DOMAIN_INFO info)
{
	BOOL fSuccess = FALSE;
	DWORD dwErr = 0;
	PWSTR sitesBase, sitesFilter, serverBase, NTDSBase;
	LDAPMessage* pSitesMessage, * pServerMessage;
	PWSTR szSPNAttribute[] = {NULL, NULL};
	LDAPMod ldapmodSPN = {0};
	LDAPMod *ldapmodServer[] = {&ldapmodSPN, NULL};
	
	if(FUNC2(&sitesBase, L"CN=Sites,%s", info->szConfigurationNamingContext))
	{
		if(FUNC2(&sitesFilter, L"(&(objectClass=server)(dNSHostName=%s))", info->szFakeFQDN))
		{
			dwErr = FUNC9(info->ld, sitesBase, LDAP_SCOPE_SUBTREE, sitesFilter, NULL, FALSE, &pSitesMessage);
			if(dwErr == LDAP_SUCCESS)
			{
				if(FUNC3(info->ld, pSitesMessage) == 1)
				{
					if((serverBase = FUNC5(info->ld, pSitesMessage)))
					{
						dwErr = FUNC9(info->ld, serverBase, LDAP_SCOPE_ONELEVEL, L"(name=NTDS Settings)", NULL, FALSE, &pServerMessage);
						if(dwErr == LDAP_SUCCESS)
						{
							if((NTDSBase = FUNC5(info->ld, pServerMessage)))
							{
								if((dwErr = FUNC4(info->ld, NTDSBase)) != LDAP_SUCCESS)
									FUNC1(L"ldap_delete_s %s 0x%x (%u)\n", NTDSBase, dwErr, dwErr);
								else fSuccess = TRUE;
								FUNC6(NTDSBase);
							}
							FUNC8(pServerMessage);
						}
						else FUNC1(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
						if((dwErr = FUNC4(info->ld, serverBase)) != LDAP_SUCCESS)
							FUNC1(L"ldap_delete_s %s 0x%x (%u)\n", serverBase, dwErr, dwErr);
						FUNC6(serverBase);
					}
				}
				else FUNC1(L"ldap_count_entries is NOT 1\n");
				FUNC8(pSitesMessage);
			}
			else FUNC1(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
			FUNC0(sitesFilter);
		}
		FUNC0(sitesBase);
	}

	ldapmodSPN.mod_op = LDAP_MOD_DELETE;
	ldapmodSPN.mod_type = L"servicePrincipalName";
	ldapmodSPN.mod_vals.modv_strvals = szSPNAttribute;
	if(FUNC2(szSPNAttribute, L"GC/%s/%s", info->szFakeFQDN, info->szDomainName))
	{
		if((dwErr = FUNC7(info->ld, info->szFakeDN, ldapmodServer)) != 0)
			FUNC1(L"ldap_modify_s computer SPN 0x%x (%u)\n", dwErr, dwErr); 
	}
	return (fSuccess?STATUS_SUCCESS: STATUS_UNSUCCESSFUL);
}