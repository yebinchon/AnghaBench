#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t cActions; TYPE_1__* lpsaActions; scalar_t__ lpCommand; scalar_t__ lpRebootMsg; int /*<<< orphan*/  dwResetPeriod; } ;
struct TYPE_5__ {int Type; int /*<<< orphan*/  Delay; } ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  TYPE_2__* LPSERVICE_FAILURE_ACTIONS ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  size_t INT ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
#define  SC_ACTION_NONE 131 
#define  SC_ACTION_REBOOT 130 
#define  SC_ACTION_RESTART 129 
#define  SC_ACTION_RUN_COMMAND 128 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_CONFIG_FAILURE_ACTIONS ; 
 int /*<<< orphan*/  SERVICE_QUERY_CONFIG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,...) ; 

BOOL FUNC11(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;
    LPSERVICE_FAILURE_ACTIONS pServiceFailure = NULL;
    INT i;

#ifdef SCDBG
    _tprintf(_T("service to show failure action - %s\n\n"), ServiceName);
#endif

    hManager = FUNC4(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        bResult = FALSE;
        goto done;
    }

    hService = FUNC5(hManager, ServiceName, SERVICE_QUERY_CONFIG);
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
        FUNC8(ERROR_OUTOFMEMORY);
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

    FUNC10(FUNC9("SERVICE_NAME: %s\n"), ServiceName);
    FUNC10(FUNC9("        RESET_PERIOD       : %lu seconds\n"), pServiceFailure->dwResetPeriod);
    FUNC10(FUNC9("        REBOOT_MESSAGE     : %s\n"), (pServiceFailure->lpRebootMsg) ? pServiceFailure->lpRebootMsg : FUNC9(""));
    FUNC10(FUNC9("        COMMAND_LINE       : %s\n"), (pServiceFailure->lpCommand) ? pServiceFailure->lpCommand : FUNC9(""));
    FUNC10(FUNC9("        FAILURE_ACTIONS    : "));
    for (i = 0; i < pServiceFailure->cActions; i++)
    {
        if (i != 0)
            FUNC10(FUNC9("                             "));
        switch (pServiceFailure->lpsaActions[i].Type)
        {
            case SC_ACTION_NONE:
                continue;

            case SC_ACTION_RESTART:
                FUNC10(FUNC9("RESTART -- Delay = %lu milliseconds.\n"), pServiceFailure->lpsaActions[i].Delay);
                break;

            case SC_ACTION_REBOOT:
                FUNC10(FUNC9("REBOOT -- Delay = %lu milliseconds.\n"), pServiceFailure->lpsaActions[i].Delay);
                break;

            case SC_ACTION_RUN_COMMAND:
                FUNC10(FUNC9("RUN_COMMAND -- Delay = %lu milliseconds.\n"), pServiceFailure->lpsaActions[i].Delay);
                break;

            default:
                FUNC10(FUNC9("\n"));
                break;
        }
    }

done:
    if (bResult == FALSE)
        FUNC7();

    if (pServiceFailure != NULL)
        FUNC3(FUNC1(), 0, pServiceFailure);

    if (hService)
        FUNC0(hService);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}