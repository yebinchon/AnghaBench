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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,...) ; 

BOOL FUNC8(LPCTSTR ServiceName)
{
    SC_HANDLE hSCManager = NULL;
    SC_HANDLE hSc = NULL;
    BOOL bRet = TRUE;

#ifdef SCDBG
    _tprintf(_T("service to delete - %s\n\n"), ServiceName);
#endif

    hSCManager = FUNC3(NULL,
                               NULL,
                               SC_MANAGER_CONNECT);
    if (hSCManager == NULL)
    {
        FUNC7(FUNC6("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bRet = FALSE;
        goto done;
    }

    hSc = FUNC4(hSCManager, ServiceName, DELETE);
    if (hSc == NULL)
    {
        FUNC7(FUNC6("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bRet = FALSE;
        goto done;
    }

    if (!FUNC1(hSc))
    {
        FUNC7(FUNC6("[SC] DeleteService FAILED %lu:\n\n"), FUNC2());
        bRet = FALSE;
        goto done;
    }

    FUNC7(FUNC6("[SC] DeleteService SUCCESS\n\n"));

done:
    if (bRet == FALSE)
        FUNC5();

    if (hSc)
        FUNC0(hSc);

    if (hSCManager)
        FUNC0(hSCManager);

    return bRet;
}