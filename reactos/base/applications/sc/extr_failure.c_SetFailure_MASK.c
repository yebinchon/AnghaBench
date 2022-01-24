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
struct TYPE_4__ {int /*<<< orphan*/ * lpsaActions; } ;
typedef  TYPE_1__ SERVICE_FAILURE_ACTIONS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ BOOLEAN ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int SERVICE_CHANGE_CONFIG ; 
 int /*<<< orphan*/  SERVICE_CONFIG_FAILURE_ACTIONS ; 
 int SERVICE_START ; 
 int /*<<< orphan*/  SE_SHUTDOWN_PRIVILEGE ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,...) ; 

BOOL
FUNC14(
    LPCTSTR *ServiceArgs,
    INT ArgCount)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    SERVICE_FAILURE_ACTIONS FailureActions;
    LPCTSTR lpServiceName = NULL;
    BOOLEAN Old = FALSE;

    FUNC11(&FailureActions, sizeof(SERVICE_FAILURE_ACTIONS));

    if (!FUNC7(ServiceArgs, ArgCount, &lpServiceName, &FailureActions))
    {
        FUNC10();
        return FALSE;
    }

    hManager = FUNC5(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC13(FUNC12("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC6(hManager,
                           lpServiceName,
                           SERVICE_CHANGE_CONFIG | SERVICE_START);
    if (hService == NULL)
    {
        FUNC13(FUNC12("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    FUNC9(SE_SHUTDOWN_PRIVILEGE, TRUE, FALSE, &Old);

    if (!FUNC0(hService,
                              SERVICE_CONFIG_FAILURE_ACTIONS,
                              (LPBYTE)&FailureActions))
    {
        FUNC13(FUNC12("[SC] ChangeServiceConfig2 FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    FUNC13(FUNC12("[SC] ChangeServiceConfig2 SUCCESS\n\n"));

done:
    FUNC9(SE_SHUTDOWN_PRIVILEGE, Old, FALSE, &Old);

    if (bResult == FALSE)
        FUNC8();

    if (FailureActions.lpsaActions != NULL)
        FUNC4(FUNC3(), 0, FailureActions.lpsaActions);

    if (hService)
        FUNC1(hService);

    if (hManager)
        FUNC1(hManager);

    return bResult;
}