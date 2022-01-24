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
struct berval {int bv_len; int /*<<< orphan*/  bv_val; } ;
struct TYPE_3__ {int* pbSchemaSignature; int /*<<< orphan*/  ld; int /*<<< orphan*/  szSchemaNamingContext; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_BASE ; 
 scalar_t__ LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,int /*<<< orphan*/ ) ; 
 struct berval** FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

BOOL FUNC8(PDCSHADOW_DOMAIN_INFO info)
{
	DWORD dwErr;
	PWSTR szAttributes[] = {FUNC2("schemaInfo"), NULL};
	PLDAPMessage pMessage = NULL;
	struct berval** berSchemaInfo = NULL;
	
	dwErr = FUNC7(info->ld, info->szSchemaNamingContext, LDAP_SCOPE_BASE, NULL, szAttributes, FALSE, &pMessage);
	if(dwErr == LDAP_SUCCESS)
	{
		berSchemaInfo = FUNC5(info->ld, pMessage,szAttributes[0]);
		if(!berSchemaInfo || (*berSchemaInfo)->bv_len != 21)
		{
			// default signature
			info->pbSchemaSignature[0] = 0xFF;
			FUNC1(info->pbSchemaSignature + 1, 20);
		}
		else
			FUNC0(info->pbSchemaSignature, (*berSchemaInfo)->bv_val, 21);
		FUNC6(pMessage);
		FUNC3(L"schema signature:");
		FUNC4(info->pbSchemaSignature, 21, 0);
		FUNC3(L"\n");
	}
	return (dwErr == LDAP_SUCCESS);
}