#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int dwImageRunCount; int /*<<< orphan*/  dwProcessId; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  pszImagePath; int /*<<< orphan*/ * hToken; } ;
struct TYPE_15__ {int dwServiceType; } ;
struct TYPE_17__ {TYPE_9__* lpImage; int /*<<< orphan*/  lpServiceName; TYPE_1__ Status; } ;
struct TYPE_16__ {int cb; char* lpDesktop; int /*<<< orphan*/  hThread; int /*<<< orphan*/  dwProcessId; int /*<<< orphan*/  hProcess; int /*<<< orphan*/  dwThreadId; int /*<<< orphan*/  dwFlags; } ;
typedef  int /*<<< orphan*/  StartupInfo ;
typedef  TYPE_2__ STARTUPINFOW ;
typedef  int /*<<< orphan*/  ProcessInformation ;
typedef  TYPE_3__* PSERVICE ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CREATE_SUSPENDED ; 
 int CREATE_UNICODE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int DETACHED_PROCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ NoInteractiveServices ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int SERVICE_INTERACTIVE_PROCESS ; 
 int /*<<< orphan*/  STARTF_INHERITDESKTOP ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 

__attribute__((used)) static DWORD
FUNC15(PSERVICE Service,
                        DWORD argc,
                        LPWSTR* argv)
{
    PROCESS_INFORMATION ProcessInformation;
    STARTUPINFOW StartupInfo;
    LPVOID lpEnvironment;
    BOOL Result;
    DWORD dwError = ERROR_SUCCESS;

    FUNC4("ScmStartUserModeService(%p)\n", Service);

    /* If the image is already running ... */
    if (Service->lpImage->dwImageRunCount > 1)
    {
        /* ... just send a start command */
        return FUNC12(Service, argc, argv);
    }

    /* Otherwise start its process */
    FUNC14(&StartupInfo, sizeof(StartupInfo));
    StartupInfo.cb = sizeof(StartupInfo);
    FUNC14(&ProcessInformation, sizeof(ProcessInformation));

    if (Service->lpImage->hToken)
    {
        /* User token: Run the service under the user account */

        if (!FUNC1(&lpEnvironment, Service->lpImage->hToken, FALSE))
        {
            /* We failed, run the service with the current environment */
            FUNC5("CreateEnvironmentBlock() failed with error %d; service '%S' will run with the current environment.\n",
                    FUNC7(), Service->lpServiceName);
            lpEnvironment = NULL;
        }

        /* Impersonate the new user */
        Result = FUNC8(Service->lpImage->hToken);
        if (Result)
        {
            /* Launch the process in the user's logon session */
            Result = FUNC2(Service->lpImage->hToken,
                                          NULL,
                                          Service->lpImage->pszImagePath,
                                          NULL,
                                          NULL,
                                          FALSE,
                                          CREATE_UNICODE_ENVIRONMENT | DETACHED_PROCESS | CREATE_SUSPENDED,
                                          lpEnvironment,
                                          NULL,
                                          &StartupInfo,
                                          &ProcessInformation);
            if (!Result)
                dwError = FUNC7();

            /* Revert the impersonation */
            FUNC10();
        }
        else
        {
            dwError = FUNC7();
            FUNC5("ImpersonateLoggedOnUser() failed with error %d\n", dwError);
        }
    }
    else
    {
        /* No user token: Run the service under the LocalSystem account */

        if (!FUNC1(&lpEnvironment, NULL, TRUE))
        {
            /* We failed, run the service with the current environment */
            FUNC5("CreateEnvironmentBlock() failed with error %d; service '%S' will run with the current environment.\n",
                    FUNC7(), Service->lpServiceName);
            lpEnvironment = NULL;
        }

        /* Use the interactive desktop if the service is interactive */
        if ((NoInteractiveServices == 0) &&
            (Service->Status.dwServiceType & SERVICE_INTERACTIVE_PROCESS))
        {
            StartupInfo.dwFlags |= STARTF_INHERITDESKTOP;
            StartupInfo.lpDesktop = L"WinSta0\\Default";
        }

        if (!FUNC11(Service->lpImage))
        {
            Result = FUNC3(NULL,
                                    Service->lpImage->pszImagePath,
                                    NULL,
                                    NULL,
                                    FALSE,
                                    CREATE_UNICODE_ENVIRONMENT | DETACHED_PROCESS | CREATE_SUSPENDED,
                                    lpEnvironment,
                                    NULL,
                                    &StartupInfo,
                                    &ProcessInformation);
            if (!Result)
                dwError = FUNC7();
        }
        else
        {
            Result = TRUE;
            dwError = ERROR_SUCCESS;
        }
    }

    if (lpEnvironment)
        FUNC6(lpEnvironment);

    if (!Result)
    {
        FUNC5("Starting '%S' failed with error %d\n",
                Service->lpServiceName, dwError);
        return dwError;
    }

    FUNC4("Process Id: %lu  Handle %p\n",
           ProcessInformation.dwProcessId,
           ProcessInformation.hProcess);
    FUNC4("Thread Id: %lu  Handle %p\n",
           ProcessInformation.dwThreadId,
           ProcessInformation.hThread);

    /* Get the process handle and ID */
    Service->lpImage->hProcess = ProcessInformation.hProcess;
    Service->lpImage->dwProcessId = ProcessInformation.dwProcessId;

    /* Resume the main thread and close its handle */
    FUNC9(ProcessInformation.hThread);
    FUNC0(ProcessInformation.hThread);

    /* Connect control pipe */
    dwError = FUNC13(Service);
    if (dwError != ERROR_SUCCESS)
    {
        FUNC5("Connecting control pipe failed! (Error %lu)\n", dwError);
        Service->lpImage->dwProcessId = 0;
        return dwError;
    }

    /* Send the start command */
    return FUNC12(Service, argc, argv);
}