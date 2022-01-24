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
typedef  scalar_t__ SC_HANDLE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPQUERY_SERVICE_CONFIGW ;
typedef  int /*<<< orphan*/ * LPQUERY_SERVICE_CONFIG ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_QUERY_CONFIG ; 

LPQUERY_SERVICE_CONFIG
FUNC8(LPWSTR lpServiceName)
{
    LPQUERY_SERVICE_CONFIGW lpServiceConfig = NULL;
    SC_HANDLE hSCManager;
    SC_HANDLE hService;
    DWORD dwBytesNeeded;

    hSCManager = FUNC5(NULL,
                                NULL,
                                SC_MANAGER_CONNECT);
    if (hSCManager)
    {
        hService = FUNC6(hSCManager,
                                lpServiceName,
                                SERVICE_QUERY_CONFIG);
        if (hService)
        {
            if (!FUNC7(hService,
                                     NULL,
                                     0,
                                     &dwBytesNeeded))
            {
                if (FUNC1() == ERROR_INSUFFICIENT_BUFFER)
                {
                    lpServiceConfig = (LPQUERY_SERVICE_CONFIG)FUNC3(FUNC2(),
                                                                        0,
                                                                        dwBytesNeeded);
                    if (lpServiceConfig)
                    {
                        if (!FUNC7(hService,
                                                lpServiceConfig,
                                                dwBytesNeeded,
                                                &dwBytesNeeded))
                        {
                            FUNC4(FUNC2(),
                                     0,
                                     lpServiceConfig);
                            lpServiceConfig = NULL;
                        }
                    }
                }
            }

            FUNC0(hService);
        }

        FUNC0(hSCManager);
    }

    return lpServiceConfig;
}