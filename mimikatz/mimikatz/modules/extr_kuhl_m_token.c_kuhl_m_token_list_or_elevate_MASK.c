#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ WELL_KNOWN_SID_TYPE ;
struct TYPE_7__ {char* pCommandLine; char* pUsername; int /*<<< orphan*/  pSid; scalar_t__ tokenId; int /*<<< orphan*/ * member_5; scalar_t__ member_4; scalar_t__ member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/ * Sid; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_1__* PPOLICY_DNS_DOMAIN_INFO ;
typedef  char* PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ KUHL_M_TOKEN_ELEVATE_DATA ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ WinAccountDomainAdminsSid ; 
 scalar_t__ WinAccountEnterpriseAdminsSid ; 
 scalar_t__ WinBuiltinAdministratorsSid ; 
 scalar_t__ WinLocalSystemSid ; 
 scalar_t__ WinNullSid ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  kuhl_m_token_list_or_elevate_callback ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ **,char*,char**,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(int argc, wchar_t * argv[], BOOL elevate, BOOL runIt)
{
	KUHL_M_TOKEN_ELEVATE_DATA pData = {NULL, NULL, 0, elevate, runIt, NULL};
	WELL_KNOWN_SID_TYPE type = WinNullSid;
	PWSTR name, domain;
	PCWSTR strTokenId;
	PPOLICY_DNS_DOMAIN_INFO pDomainInfo = NULL;

	if(runIt)
		FUNC7(argc, argv, L"process", &pData.pCommandLine, L"whoami.exe");
	FUNC7(argc, argv, L"user", &pData.pUsername, NULL);

	if(FUNC7(argc, argv, L"id", &strTokenId, NULL))
	{
		pData.tokenId = FUNC10(strTokenId, NULL, 0);
	}
	else if(FUNC7(argc, argv, L"domainadmin", NULL, NULL))
		type = WinAccountDomainAdminsSid;
	else if(FUNC7(argc, argv, L"enterpriseadmin", NULL, NULL))
		type = WinAccountEnterpriseAdminsSid;
	else if(FUNC7(argc, argv, L"admin", NULL, NULL))
		type = WinBuiltinAdministratorsSid;
	else if((elevate && !pData.pUsername) || FUNC7(argc, argv, L"system", NULL, NULL))
	{
		type = WinLocalSystemSid;
		if(pData.pUsername)
		{
			FUNC2(L"No username available when SYSTEM\n");
			pData.pUsername = NULL;
		}
	}

	if((type == WinAccountDomainAdminsSid) || (type == WinAccountEnterpriseAdminsSid))
		if(!FUNC6(&pDomainInfo))
			FUNC3(L"kull_m_local_domain_user_getCurrentDomainSID");

	if(!elevate || !runIt || pData.tokenId || type || pData.pUsername)
	{
		FUNC4(L"Token Id  : %u\nUser name : %s\nSID name  : ", pData.tokenId, pData.pUsername ? pData.pUsername : L"");
		if(type)
		{
			if(FUNC5(type, pDomainInfo ? pDomainInfo->Sid : NULL, &pData.pSid))
			{
				if(FUNC8(pData.pSid, &name, &domain, NULL, NULL))
				{
					FUNC4(L"%s\\%s\n", domain, name);
					FUNC0(name);
					FUNC0(domain);
				}
				else FUNC3(L"kull_m_token_getNameDomainFromSID");
			}
			else FUNC3(L"kull_m_local_domain_user_CreateWellKnownSid");
		}
		else FUNC4(L"\n");
		FUNC4(L"\n");
		
		if(!elevate || !runIt || pData.tokenId || pData.pSid || pData.pUsername)
			FUNC9(kuhl_m_token_list_or_elevate_callback, &pData);
			//kull_m_token_getTokens(kuhl_m_token_list_or_elevate_callback, &pData);
		
		if(pData.pSid)
			FUNC0(pData.pSid);
		if(pDomainInfo)
			FUNC1(pDomainInfo);
	}
	return STATUS_SUCCESS;
}