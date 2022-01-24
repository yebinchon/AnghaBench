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
typedef  int* LPCWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HTREEITEM ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IDS_NEW_KEY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_WRITE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MB_ICONERROR ; 
 int MB_OK ; 
 scalar_t__ REG_OPENED_EXISTING_KEY ; 
 int /*<<< orphan*/  REG_OPTION_NON_VOLATILE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hFrameWnd ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

BOOL FUNC10(HWND hwndTV, HTREEITEM hItem)
{
    WCHAR szNewKeyFormat[128];
    WCHAR szNewKey[128];
    LPCWSTR pszKeyPath;
    int iIndex = 1;
    LONG nResult;
    HKEY hRootKey = NULL, hKey = NULL, hNewKey = NULL;
    BOOL bSuccess = FALSE;
    DWORD dwDisposition;
    HTREEITEM hNewItem;

    pszKeyPath = FUNC1(hwndTV, hItem, &hRootKey);
    if (pszKeyPath[0] == L'\0')
        hKey = hRootKey;
    else if (FUNC7(hRootKey, pszKeyPath, &hKey) != ERROR_SUCCESS)
        goto done;

    if (FUNC4(hInst, IDS_NEW_KEY, szNewKeyFormat, FUNC0(szNewKeyFormat)) <= 0)
        goto done;

    /* Need to create a new key with a unique name */
    do
    {
        FUNC9(szNewKey, szNewKeyFormat, iIndex++);
        nResult = FUNC6(hKey, szNewKey, 0, NULL, REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &hNewKey, &dwDisposition);
        if (hNewKey && dwDisposition == REG_OPENED_EXISTING_KEY)
        {
            FUNC5(hNewKey);
            hNewKey = NULL;
        }
        else if (!hNewKey)
        {
            FUNC2(hFrameWnd, MB_OK | MB_ICONERROR, NULL, L"Cannot create new key!\n\nError Code: %d", nResult);
            goto done;
        }
    }
    while(!hNewKey);

    /* Insert the new key */
    hNewItem = FUNC3(hwndTV, hItem, szNewKey);
    if (!hNewItem)
        goto done;

    /* The new key's name is probably not appropriate yet */
    (void)FUNC8(hwndTV, hNewItem);

    bSuccess = TRUE;

done:
    if (hKey != hRootKey && hKey)
        FUNC5(hKey);
    if (hNewKey)
        FUNC5(hNewKey);
    return bSuccess;
}