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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SERVICE_ALREADY_RUNNING ; 
 scalar_t__ ERROR_SERVICE_DOES_NOT_EXIST ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int READ_CONTROL ; 
 int SC_MANAGER_CONNECT ; 
 int SC_MANAGER_CREATE_SERVICE ; 
 int /*<<< orphan*/  SERVICES_ACTIVE_DATABASE ; 
 int /*<<< orphan*/  SERVICE_ERROR_NORMAL ; 
 int SERVICE_START ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int WRITE_DAC ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

BOOL FUNC9(PCWSTR serviceName, PCWSTR displayName, PCWSTR binPath, DWORD serviceType, DWORD startType, BOOL startIt)
{
	BOOL status = FALSE;
	SC_HANDLE hSC = NULL, hS = NULL;

	if((hSC = FUNC3(NULL, SERVICES_ACTIVE_DATABASE, SC_MANAGER_CONNECT | SC_MANAGER_CREATE_SERVICE)))
	{
		if((hS = FUNC4(hSC, serviceName, SERVICE_START)))
		{
			FUNC7(L"[+] \'%s\' service already registered\n", serviceName);
		}
		else
		{
			if(FUNC2() == ERROR_SERVICE_DOES_NOT_EXIST)
			{
				FUNC7(L"[*] \'%s\' service not present\n", serviceName);
				if((hS = FUNC1(hSC, serviceName, displayName, READ_CONTROL | WRITE_DAC | SERVICE_START, serviceType, startType, SERVICE_ERROR_NORMAL, binPath, NULL, NULL, NULL, NULL, NULL)))
				{
					FUNC7(L"[+] \'%s\' service successfully registered\n", serviceName);
					if((status = FUNC8(hS)))
						FUNC7(L"[+] \'%s\' service ACL to everyone\n", serviceName);
					else FUNC5(L"kull_m_service_addWorldToSD");
				}
				else FUNC5(L"CreateService");
			}
			else FUNC5(L"OpenService");
		}
		if(hS)
		{
			if(startIt)
			{
				if((status = FUNC6(hS, 0, NULL)))
					FUNC7(L"[+] \'%s\' service started\n", serviceName);
				else if(FUNC2() == ERROR_SERVICE_ALREADY_RUNNING)
					FUNC7(L"[*] \'%s\' service already started\n", serviceName);
				else FUNC5(L"StartService");
			}
			FUNC0(hS);
		}
		FUNC0(hSC);
	}
	else FUNC5(L"OpenSCManager(create)");
	return status;
}