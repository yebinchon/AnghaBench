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
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  ENUM_SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  SC_ENUM_PROCESS_INFO ; 
 int /*<<< orphan*/  SC_MANAGER_ENUMERATE_SERVICE ; 

__attribute__((used)) static
DWORD
FUNC8(ENUM_SERVICE_STATUS_PROCESS **pServiceStatus,
             DWORD dwServiceType,
             DWORD dwServiceState,
             DWORD dwBufferSize,
             DWORD dwResumeIndex,
             LPCTSTR pszGroupName)
{
    SC_HANDLE hSCManager;
    DWORD BytesNeeded = 0;
    DWORD ResumeHandle = dwResumeIndex;
    DWORD NumServices = 0;
    BOOL Ret;

    hSCManager = FUNC6(NULL,
                               NULL,
                               SC_MANAGER_ENUMERATE_SERVICE);
    if (hSCManager == NULL)
    {
        FUNC7();
        return 0;
    }

    if (dwBufferSize == 0)
    {
        Ret = FUNC1(hSCManager,
                                   SC_ENUM_PROCESS_INFO,
                                   dwServiceType,
                                   dwServiceState,
                                   (LPBYTE)*pServiceStatus,
                                   dwBufferSize,
                                   &BytesNeeded,
                                   &NumServices,
                                   &ResumeHandle,
                                   pszGroupName);
        if ((Ret == 0) && (FUNC2() != ERROR_MORE_DATA))
        {
            FUNC7();
            return 0;
        }

        dwBufferSize = BytesNeeded;
    }

    *pServiceStatus = (ENUM_SERVICE_STATUS_PROCESS *)
                      FUNC4(FUNC3(),
                                0,
                                dwBufferSize);
    if (*pServiceStatus != NULL)
    {
        if (FUNC1(hSCManager,
                                 SC_ENUM_PROCESS_INFO,
                                 dwServiceType,
                                 dwServiceState,
                                 (LPBYTE)*pServiceStatus,
                                 dwBufferSize,
                                 &BytesNeeded,
                                 &NumServices,
                                 &ResumeHandle,
                                 pszGroupName))
        {
            FUNC0(hSCManager);
            return NumServices;
        }
    }

    FUNC7();
    if (*pServiceStatus)
        FUNC5(FUNC3(), 0, *pServiceStatus);

    FUNC0(hSCManager);

    return NumServices;
}