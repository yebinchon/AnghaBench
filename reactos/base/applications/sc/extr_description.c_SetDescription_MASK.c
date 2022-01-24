#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ lpDescription; } ;
typedef  TYPE_1__ SERVICE_DESCRIPTION ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  scalar_t__ LPTSTR ;
typedef  scalar_t__ LPCTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_CHANGE_CONFIG ; 
 int /*<<< orphan*/  SERVICE_CONFIG_DESCRIPTION ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 

BOOL FUNC8(LPCTSTR ServiceName, LPCTSTR Description)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    SERVICE_DESCRIPTION ServiceDescription;

#ifdef SCDBG
    _tprintf(_T("service to set description - %s\n\n"), ServiceName);
#endif

    hManager = FUNC3(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC7(FUNC6("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC4(hManager, ServiceName, SERVICE_CHANGE_CONFIG);
    if (hService == NULL)
    {
        FUNC7(FUNC6("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    ServiceDescription.lpDescription = (LPTSTR)Description;

    if (!FUNC0(hService,
                              SERVICE_CONFIG_DESCRIPTION,
                              (LPBYTE)&ServiceDescription))
    {
        FUNC7(FUNC6("[SC] ChangeServiceConfig2 FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    FUNC7(FUNC6("[SC] ChangeServiceConfig2 SUCCESS\n\n"));

done:
    if (bResult == FALSE)
        FUNC5();

    if (hService)
        FUNC1(hService);

    if (hManager)
        FUNC1(hManager);

    return bResult;
}