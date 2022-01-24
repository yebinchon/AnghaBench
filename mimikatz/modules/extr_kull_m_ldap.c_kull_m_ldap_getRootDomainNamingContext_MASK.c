#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bv_len; int /*<<< orphan*/  bv_val; } ;
typedef  char* PWCHAR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  TYPE_1__* PBERVAL ;
typedef  int /*<<< orphan*/  LDAP ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_BASE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__**) ; 
 TYPE_1__** FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 

PWCHAR FUNC8(PCWCHAR nc, LDAP *ld)
{
	DWORD dwErr;
	PWCHAR rootAttr[] = {nc ? (PWCHAR) nc : L"rootDomainNamingContext", NULL}, ret = NULL;
	PLDAPMessage pMessage = NULL;
	PBERVAL *pBerVal;

	dwErr = FUNC6(ld, NULL, LDAP_SCOPE_BASE, L"(dn=RootDSE)", rootAttr, FALSE, &pMessage);
	if(dwErr == LDAP_SUCCESS)
	{
		if(FUNC2(ld, pMessage) == 1)
		{
			if((pBerVal = FUNC4(ld, pMessage, rootAttr[0])))
			{
				if(FUNC3(pBerVal) == 1)
					ret = FUNC1(pBerVal[0]->bv_val, pBerVal[0]->bv_len);
				else FUNC0(L"ldap_get_values_len is NOT 1\n");
				FUNC7(pBerVal);
			}
		}
		else FUNC0(L"ldap_count_entries is NOT 1\n");
	}
	else FUNC0(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
	if(pMessage)
		FUNC5(pMessage);
	return ret;
}