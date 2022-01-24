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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_3__ {int /*<<< orphan*/  lpServiceName; } ;
typedef  int /*<<< orphan*/ * PWSTR ;
typedef  TYPE_1__* PSERVICE ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ERROR_INVALID_SERVICE_CONTROL ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  SE_LOAD_DRIVER_PRIVILEGE ; 
 scalar_t__ STATUS_INVALID_DEVICE_REQUEST ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
DWORD
FUNC13(PSERVICE lpService)
{
    NTSTATUS Status = STATUS_SUCCESS;
    BOOLEAN WasPrivilegeEnabled = FALSE;
    PWSTR pszDriverPath;
    UNICODE_STRING DriverPath;
    DWORD dwError;

    /* Build the driver path */
    /* 52 = wcslen(L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\") */
    pszDriverPath = FUNC3(FUNC2(),
                              HEAP_ZERO_MEMORY,
                              (52 + FUNC12(lpService->lpServiceName) + 1) * sizeof(WCHAR));
    if (pszDriverPath == NULL)
        return ERROR_NOT_ENOUGH_MEMORY;

    FUNC11(pszDriverPath,
           L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\");
    FUNC10(pszDriverPath,
           lpService->lpServiceName);

    FUNC8(&DriverPath,
                         pszDriverPath);

    FUNC0("  Path: %wZ\n", &DriverPath);

    /* Acquire driver-unloading privilege */
    Status = FUNC7(SE_LOAD_DRIVER_PRIVILEGE,
                                TRUE,
                                FALSE,
                                &WasPrivilegeEnabled);
    if (!FUNC5(Status))
    {
        /* We encountered a failure, exit properly */
        FUNC1("SERVICES: Cannot acquire driver-unloading privilege, Status = 0x%08lx\n", Status);
        dwError = FUNC9(Status);
        goto done;
    }

    Status = FUNC6(&DriverPath);
    if (Status == STATUS_INVALID_DEVICE_REQUEST)
        dwError = ERROR_INVALID_SERVICE_CONTROL;
    else
        dwError = FUNC9(Status);

    /* Release driver-unloading privilege */
    FUNC7(SE_LOAD_DRIVER_PRIVILEGE,
                       WasPrivilegeEnabled,
                       FALSE,
                       &WasPrivilegeEnabled);

done:
    FUNC4(FUNC2(), 0, pszDriverPath);
    return dwError;
}