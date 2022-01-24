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
typedef  int /*<<< orphan*/ * LPSERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SC_STATUS_PROCESS_INFO ; 
 int /*<<< orphan*/  SERVICE_QUERY_STATUS ; 

LPSERVICE_STATUS_PROCESS
FUNC9(LPCTSTR ServiceName)
{
    SC_HANDLE hSCManager = NULL;
    LPSERVICE_STATUS_PROCESS pServiceInfo = NULL;
    SC_HANDLE hSc = NULL;
    DWORD BufSiz = 0;
    DWORD BytesNeeded = 0;
    DWORD Ret;

    hSCManager = FUNC5(NULL,
                               NULL,
                               SC_MANAGER_CONNECT);
    if (hSCManager == NULL)
    {
        FUNC8();
        return NULL;
    }

    hSc = FUNC6(hSCManager,
                      ServiceName,
                      SERVICE_QUERY_STATUS);
    if (hSc == NULL)
        goto fail;

    Ret = FUNC7(hSc,
                               SC_STATUS_PROCESS_INFO,
                               NULL,
                               BufSiz,
                               &BytesNeeded);
    if ((Ret != 0) || (FUNC1() != ERROR_INSUFFICIENT_BUFFER))
        goto fail;

    pServiceInfo = (LPSERVICE_STATUS_PROCESS)FUNC3(FUNC2(),
                                                       0,
                                                       BytesNeeded);
    if (pServiceInfo == NULL)
        goto fail;

    if (!FUNC7(hSc,
                              SC_STATUS_PROCESS_INFO,
                              (LPBYTE)pServiceInfo,
                              BytesNeeded,
                              &BytesNeeded))
    {
        goto fail;
    }

    FUNC0(hSc);
    FUNC0(hSCManager);
    return pServiceInfo;

fail:
    FUNC8();
    if (pServiceInfo) FUNC4(FUNC2(), 0, pServiceInfo);
    if (hSc) FUNC0(hSc);
    if (hSCManager) FUNC0(hSCManager);
    return NULL;
}