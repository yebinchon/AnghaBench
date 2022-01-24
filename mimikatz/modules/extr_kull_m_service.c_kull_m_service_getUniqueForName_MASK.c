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
typedef  int /*<<< orphan*/  SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SC_STATUS_PROCESS_INFO ; 
 int /*<<< orphan*/  SERVICES_ACTIVE_DATABASE ; 
 int /*<<< orphan*/  SERVICE_QUERY_STATUS ; 

BOOL FUNC4(PCWSTR serviceName, SERVICE_STATUS_PROCESS * pServiceStatusProcess)
{
	BOOL status = FALSE;
	SC_HANDLE hSC, hS;
	DWORD szNeeded;

	if((hSC = FUNC1(NULL, SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT)))
	{
		if((hS = FUNC2(hSC, serviceName, SERVICE_QUERY_STATUS)))
		{
			status = FUNC3(hS, SC_STATUS_PROCESS_INFO, (BYTE *) pServiceStatusProcess, sizeof(SERVICE_STATUS_PROCESS), &szNeeded);
			FUNC0(hS);
		}
		FUNC0(hSC);
	}
	return status;	
}