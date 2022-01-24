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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_2__ {scalar_t__ toProcessId; scalar_t__ fromProcessId; } ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PMIMIDRV_PROCESS_TOKEN_FROM_TO ;
typedef  int /*<<< orphan*/  PKIWI_BUFFER ;
typedef  scalar_t__ PEPROCESS ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  MIMIDRV_PROCESS_TOKEN_FROM_TO ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  KernelMode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_KERNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ PsInitialSystemProcess ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/ * PsProcessType ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kkll_m_process_systoken_callback ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(SIZE_T szBufferIn, PVOID bufferIn, PKIWI_BUFFER outBuffer)
{
	NTSTATUS status = STATUS_SUCCESS;
	PMIMIDRV_PROCESS_TOKEN_FROM_TO pTokenFromTo = (PMIMIDRV_PROCESS_TOKEN_FROM_TO) bufferIn;
	ULONG fromProcessId, toProcessId;
	HANDLE hFromProcess, hFromProcessToken;
	PEPROCESS pFromProcess = PsInitialSystemProcess, pToProcess = NULL;

	if(pTokenFromTo && (szBufferIn == sizeof(MIMIDRV_PROCESS_TOKEN_FROM_TO)))
	{
		if(pTokenFromTo->fromProcessId)
			status = FUNC5((HANDLE) pTokenFromTo->fromProcessId, &pFromProcess);
		if(FUNC0(status) && pTokenFromTo->toProcessId)
			status = FUNC5((HANDLE) pTokenFromTo->toProcessId, &pToProcess);
	}

	if(FUNC0(status))
	{
		status = FUNC2(pFromProcess, OBJ_KERNEL_HANDLE, NULL, 0, *PsProcessType, KernelMode, &hFromProcess);
		if(FUNC0(status))
		{
			status = FUNC7(hFromProcess, 0, OBJ_KERNEL_HANDLE, &hFromProcessToken);
			if(FUNC0(status))
			{
				status = FUNC10(outBuffer, L"Token from %u/%-14S\n", FUNC3(pFromProcess), FUNC4(pFromProcess));
				if(FUNC0(status))
				{
					if(pToProcess)
						status = FUNC9(szBufferIn, bufferIn, outBuffer, hFromProcessToken, pToProcess);
					else
						status = FUNC8(szBufferIn, bufferIn, outBuffer, kkll_m_process_systoken_callback, hFromProcessToken);
				}
				FUNC6(hFromProcessToken);
			}
			FUNC6(hFromProcess);
		}
	}

	if(pToProcess)
		FUNC1(pToProcess);

	if(pFromProcess && (pFromProcess != PsInitialSystemProcess))
		FUNC1(pFromProcess);

	return status;
}