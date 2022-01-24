#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * pServiceFailure; TYPE_1__* pService; } ;
struct TYPE_4__ {int /*<<< orphan*/  lpServiceName; } ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  TYPE_2__* PRECOVERYDATA ;
typedef  int /*<<< orphan*/ * LPSERVICE_FAILURE_ACTIONS ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_CONFIG_FAILURE_ACTIONS ; 
 int /*<<< orphan*/  SERVICE_QUERY_CONFIG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static
BOOL
FUNC8(
    PRECOVERYDATA pRecoveryData)
{
    LPSERVICE_FAILURE_ACTIONS pServiceFailure = NULL;
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;

    hManager = FUNC4(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        bResult = FALSE;
        goto done;
    }

    hService = FUNC5(hManager, pRecoveryData->pService->lpServiceName, SERVICE_QUERY_CONFIG);
    if (hService == NULL)
    {
        bResult = FALSE;
        goto done;
    }

    if (!FUNC6(hService,
                             SERVICE_CONFIG_FAILURE_ACTIONS,
                             NULL,
                             0,
                             &cbBytesNeeded))
    {
        if (cbBytesNeeded == 0)
        {
            bResult = FALSE;
            goto done;
        }
    }

    pServiceFailure = FUNC2(FUNC1(), 0, cbBytesNeeded);
    if (pServiceFailure == NULL)
    {
        FUNC7(ERROR_OUTOFMEMORY);
        bResult = FALSE;
        goto done;
    }

    if (!FUNC6(hService,
                             SERVICE_CONFIG_FAILURE_ACTIONS,
                             (LPBYTE)pServiceFailure,
                             cbBytesNeeded,
                             &cbBytesNeeded))
    {
        bResult = FALSE;
        goto done;
    }

    pRecoveryData->pServiceFailure = pServiceFailure;

done:
    if (bResult == FALSE && pServiceFailure != NULL)
        FUNC3(FUNC1(), 0, pServiceFailure);

    if (hService)
        FUNC0(hService);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}