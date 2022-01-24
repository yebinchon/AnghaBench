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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC6(
    SC_HANDLE hSCManager,
    LPWSTR ServiceName,
    ULONG RetryCount)
{
    SC_HANDLE hService;
    BOOL ret;

    hService = FUNC2(hSCManager, ServiceName, SERVICE_ALL_ACCESS);
    if (!hService)
    {
        FUNC5("Failed to open service %S %x\n", ServiceName, FUNC1());
        return FALSE;
    }

    if (!FUNC3(hService, 0, NULL))
    {
        FUNC5("Failed to start service %S %x\n", ServiceName, FUNC1());
        FUNC0(hService);
        return FALSE;
    }

    ret = FUNC4(hService, RetryCount);

    FUNC0(hService);
    return ret;
}