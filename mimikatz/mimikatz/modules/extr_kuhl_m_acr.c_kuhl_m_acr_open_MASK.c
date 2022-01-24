#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCARD_SCOPE_SYSTEM ; 
 scalar_t__ SCARD_S_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  kuhl_m_acr_Comm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kuhl_m_acr_hContext ; 
 int /*<<< orphan*/  kuhl_m_acr_pn532Comm ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kull_m_arcr_SendRecvDirect ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC7(int argc, wchar_t * argv[])
{
	LONG scStatus;
	BOOL isTrace = FUNC6(argc, argv, L"trace", NULL, NULL);

	if(!kuhl_m_acr_hContext)
	{
		scStatus = FUNC1(SCARD_SCOPE_SYSTEM, NULL, NULL, &kuhl_m_acr_hContext);
		if(scStatus == SCARD_S_SUCCESS)
		{
			FUNC2(L"Opening ACR  : ");
			if(FUNC4(kuhl_m_acr_hContext, L"ACS ACR122 0", TRUE, NULL, isTrace, &kuhl_m_acr_Comm))
			{
				FUNC2(L"OK!\nOpening PN532: ");
				FUNC5(kull_m_arcr_SendRecvDirect, &kuhl_m_acr_Comm, isTrace, &kuhl_m_acr_pn532Comm);
				FUNC2(L"OK!\n");
			}
			else FUNC3(0, NULL);
		}
	}
	else FUNC0(L"Already opened, close it first\n");
	return STATUS_SUCCESS;
}