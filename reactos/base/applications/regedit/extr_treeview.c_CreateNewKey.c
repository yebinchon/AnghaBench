
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPCWSTR ;
typedef int LONG ;
typedef int HWND ;
typedef int HTREEITEM ;
typedef int * HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int COUNT_OF (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int* GetItemPath (int ,int ,int **) ;
 int IDS_NEW_KEY ;
 int InfoMessageBox (int ,int,int *,char*,int ) ;
 int InsertNode (int ,int ,int *) ;
 int KEY_WRITE ;
 scalar_t__ LoadStringW (int ,int ,int *,int ) ;
 int MB_ICONERROR ;
 int MB_OK ;
 scalar_t__ REG_OPENED_EXISTING_KEY ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCloseKey (int *) ;
 int RegCreateKeyExW (int *,int *,int ,int *,int ,int ,int *,int **,scalar_t__*) ;
 scalar_t__ RegOpenKeyW (int *,int*,int **) ;
 int TRUE ;
 int TreeView_EditLabel (int ,int ) ;
 int hFrameWnd ;
 int hInst ;
 int wsprintf (int *,int *,int ) ;

BOOL CreateNewKey(HWND hwndTV, HTREEITEM hItem)
{
    WCHAR szNewKeyFormat[128];
    WCHAR szNewKey[128];
    LPCWSTR pszKeyPath;
    int iIndex = 1;
    LONG nResult;
    HKEY hRootKey = ((void*)0), hKey = ((void*)0), hNewKey = ((void*)0);
    BOOL bSuccess = FALSE;
    DWORD dwDisposition;
    HTREEITEM hNewItem;

    pszKeyPath = GetItemPath(hwndTV, hItem, &hRootKey);
    if (pszKeyPath[0] == L'\0')
        hKey = hRootKey;
    else if (RegOpenKeyW(hRootKey, pszKeyPath, &hKey) != ERROR_SUCCESS)
        goto done;

    if (LoadStringW(hInst, IDS_NEW_KEY, szNewKeyFormat, COUNT_OF(szNewKeyFormat)) <= 0)
        goto done;


    do
    {
        wsprintf(szNewKey, szNewKeyFormat, iIndex++);
        nResult = RegCreateKeyExW(hKey, szNewKey, 0, ((void*)0), REG_OPTION_NON_VOLATILE, KEY_WRITE, ((void*)0), &hNewKey, &dwDisposition);
        if (hNewKey && dwDisposition == REG_OPENED_EXISTING_KEY)
        {
            RegCloseKey(hNewKey);
            hNewKey = ((void*)0);
        }
        else if (!hNewKey)
        {
            InfoMessageBox(hFrameWnd, MB_OK | MB_ICONERROR, ((void*)0), L"Cannot create new key!\n\nError Code: %d", nResult);
            goto done;
        }
    }
    while(!hNewKey);


    hNewItem = InsertNode(hwndTV, hItem, szNewKey);
    if (!hNewItem)
        goto done;


    (void)TreeView_EditLabel(hwndTV, hNewItem);

    bSuccess = TRUE;

done:
    if (hKey != hRootKey && hKey)
        RegCloseKey(hKey);
    if (hNewKey)
        RegCloseKey(hNewKey);
    return bSuccess;
}
