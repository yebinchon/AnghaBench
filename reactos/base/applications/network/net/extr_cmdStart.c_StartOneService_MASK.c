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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int INT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ENUMERATE_SERVICE ; 
 int /*<<< orphan*/  SERVICES_ACTIVE_DATABASE ; 
 int /*<<< orphan*/  SERVICE_START ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  StdErr ; 

__attribute__((used)) static
INT
FUNC9(INT argc, WCHAR **argv)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    LPCWSTR *lpArgVectors = NULL;
    DWORD dwError = ERROR_SUCCESS;
    INT nError = 0;
    INT i;

    hManager = FUNC6(NULL,
                              SERVICES_ACTIVE_DATABASE,
                              SC_MANAGER_ENUMERATE_SERVICE);
    if (hManager == NULL)
    {
        dwError = FUNC2();
        nError = 1;
        goto done;
    }

    hService = FUNC7(hManager,
                            argv[2],
                            SERVICE_START);
    if (hService == NULL)
    {
        dwError = FUNC2();
        nError = 1;
        goto done;
    }

    lpArgVectors = FUNC4(FUNC3(),
                             0,
                             (argc - 2) * sizeof(LPCWSTR));
    if (lpArgVectors == NULL)
    {
        dwError = FUNC2();
        nError = 1;
        goto done;
    }

    for (i = 2; i < argc; i++)
    {
        lpArgVectors[i - 2] = argv[i];
    }

    if (!FUNC8(hService,
                       (DWORD)argc - 2,
                       lpArgVectors))
    {
        dwError = FUNC2();
        nError = 1;
    }

done:
    if (lpArgVectors != NULL)
        FUNC5(FUNC3(), 0, (LPVOID)lpArgVectors);

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