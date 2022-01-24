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
typedef  int /*<<< orphan*/  SC_LOCK ;
typedef  scalar_t__ SC_HANDLE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_LOCK ; 
 int /*<<< orphan*/  SERVICE_CHANGE_CONFIG ; 
 int /*<<< orphan*/  SERVICE_NO_CHANGE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
BOOL
FUNC7(
    LPWSTR lpServiceName,
    DWORD dwServiceType,
    LPWSTR lpStartName,
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
                                         dwServiceType,
                                         SERVICE_NO_CHANGE,
                                         SERVICE_NO_CHANGE,
                                         NULL,
                                         NULL,
                                         NULL,
                                         NULL,
                                         lpStartName,
                                         lpPassword,
                                         NULL))
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