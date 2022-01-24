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
struct TYPE_3__ {int /*<<< orphan*/  lpDisplayName; int /*<<< orphan*/  lpServiceStartName; int /*<<< orphan*/  lpDependencies; scalar_t__ dwTagId; int /*<<< orphan*/  lpLoadOrderGroup; int /*<<< orphan*/  lpBinaryPathName; int /*<<< orphan*/  dwErrorControl; int /*<<< orphan*/  dwStartType; int /*<<< orphan*/  dwServiceType; } ;
typedef  int /*<<< orphan*/  SC_LOCK ;
typedef  scalar_t__ SC_HANDLE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_LOCK ; 
 int /*<<< orphan*/  SERVICE_CHANGE_CONFIG ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

BOOL
FUNC7(LPQUERY_SERVICE_CONFIG pServiceConfig,
                 LPWSTR lpServiceName,
                 LPWSTR lpPassword)
{
    SC_HANDLE hSCManager;
    SC_HANDLE hSc;
    SC_LOCK scLock;
    BOOL bRet = FALSE;

    hSCManager = FUNC4(NULL,
                                NULL,
                                SC_MANAGER_LOCK);
    if (hSCManager)
    {
        scLock = FUNC3(hSCManager);
        if (scLock)
        {
            hSc = FUNC5(hSCManager,
                               lpServiceName,
                               SERVICE_CHANGE_CONFIG);
            if (hSc)
            {
                if (FUNC0(hSc,
                                         pServiceConfig->dwServiceType,
                                         pServiceConfig->dwStartType,
                                         pServiceConfig->dwErrorControl,
                                         pServiceConfig->lpBinaryPathName,
                                         pServiceConfig->lpLoadOrderGroup,
                                         pServiceConfig->dwTagId ? &pServiceConfig->dwTagId : NULL,
                                         pServiceConfig->lpDependencies,
                                         pServiceConfig->lpServiceStartName,
                                         lpPassword,
                                         pServiceConfig->lpDisplayName))
                {
                    bRet = TRUE;
                }

                FUNC1(hSc);
            }

            FUNC6(scLock);
        }

        FUNC1(hSCManager);
    }

    if (!bRet)
        FUNC2();

    return bRet;
}