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
struct TYPE_8__ {int /*<<< orphan*/  ld; int /*<<< orphan*/  szSchemaNamingContext; } ;
struct TYPE_6__ {size_t valCount; } ;
struct TYPE_7__ {char** pszValue; TYPE_1__ AttrVal; } ;
typedef  char* PWSTR ;
typedef  TYPE_2__* PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE ;
typedef  TYPE_3__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_ONELEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char**,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

BOOL FUNC7(PDCSHADOW_DOMAIN_INFO info, PDCSHADOW_PUSH_REQUEST_OBJECT_ATTRIBUTE attr)
{
	BOOL fSuccess = FALSE;
	DWORD i, dwErr;
	PWSTR szFilter, szTempValue, szAttributes[] = {L"governsID", NULL};
	LDAPMessage *pSearchResult = NULL;
	
	for(i = 0; i< attr->AttrVal.valCount; i++)
	{	
		fSuccess = FALSE;
		if(FUNC3(&szFilter, L"(&(objectClass=classSchema)(lDAPDisplayName=%s))", attr->pszValue[i]))
		{
			if(!(dwErr = FUNC6(info->ld, info->szSchemaNamingContext, LDAP_SCOPE_ONELEVEL, szFilter, szAttributes, FALSE, &pSearchResult)))
			{
				if(FUNC4(info->ld, pSearchResult) == 1)
				{
					szTempValue = FUNC2(info->ld, pSearchResult, szAttributes[0]);
					if(szTempValue)
					{
						FUNC0(attr->pszValue[i]);
						attr->pszValue[i]  = szTempValue;
						fSuccess = TRUE;
					}
				}
				else FUNC1(L"objectClass %s not found in AD\n", attr->pszValue[i]);
				FUNC5(pSearchResult);
			}
			else FUNC1(L"objectClass not found in AD 0x%x (%u)\n", dwErr, dwErr);
		}
		if (!fSuccess)
			break;
	}
	return fSuccess;
}