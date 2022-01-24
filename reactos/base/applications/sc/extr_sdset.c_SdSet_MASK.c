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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DACL_SECURITY_INFORMATION ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SDDL_REVISION_1 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WRITE_DAC ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC10(LPCTSTR ServiceName, LPCTSTR StringSecurityDescriptor)
{
    SC_HANDLE hManager = NULL;
    SC_HANDLE hService = NULL;
    BOOL bResult = TRUE;
    ULONG ulSecurityDescriptorSize = 0;
    PSECURITY_DESCRIPTOR pSecurityDescriptor = NULL;

#ifdef SCDBG
    _tprintf(_T("service to set sd - %s\n\n"), ServiceName);
#endif

    hManager = FUNC4(NULL,
                             NULL,
                             SC_MANAGER_CONNECT);
    if (hManager == NULL)
    {
        FUNC9(FUNC8("[SC] OpenSCManager FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    hService = FUNC5(hManager, ServiceName, WRITE_DAC);
    if (hService == NULL)
    {
        FUNC9(FUNC8("[SC] OpenService FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC1(StringSecurityDescriptor,
                                                             SDDL_REVISION_1,
                                                             &pSecurityDescriptor,
                                                             &ulSecurityDescriptorSize))
    {
        FUNC9(FUNC8("[SC] ConvertStringSecurityDescriptorToSecurityDescriptor FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

    if (!FUNC7(hService,
                                  DACL_SECURITY_INFORMATION,
                                  pSecurityDescriptor))
    {
        FUNC9(FUNC8("[SC] SetServiceObjectSecurity FAILED %lu:\n\n"), FUNC2());
        bResult = FALSE;
        goto done;
    }

done:
    if (bResult == FALSE)
        FUNC6();

    if (pSecurityDescriptor != NULL)
        FUNC3(pSecurityDescriptor);

    if (hService)
        FUNC0(hService);

    if (hManager)
        FUNC0(hManager);

    return bResult;
}