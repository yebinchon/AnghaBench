#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ lpDescription; } ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  TYPE_1__* LPSERVICE_DESCRIPTION ;
typedef  scalar_t__ LPCTSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_CONFIG_DESCRIPTION ; 
 int /*<<< orphan*/  SERVICE_QUERY_CONFIG ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,...) ; 

BOOL FUNC12(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;
    LPSERVICE_DESCRIPTION pServiceDescription = NULL;

#ifdef SCDBG
    _tprintf(_T("service to show description - %s\n\n"), ServiceName);
#endif

    hManager = FUNC5(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC11(FUNC10("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC6(hManager, ServiceName, SERVICE_QUERY_CONFIG);
    if (hService == NULL)
    {
        FUNC11(FUNC10("[SC] OpenService FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC7(hService,
                             SERVICE_CONFIG_DESCRIPTION,
                             NULL,
                             0,
                             &cbBytesNeeded))
    {
        if (cbBytesNeeded == 0)
        {
            FUNC11(FUNC10("[SC] QueryServiceConfig2 FAILED %lu:\n\n"), FUNC1());
            bResult = FALSE;
            goto done;
        }
    }

    pServiceDescription = FUNC3(FUNC2(), 0, cbBytesNeeded);
    if (pServiceDescription == NULL)
    {
        FUNC9(ERROR_OUTOFMEMORY);
        FUNC11(FUNC10("[SC] HeapAlloc FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC7(hService,
                             SERVICE_CONFIG_DESCRIPTION,
                             (LPBYTE)pServiceDescription,
                             cbBytesNeeded,
                             &cbBytesNeeded))
    {
        FUNC11(FUNC10("[SC] QueryServiceConfig2 FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    FUNC11(FUNC10("[SC] QueryServiceConfig2 SUCCESS\n\n"));

    FUNC11(FUNC10("SERVICE_NAME: %s\n"), ServiceName);
    FUNC11(FUNC10("        DESCRIPTION        : %s\n"),
             (pServiceDescription->lpDescription) ? pServiceDescription->lpDescription : FUNC10(""));

done:
    if (bResult == FALSE)
        FUNC8();

    if (pServiceDescription != NULL)
        FUNC4(FUNC2(), 0, pServiceDescription);

    if (hService)
        FUNC0(hService);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}