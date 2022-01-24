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
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SERVICE_NOT_ACTIVE ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

BOOL FUNC5(PCWSTR serviceName)
{
	BOOL status = FALSE, toRemove = TRUE;
	if(FUNC4(serviceName))
		FUNC2(L"[+] \'%s\' service stopped\n", serviceName);
	else if(FUNC0() == ERROR_SERVICE_NOT_ACTIVE)
		FUNC2(L"[*] \'%s\' service not running\n", serviceName);
	else
	{
		toRemove = FALSE;
		FUNC1(L"kull_m_service_stop");
	}

	if(toRemove)
	{
		if((status = FUNC3(serviceName)))
			FUNC2(L"[+] \'%s\' service removed\n", serviceName);
		else FUNC1(L"kull_m_service_remove");
	}
	return STATUS_SUCCESS;
}