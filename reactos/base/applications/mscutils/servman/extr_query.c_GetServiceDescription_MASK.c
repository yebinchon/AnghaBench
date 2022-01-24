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
struct TYPE_4__ {scalar_t__ lpDescription; } ;
typedef  TYPE_1__ SERVICE_DESCRIPTIONW ;
typedef  TYPE_1__ SERVICE_DESCRIPTION ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  SC_MANAGER_ENUMERATE_SERVICE ; 
 int /*<<< orphan*/  SERVICE_CONFIG_DESCRIPTION ; 
 int /*<<< orphan*/  SERVICE_QUERY_CONFIG ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 

LPWSTR
FUNC10(LPWSTR lpServiceName)
{
    SC_HANDLE hSCManager = NULL;
    SC_HANDLE hSc = NULL;
    SERVICE_DESCRIPTIONW *pServiceDescription = NULL;
    LPWSTR lpDescription = NULL;
    DWORD BytesNeeded = 0;
    DWORD dwSize;

    hSCManager = FUNC5(NULL,
                                NULL,
                                SC_MANAGER_ENUMERATE_SERVICE);
    if (hSCManager == NULL)
    {
        FUNC1();
        return NULL;
    }

    hSc = FUNC6(hSCManager,
                       lpServiceName,
                       SERVICE_QUERY_CONFIG);
    if (hSc)
    {
        if (!FUNC7(hSc,
                                  SERVICE_CONFIG_DESCRIPTION,
                                  NULL,
                                  0,
                                  &BytesNeeded))
        {
            if (FUNC2() == ERROR_INSUFFICIENT_BUFFER)
            {
                pServiceDescription = (SERVICE_DESCRIPTION *) FUNC3(ProcessHeap,
                                                                        0,
                                                                        BytesNeeded);
                if (pServiceDescription == NULL)
                    goto cleanup;

                if (FUNC7(hSc,
                                         SERVICE_CONFIG_DESCRIPTION,
                                         (LPBYTE)pServiceDescription,
                                         BytesNeeded,
                                         &BytesNeeded))
                {
                    if (pServiceDescription->lpDescription)
                    {
                        dwSize = FUNC9(pServiceDescription->lpDescription) + 1;
                        lpDescription = FUNC3(ProcessHeap,
                                                  0,
                                                  dwSize * sizeof(WCHAR));
                        if (lpDescription)
                        {
                            FUNC8(lpDescription,
                                           dwSize,
                                           pServiceDescription->lpDescription);
                        }
                    }
                }
            }
        }
    }

cleanup:
    if (pServiceDescription)
        FUNC4(ProcessHeap,
                 0,
                 pServiceDescription);
    if (hSCManager != NULL)
        FUNC0(hSCManager);
    if (hSc != NULL)
        FUNC0(hSc);

    return lpDescription;
}