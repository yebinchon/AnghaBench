#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lpServiceName; scalar_t__ lpDisplayName; int /*<<< orphan*/  ServiceStatus; } ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  TYPE_1__* LPENUM_SERVICE_STATUS ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_ENUMERATE_DEPENDENTS ; 
 int /*<<< orphan*/  SERVICE_STATE_ALL ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,...) ; 

BOOL FUNC13(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    DWORD BufferSize = 0;
    DWORD EntriesRead = 0;
    LPENUM_SERVICE_STATUS pBuffer = NULL;
    DWORD i;

    hManager = FUNC6(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC12(FUNC11("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC7(hManager, ServiceName, SERVICE_ENUMERATE_DEPENDENTS);
    if (hService == NULL)
    {
        FUNC12(FUNC11("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC1(hService,
                               SERVICE_STATE_ALL,
                               NULL,
                               0,
                               &BufferSize,
                               &EntriesRead))
    {
        if (BufferSize == 0)
        {
            FUNC12(FUNC11("[SC] EnumDependentServices FAILED %lu:\n\n"), FUNC2());
            bResult = FALSE;
            goto done;
        }
    }

    pBuffer = FUNC4(FUNC3(), 0, BufferSize);
    if (pBuffer == NULL)
    {
        FUNC10(ERROR_OUTOFMEMORY);
        FUNC12(FUNC11("[SC] HeapAlloc FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC1(hService,
                               SERVICE_STATE_ALL,
                               pBuffer,
                               BufferSize,
                               &BufferSize,
                               &EntriesRead))
    {
        FUNC12(FUNC11("[SC] EnumDependentServices FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    FUNC12(FUNC11("Enum: entriesRead = %lu\n"), EntriesRead);

    for (i = 0; i < EntriesRead; i++)
    {
        FUNC12(FUNC11("\n"));
        FUNC12(FUNC11("SERVICE_NAME: %s\n"), pBuffer[i].lpServiceName);
        FUNC12(FUNC11("DISPLAY_NAME: %s\n"), pBuffer[i].lpDisplayName);
        FUNC8(&pBuffer[i].ServiceStatus);
    }

done:
    if (bResult == FALSE)
        FUNC9();

    if (pBuffer != NULL)
        FUNC5(FUNC3(), 0, pBuffer);

    if (hService)
        FUNC0(hService);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}