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
struct TYPE_4__ {int dwSize; scalar_t__ th32ParentProcessID; scalar_t__ th32ProcessID; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  ProcessEntry ;
typedef  TYPE_1__ PROCESSENTRY32W ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int PROCESS_QUERY_INFORMATION ; 
 int PROCESS_TERMINATE ; 
 scalar_t__ FUNC3 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

BOOL FUNC6(HANDLE hSnapshot, HANDLE hParentProcess, DWORD dwParentPID)
{
    HANDLE hChildHandle;
    PROCESSENTRY32W ProcessEntry = {0};
    ProcessEntry.dwSize = sizeof(ProcessEntry);

    if (FUNC3(hSnapshot, &ProcessEntry))
    {
        do
        {
            if (ProcessEntry.th32ParentProcessID == dwParentPID)
            {
                hChildHandle = FUNC2(PROCESS_TERMINATE | PROCESS_QUERY_INFORMATION,
                                           FALSE,
                                           ProcessEntry.th32ProcessID);
                if (!hChildHandle || FUNC1(hChildHandle))
                {
                    if (hChildHandle)
                    {
                        FUNC0(hChildHandle);
                    }
                    continue;
                }
                if (!FUNC6(hSnapshot, hChildHandle, ProcessEntry.th32ProcessID))
                {
                    FUNC0(hChildHandle);
                    return FALSE;
                }
                FUNC0(hChildHandle);
            }
        } while (FUNC4(hSnapshot, &ProcessEntry));
    }

    return FUNC5(hParentProcess, 0);
}