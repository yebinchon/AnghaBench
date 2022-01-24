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
struct TYPE_3__ {int /*<<< orphan*/  hSelf; int /*<<< orphan*/ * szPagingFiles; } ;
typedef  TYPE_1__* PVIRTMEM ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  lpKey ; 

__attribute__((used)) static BOOL
FUNC8(PVIRTMEM pVirtMem)
{
    HKEY hkey = NULL;
    DWORD dwType;
    DWORD dwDataSize;
    BOOL bRet = FALSE;

    if (FUNC3(HKEY_LOCAL_MACHINE,
                       lpKey,
                       0,
                       NULL,
                       REG_OPTION_NON_VOLATILE,
                       KEY_QUERY_VALUE,
                       NULL,
                       &hkey,
                       NULL) == ERROR_SUCCESS)
    {
        if (FUNC4(hkey,
                            FUNC7("PagingFiles"),
                            NULL,
                            &dwType,
                            NULL,
                            &dwDataSize) == ERROR_SUCCESS)
        {
            pVirtMem->szPagingFiles = (LPTSTR)FUNC1(FUNC0(),
                                                        0,
                                                        dwDataSize);
            if (pVirtMem->szPagingFiles != NULL)
            {
                FUNC6(pVirtMem->szPagingFiles,
                           dwDataSize);
                if (FUNC4(hkey,
                                    FUNC7("PagingFiles"),
                                    NULL,
                                    &dwType,
                                    (PBYTE)pVirtMem->szPagingFiles,
                                    &dwDataSize) == ERROR_SUCCESS)
                {
                    bRet = TRUE;
                }
            }
        }
    }

    if (!bRet)
        FUNC5(pVirtMem->hSelf);

    if (hkey != NULL)
        FUNC2(hkey);

    return bRet;
}