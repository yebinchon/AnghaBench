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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOL FUNC11(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = NULL;
    BOOL bResult = TRUE;
    DWORD BufferSize = 0;
    LPTSTR pBuffer = NULL;

    hManager = FUNC6(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC10(FUNC9("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC3(hManager,
                               ServiceName,
                               NULL,
                               &BufferSize))
    {
        if (BufferSize == 0)
        {
            FUNC10(FUNC9("[SC] GetServiceDisplayName FAILED %lu:\n\n"), FUNC1());
            bResult = FALSE;
            goto done;
        }
    }

    pBuffer = FUNC4(FUNC2(), 0, (BufferSize + 1) * sizeof(TCHAR));
    if (pBuffer == NULL)
    {
        FUNC8(ERROR_OUTOFMEMORY);
        FUNC10(FUNC9("[SC] HeapAlloc FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    BufferSize++;
    if (!FUNC3(hManager,
                               ServiceName,
                               pBuffer,
                               &BufferSize))
    {
        FUNC10(FUNC9("[SC] GetServiceDisplayName FAILED %lu:\n\n"), FUNC1());
        bResult = FALSE;
        goto done;
    }

    FUNC10(FUNC9("[SC] GetServiceDisplayName SUCCESS  Name = %s\n"), pBuffer);

done:
    if (bResult == FALSE)
        FUNC7();

    if (pBuffer != NULL)
        FUNC5(FUNC2(), 0, pBuffer);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}