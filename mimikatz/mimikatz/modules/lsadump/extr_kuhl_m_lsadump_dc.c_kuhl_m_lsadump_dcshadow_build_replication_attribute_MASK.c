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
struct TYPE_9__ {int length; int* value; } ;
struct TYPE_8__ {int /*<<< orphan*/  ld; int /*<<< orphan*/  szConfigurationNamingContext; } ;
struct TYPE_7__ {int dwSyntax; int /*<<< orphan*/  Oid; int /*<<< orphan*/  szAttributeName; } ;
typedef  int /*<<< orphan*/  PWCHAR ;
typedef  char* PSTR ;
typedef  int /*<<< orphan*/ * PLDAPMessage ;
typedef  TYPE_1__* PDCSHADOW_OBJECT_ATTRIBUTE ;
typedef  TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef  TYPE_3__ OssEncodedOID ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LDAP_SCOPE_SUBTREE ; 
 int LDAP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char** FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (char**) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int) ; 

BOOL FUNC13(PDCSHADOW_DOMAIN_INFO info, PDCSHADOW_OBJECT_ATTRIBUTE attribute)
{
	DWORD dwErr;
	PWCHAR attributesFilter;
	PLDAPMessage pAttributeMessage = NULL;
	PSTR szAttributes[] = {"attributeID", "attributeSyntax", "systemFlags", NULL}, *pszSyntaxOid, *pszFlag;
	OssEncodedOID oid;
	
	attribute->dwSyntax = 0;
	if(FUNC6(&attributesFilter, L"(&(objectclass=attributeSchema)(lDAPDisplayName=%s))", attribute->szAttributeName))
	{
		dwErr = FUNC10(info->ld, info->szConfigurationNamingContext, LDAP_SCOPE_SUBTREE, attributesFilter, NULL, FALSE, &pAttributeMessage);
		if(dwErr == LDAP_SUCCESS)
		{
			if(FUNC7(info->ld, pAttributeMessage) == 1)
			{
				if(attribute->Oid)
					FUNC0(attribute->Oid);
				attribute->Oid =  FUNC3(info->ld, pAttributeMessage, szAttributes[0]);
				pszSyntaxOid = FUNC8(info->ld, pAttributeMessage, szAttributes[1]);
				if(pszSyntaxOid)
				{
					if(FUNC4(*pszSyntaxOid, &oid))
					{
						if(oid.length == 3)
							attribute->dwSyntax = (oid.value[0] << 16) + (oid.value[1] << 8) + oid.value[2];
						else FUNC1(L"oid is invalid %S\n", pszSyntaxOid);
						FUNC5(oid.value);
					}
					FUNC11(pszSyntaxOid);
				}
				pszFlag = FUNC8(info->ld, pAttributeMessage, szAttributes[2]);
				if(pszFlag)
				{
					DWORD systemFlag = FUNC12(*pszFlag, NULL, 10);
					if(systemFlag & 1) // FLAG_ATTR_NOT_REPLICATED
						FUNC2(L" FLAG_ATTR_NOT_REPLICATED\n");
					if(systemFlag & 4) // FLAG_ATTR_IS_CONSTRUCTED
						FUNC2(L" FLAG_ATTR_IS_CONSTRUCTED\n");
					FUNC11(pszFlag);
				}
			}
			else FUNC1(L"attribute does not exist\n");
			FUNC9(pAttributeMessage);
		}
		else FUNC1(L"ldap_search_s 0x%x (%u)\n", dwErr, dwErr);
		FUNC0(attributesFilter);
	}
	return attribute->dwSyntax != 0;
}