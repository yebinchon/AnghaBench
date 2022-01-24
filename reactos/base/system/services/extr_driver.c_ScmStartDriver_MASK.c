#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ dwWin32ExitCode; int /*<<< orphan*/  dwControlsAccepted; int /*<<< orphan*/  dwCurrentState; } ;
struct TYPE_6__ {TYPE_1__ Status; } ;
typedef  TYPE_2__* PSERVICE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  SERVICE_ACCEPT_STOP ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 

DWORD
FUNC2(PSERVICE pService)
{
    DWORD dwError;

    FUNC0("ScmStartDriver(%p)\n", pService);

    dwError = FUNC1(pService);
    if (dwError == ERROR_SUCCESS)
    {
        pService->Status.dwCurrentState = SERVICE_RUNNING;
        pService->Status.dwControlsAccepted = SERVICE_ACCEPT_STOP;
        pService->Status.dwWin32ExitCode = ERROR_SUCCESS;
    }

    FUNC0("ScmStartDriver returns %lu\n", dwError);

    return dwError;
}