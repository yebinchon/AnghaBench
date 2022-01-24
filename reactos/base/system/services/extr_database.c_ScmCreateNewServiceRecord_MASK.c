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
struct TYPE_5__ {int dwWaitHint; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; int /*<<< orphan*/  dwWin32ExitCode; scalar_t__ dwControlsAccepted; int /*<<< orphan*/  dwCurrentState; scalar_t__ dwServiceType; } ;
struct TYPE_6__ {TYPE_1__ Status; int /*<<< orphan*/  ServiceListEntry; scalar_t__ dwResumeCount; scalar_t__ dwStartType; int /*<<< orphan*/  lpServiceName; int /*<<< orphan*/  lpDisplayName; int /*<<< orphan*/  szServiceName; } ;
typedef  TYPE_2__* PSERVICE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SERVICE_DISABLED ; 
 int /*<<< orphan*/  ERROR_SERVICE_NEVER_STARTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ResumeCount ; 
 int /*<<< orphan*/  SERVICE ; 
 scalar_t__ SERVICE_DISABLED ; 
 scalar_t__ SERVICE_DRIVER ; 
 int /*<<< orphan*/  SERVICE_STOPPED ; 
 int /*<<< orphan*/  ServiceListHead ; 
 int /*<<< orphan*/ * szServiceName ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

DWORD
FUNC7(LPCWSTR lpServiceName,
                          PSERVICE *lpServiceRecord,
                          DWORD dwServiceType,
                          DWORD dwStartType)
{
    PSERVICE lpService = NULL;

    FUNC0("Service: '%S'\n", lpServiceName);

    /* Allocate service entry */
    lpService = FUNC3(FUNC2(),
                          HEAP_ZERO_MEMORY,
                          FUNC1(SERVICE, szServiceName[FUNC6(lpServiceName) + 1]));
    if (lpService == NULL)
        return ERROR_NOT_ENOUGH_MEMORY;

    *lpServiceRecord = lpService;

    /* Copy service name */
    FUNC5(lpService->szServiceName, lpServiceName);
    lpService->lpServiceName = lpService->szServiceName;
    lpService->lpDisplayName = lpService->lpServiceName;

    /* Set the start type */
    lpService->dwStartType = dwStartType;

    /* Set the resume count */
    lpService->dwResumeCount = ResumeCount++;

    /* Append service record */
    FUNC4(&ServiceListHead,
                   &lpService->ServiceListEntry);

    /* Initialize the service status */
    lpService->Status.dwServiceType = dwServiceType;
    lpService->Status.dwCurrentState = SERVICE_STOPPED;
    lpService->Status.dwControlsAccepted = 0;
    lpService->Status.dwWin32ExitCode =
        (dwStartType == SERVICE_DISABLED) ? ERROR_SERVICE_DISABLED : ERROR_SERVICE_NEVER_STARTED;
    lpService->Status.dwServiceSpecificExitCode = 0;
    lpService->Status.dwCheckPoint = 0;
    lpService->Status.dwWaitHint =
        (dwServiceType & SERVICE_DRIVER) ? 0 : 2000; /* 2 seconds */

    return ERROR_SUCCESS;
}