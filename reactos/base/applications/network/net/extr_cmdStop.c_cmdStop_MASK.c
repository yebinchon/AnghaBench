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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  SERVICE_STATUS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  MSG_STOP_HELP ; 
 int /*<<< orphan*/  MSG_STOP_SYNTAX ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ENUMERATE_SERVICE ; 
 int /*<<< orphan*/  SERVICES_ACTIVE_DATABASE ; 
 int /*<<< orphan*/  SERVICE_CONTROL_STOP ; 
 int /*<<< orphan*/  SERVICE_STOP ; 
 int /*<<< orphan*/  StdErr ; 
 int /*<<< orphan*/  StdOut ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 

INT FUNC10(INT argc, WCHAR **argv)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    SERVICE_STATUS ServiceStatus;
    DWORD dwError = ERROR_SUCCESS;
    INT nError = 0;
    INT i;

    if (argc != 3)
    {
        FUNC7(4381);
        FUNC2(StdOut, L"\n");
        FUNC8(MSG_STOP_SYNTAX);
        return 1;
    }

    for (i = 2; i < argc; i++)
    {
        if (FUNC9(argv[i], L"/help") == 0)
        {
            FUNC7(4381);
            FUNC2(StdOut, L"\n");
            FUNC8(MSG_STOP_SYNTAX);
            FUNC8(MSG_STOP_HELP);
            return 1;
        }
    }

    hManager = FUNC5(NULL,
                              SERVICES_ACTIVE_DATABASE,
                              SC_MANAGER_ENUMERATE_SERVICE);
    if (hManager == NULL)
    {
        dwError = FUNC4();
        nError = 1;
        goto done;
    }

    hService = FUNC6(hManager,
                            argv[2],
                            SERVICE_STOP);
    if (hService == NULL)
    {
        dwError = FUNC4();
        nError = 1;
        goto done;
    }

    if (!FUNC3(hService, SERVICE_CONTROL_STOP, &ServiceStatus))
    {
        dwError = FUNC4();
        nError = 1;
        goto done;
    }

done:
    if (hService != NULL)
        FUNC0(hService);

    if (hManager != NULL)
        FUNC0(hManager);

    if (dwError != ERROR_SUCCESS)
    {
        /* FIXME: Print proper error message */
        FUNC1(StdErr, L"Error: %lu\n", dwError);
    }

    return nError;
}