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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  PRDPSETTINGS ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_PERSONAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

BOOL
FUNC7(LPWSTR lpFile,
                      PRDPSETTINGS pRdpSettings)
{
    WCHAR pszPath[MAX_PATH];
    HANDLE hFile;
    BOOL bRet = FALSE;

    /* use default file */
    if (lpFile == NULL)
    {
        HRESULT hr;
        LPITEMIDLIST lpidl= NULL;

        hr = FUNC3(NULL,
                                 CSIDL_PERSONAL,
                                 NULL,
                                 0,
                                 &lpidl);
        if (hr == S_OK)
        {
            if (FUNC4(lpidl, pszPath))
            {
                FUNC6(pszPath, L"\\Default.rdp");
                lpFile = pszPath;
                FUNC1(lpidl);
            }
        }
    }

    if (lpFile)
    {
        hFile = FUNC2(lpFile, TRUE);
        if (hFile)
        {
            if (FUNC5(hFile, pRdpSettings))
            {
                bRet = TRUE;
            }

            FUNC0(hFile);
        }
    }

    return bRet;
}