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
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DACL_SECURITY_INFORMATION ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  READ_CONTROL ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SDDL_REVISION_1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

BOOL FUNC14(LPCTSTR ServiceName)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    DWORD cbBytesNeeded = 0;
    PSECURITY_DESCRIPTOR pSecurityDescriptor = NULL;
    LPTSTR pStringBuffer = NULL;

#ifdef SCDBG
    _tprintf(_T("service to show sd - %s\n\n"), ServiceName);
#endif

    hManager = FUNC7(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC13(FUNC12("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC8(hManager, ServiceName, READ_CONTROL);
    if (hService == NULL)
    {
        FUNC13(FUNC12("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC9(hService,
                                    DACL_SECURITY_INFORMATION,
                                    (PSECURITY_DESCRIPTOR)&pSecurityDescriptor,
                                    sizeof(PSECURITY_DESCRIPTOR),
                                    &cbBytesNeeded))
    {
        if (cbBytesNeeded == 0)
        {
            FUNC13(FUNC12("[SC] QueryServiceObjectSecurity FAILED %lu:\n\n"), FUNC2());
            bResult = FALSE;
            goto done;
        }
    }

    pSecurityDescriptor = FUNC4(FUNC3(), 0, cbBytesNeeded);
    if (pSecurityDescriptor == NULL)
    {
        FUNC11(ERROR_OUTOFMEMORY);
        FUNC13(FUNC12("[SC] HeapAlloc FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC9(hService,
                                    DACL_SECURITY_INFORMATION,
                                    pSecurityDescriptor,
                                    cbBytesNeeded,
                                    &cbBytesNeeded))
    {
        FUNC13(FUNC12("[SC] QueryServiceObjectSecurity FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC1(pSecurityDescriptor,
                                                             SDDL_REVISION_1,
                                                             DACL_SECURITY_INFORMATION,
                                                             &pStringBuffer,
                                                             NULL))
    {
        FUNC13(FUNC12("[SC] ConvertSecurityDescriptorToStringSecurityDescriptor FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    FUNC13(FUNC12("\n%s\n"), pStringBuffer);

done:
    if (bResult == FALSE)
        FUNC10();

    if (pStringBuffer != NULL)
        FUNC6(pStringBuffer);

    if (pSecurityDescriptor != NULL)
        FUNC5(FUNC3(), 0, pSecurityDescriptor);

    if (hService)
        FUNC0(hService);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}