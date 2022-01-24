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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {char* lpDependencies; } ;
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  char* LPWSTR ;
typedef  TYPE_1__* LPQUERY_SERVICE_CONFIG ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 

LPWSTR
FUNC6(SC_HANDLE hService)
{
    LPQUERY_SERVICE_CONFIG lpServiceConfig;
    LPWSTR lpStr = NULL;
    DWORD bytesNeeded;
    DWORD bytes;

    /* Get the info for this service */
    if (!FUNC5(hService,
                             NULL,
                             0,
                             &bytesNeeded) &&
        FUNC1() == ERROR_INSUFFICIENT_BUFFER)
    {
        lpServiceConfig = FUNC3(ProcessHeap,
                                    0,
                                    bytesNeeded);
        if (lpServiceConfig)
        {
            if (FUNC5(hService,
                                    lpServiceConfig,
                                    bytesNeeded,
                                    &bytesNeeded))
            {
                /* Does this service have any dependencies? */
                if (lpServiceConfig->lpDependencies &&
                    *lpServiceConfig->lpDependencies != '\0')
                {
                    lpStr = lpServiceConfig->lpDependencies;
                    bytes = 0;

                    /* Work out how many bytes we need to hold the list */
                    for (;;)
                    {
                        bytes++;

                        if (!*lpStr && !*(lpStr + 1))
                        {
                            bytes++;
                            break;
                        }

                        lpStr++;
                    }

                    /* Allocate and copy the list */
                    bytes *= sizeof(WCHAR);
                    lpStr = FUNC3(ProcessHeap,
                                      0,
                                      bytes);
                    if (lpStr)
                    {
                        FUNC0(lpStr,
                                   lpServiceConfig->lpDependencies,
                                   bytes);
                    }
                }
            }

            FUNC4(FUNC2(),
                     0,
                     lpServiceConfig);
        }
    }

    return lpStr;
}