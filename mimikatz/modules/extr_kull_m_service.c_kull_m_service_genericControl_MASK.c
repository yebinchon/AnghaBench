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
typedef  int /*<<< orphan*/  SERVICE_STATUS ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/ * LPSERVICE_STATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICES_ACTIVE_DATABASE ; 

BOOL FUNC4(PCWSTR serviceName, DWORD dwDesiredAccess, DWORD dwControl, LPSERVICE_STATUS ptrServiceStatus)
{
	BOOL status = FALSE;
	SC_HANDLE hSC, hS;
	SERVICE_STATUS serviceStatus;

	if((hSC = FUNC2(NULL, SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT)))
	{
		if((hS = FUNC3(hSC, serviceName, dwDesiredAccess)))
		{
			status = FUNC1(hS, dwControl, ptrServiceStatus ? ptrServiceStatus : &serviceStatus);
			FUNC0(hS);
		}
		FUNC0(hSC);
	}
	return status;
}