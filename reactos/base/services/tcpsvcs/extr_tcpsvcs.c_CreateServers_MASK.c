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
typedef  int /*<<< orphan*/  WSADATA ;
typedef  char WCHAR ;
struct TYPE_3__ {char* lpName; } ;
typedef  int /*<<< orphan*/  PSERVICEINFO ;
typedef  int INT ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  char* DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  LOG_ALL ; 
 int /*<<< orphan*/  LOG_FILE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int NUM_SERVICES ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 TYPE_1__* Services ; 
 int /*<<< orphan*/  StartServer ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 

__attribute__((used)) static BOOL
FUNC10(PSERVICEINFO pServInfo)
{
    DWORD dwThreadId[NUM_SERVICES];
    HANDLE hThread[NUM_SERVICES];
    WSADATA wsaData;
    WCHAR buf[256];
    INT i;
    DWORD RetVal;

    if ((RetVal = FUNC7(FUNC4(2, 2), &wsaData)) != 0)
    {
        FUNC9(buf, L"WSAStartup() failed : %lu\n", RetVal);
        FUNC3(buf, 0, 100, LOG_ALL);
        return FALSE;
    }

    FUNC5(pServInfo, 0, 1);

    FUNC3(L"\nCreating server Threads", 0, 0, LOG_FILE);

    /* Create worker threads. */
    for (i = 0; i < NUM_SERVICES; i++)
    {
        FUNC9(buf, L"Creating thread for %s server", Services[i].lpName);
        FUNC3(buf, 0, 0, LOG_FILE);

        hThread[i] = FUNC1(NULL,
                                  0,
                                  StartServer,
                                  &Services[i],
                                  0,
                                  &dwThreadId[i]);

        if (hThread[i] == NULL)
        {
            FUNC9(buf, L"\nError creating %s server thread\n", Services[i].lpName);
            FUNC3(buf, FUNC2(), 0, LOG_ALL);
            return FALSE;
        }

        FUNC5(pServInfo, 0, 1);
    }

    FUNC3(L"Setting service status to running", 0, 0, LOG_FILE);
    FUNC5(pServInfo, SERVICE_RUNNING, 0);

    /* Wait until all threads have terminated. */
    FUNC8(NUM_SERVICES, hThread, TRUE, INFINITE);

    for (i = 0; i < NUM_SERVICES; i++)
    {
        if (hThread[i] != NULL)
            FUNC0(hThread[i]);
    }

    FUNC3(L"Detaching Winsock2", 0, 0, LOG_FILE);
    FUNC6();

    return TRUE;
}