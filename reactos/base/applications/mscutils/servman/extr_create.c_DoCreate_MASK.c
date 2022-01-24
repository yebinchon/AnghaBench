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
struct TYPE_3__ {int /*<<< orphan*/  Description; int /*<<< orphan*/  ServiceName; int /*<<< orphan*/  BinPath; int /*<<< orphan*/  DisplayName; } ;
typedef  scalar_t__ SC_HANDLE ;
typedef  TYPE_1__* PCREATE_DATA ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IDS_CREATE_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_DEMAND_START ; 
 int /*<<< orphan*/  SERVICE_ERROR_NORMAL ; 
 int /*<<< orphan*/  SERVICE_WIN32_OWN_PROCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hInstance ; 

__attribute__((used)) static BOOL
FUNC7(PCREATE_DATA Data)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hSc;
    BOOL bRet = FALSE;

    /* open handle to the SCM */
    hSCManager = FUNC5(NULL,
                                NULL,
                                SC_MANAGER_ALL_ACCESS);
    if (hSCManager)
    {
        hSc = FUNC2(hSCManager,
                             Data->ServiceName,
                             Data->DisplayName,
                             SERVICE_ALL_ACCESS,
                             SERVICE_WIN32_OWN_PROCESS,
                             SERVICE_DEMAND_START,
                             SERVICE_ERROR_NORMAL,
                             Data->BinPath,
                             NULL,
                             NULL,
                             NULL,
                             NULL,
                             NULL);

        if (hSc)
        {
            LPWSTR lpSuccess;

            /* Set the service description as CreateService
               does not do this for us */
            FUNC6(Data->ServiceName,
                                  Data->Description);

            /* report success to user */
            if (FUNC0(&lpSuccess,
                                   hInstance,
                                   IDS_CREATE_SUCCESS))
            {
                FUNC3(lpSuccess);

                FUNC4(lpSuccess);
            }

            FUNC1(hSc);
            bRet = TRUE;
        }

        FUNC1(hSCManager);
    }

    return bRet;
}