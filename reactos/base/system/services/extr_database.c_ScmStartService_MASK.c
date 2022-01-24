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
struct TYPE_4__ {int /*<<< orphan*/  lpServiceName; } ;
typedef  int /*<<< orphan*/ * SC_RPC_LOCK ;
typedef  TYPE_1__* PSERVICE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ControlServiceCriticalSection ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  ScmInitialize ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 

DWORD
FUNC6(PSERVICE Service,
                DWORD argc,
                LPWSTR* argv)
{
    DWORD dwError = ERROR_SUCCESS;
    SC_RPC_LOCK Lock = NULL;

    FUNC0("ScmStartService() called\n");
    FUNC0("Start Service %p (%S)\n", Service, Service->lpServiceName);

    /* Acquire the service control critical section, to synchronize starts */
    FUNC1(&ControlServiceCriticalSection);

    /*
     * Acquire the user service start lock while the service is starting, if
     * needed (i.e. if we are not starting it during the initialization phase).
     * If we don't success, bail out.
     */
    if (!ScmInitialize)
    {
        dwError = FUNC3(TRUE, &Lock);
        if (dwError != ERROR_SUCCESS) goto done;
    }

    /* Really start the service */
    dwError = FUNC4(Service, argc, argv);

    /* Release the service start lock, if needed, and the critical section */
    if (Lock) FUNC5(&Lock);

done:
    FUNC2(&ControlServiceCriticalSection);

    FUNC0("ScmStartService() done (Error %lu)\n", dwError);

    return dwError;
}