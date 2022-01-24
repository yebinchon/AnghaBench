#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int bv_len; int /*<<< orphan*/  bv_val; } ;
typedef  scalar_t__ PWSTR ;
typedef  char* PWCHAR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  int /*<<< orphan*/  PLDAP ;
typedef  TYPE_1__* PBERVAL ;
typedef  int /*<<< orphan*/  GUID ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_BASE ; 
 size_t LDAP_SUCCESS ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 char** FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__** FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (char**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,size_t,char*) ; 
 scalar_t__ FUNC13 (scalar_t__,char*,int) ; 

BOOL FUNC14(PLDAP ld, PWSTR szObjectDN, GUID* pParentGuid)
{
	BOOL fSuccess = FALSE;
	PWSTR szParentDN;
	DWORD dwErr, len, i;
	WCHAR** szrdns;
	PWCHAR replAttr[] = {L"objectGUID", NULL};
	PBERVAL *guid;
	PLDAPMessage pMessage = NULL;

	if (FUNC13(szObjectDN, L"DC=", 3) == 0)
	{
		FUNC4(pParentGuid, sizeof(GUID));
		return TRUE;
	}

	if ((szrdns = FUNC5(szObjectDN, 0)) ==  NULL)
	{
		FUNC2(L"Unable to parse DN (%s)\n", szObjectDN);
		return FALSE;
	}
	len = 1;
	for(i = 1; szrdns[i] != NULL; i++)
	{
		len += (2 + FUNC11(szrdns[i]));
	}
	szParentDN = (PWSTR) FUNC0(LPTR, len * sizeof(WCHAR));
	if (szParentDN)
	{
		for(i = 1; szrdns[i] != NULL; i++)
		{
			if (i > 1)
				FUNC12(szParentDN, len, L",");
			FUNC12(szParentDN, len, szrdns[i]);
		}
	}
	FUNC9(szrdns);
	if (!szParentDN)
		return FALSE;

	dwErr = FUNC8(ld, szParentDN, LDAP_SCOPE_BASE, L"(objectclass=*)", replAttr, FALSE, &pMessage);
	if(dwErr == LDAP_SUCCESS)
	{
		if((guid = FUNC6(ld, pMessage, replAttr[0])) != NULL && ((*guid)->bv_len == sizeof(GUID)))
		{
			FUNC3(pParentGuid, (*guid)->bv_val, (*guid)->bv_len);
			fSuccess = TRUE;
			FUNC10(guid);
		}
		FUNC7(pMessage);
	}
	else
	{
		FUNC2(L"Parent DN (%s) not found\n", szParentDN);
	}
	FUNC1(szParentDN);
	return fSuccess;
}