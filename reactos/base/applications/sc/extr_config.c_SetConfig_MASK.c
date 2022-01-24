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
struct TYPE_3__ {int /*<<< orphan*/  lpDisplayName; int /*<<< orphan*/  lpPassword; int /*<<< orphan*/  lpServiceStartName; int /*<<< orphan*/  lpDependencies; int /*<<< orphan*/  dwTagId; scalar_t__ bTagId; int /*<<< orphan*/  lpLoadOrderGroup; int /*<<< orphan*/  lpBinaryPathName; int /*<<< orphan*/  dwErrorControl; int /*<<< orphan*/  dwStartType; int /*<<< orphan*/  dwServiceType; int /*<<< orphan*/  lpServiceName; } ;
typedef  TYPE_1__ SERVICE_CREATE_INFO ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_CHANGE_CONFIG ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 

BOOL FUNC10(LPCTSTR *ServiceArgs, INT ArgCount)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    SERVICE_CREATE_INFO ServiceInfo;

    if (!FUNC5(ServiceArgs, ArgCount, TRUE, &ServiceInfo))
    {
        FUNC7();
        return FALSE;
    }

#ifdef SCDBG
    _tprintf(_T("service name - %s\n"), ServiceInfo.lpServiceName);
    _tprintf(_T("display name - %s\n"), ServiceInfo.lpDisplayName);
    _tprintf(_T("service type - %lu\n"), ServiceInfo.dwServiceType);
    _tprintf(_T("start type - %lu\n"), ServiceInfo.dwStartType);
    _tprintf(_T("error control - %lu\n"), ServiceInfo.dwErrorControl);
    _tprintf(_T("Binary path - %s\n"), ServiceInfo.lpBinaryPathName);
    _tprintf(_T("load order group - %s\n"), ServiceInfo.lpLoadOrderGroup);
    _tprintf(_T("tag - %lu\n"), ServiceInfo.dwTagId);
    _tprintf(_T("dependencies - %s\n"), ServiceInfo.lpDependencies);
    _tprintf(_T("account start name - %s\n"), ServiceInfo.lpServiceStartName);
    _tprintf(_T("account password - %s\n"), ServiceInfo.lpPassword);
#endif

    hManager = FUNC3(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC9(FUNC8("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC4(hManager,
                           ServiceInfo.lpServiceName,
                           SERVICE_CHANGE_CONFIG);
    if (hService == NULL)
    {
        FUNC9(FUNC8("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC0(hService,
                             ServiceInfo.dwServiceType,
                             ServiceInfo.dwStartType,
                             ServiceInfo.dwErrorControl,
                             ServiceInfo.lpBinaryPathName,
                             ServiceInfo.lpLoadOrderGroup,
                             ServiceInfo.bTagId ? &ServiceInfo.dwTagId : NULL,
                             ServiceInfo.lpDependencies,
                             ServiceInfo.lpServiceStartName,
                             ServiceInfo.lpPassword,
                             ServiceInfo.lpDisplayName))
    {
        FUNC9(FUNC8("[SC] ChangeServiceConfig FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    FUNC9(FUNC8("[SC] ChangeServiceConfig SUCCESS\n\n"));

done:
    if (bResult == FALSE)
        FUNC6();

    if (hService)
        FUNC1(hService);

    if (hManager)
        FUNC1(hManager);

    return bResult;
}