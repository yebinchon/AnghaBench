
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int state; scalar_t__ hItem; } ;
struct TYPE_5__ {TYPE_1__ itemNew; } ;
typedef TYPE_2__ NMTREEVIEW ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPCWSTR ;
typedef int LPARAM ;
typedef scalar_t__ LONG ;
typedef int HWND ;
typedef int HKEY ;
typedef int HCURSOR ;
typedef int DWORD ;
typedef int BOOL ;


 int AddEntryToTree (int ,scalar_t__,scalar_t__*,int *,int) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__* GetItemPath (int ,scalar_t__,int *) ;
 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int IDC_WAIT ;
 int KEY_QUERY_VALUE ;
 int KEY_READ ;
 int LoadCursor (int *,int ) ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int,scalar_t__*,int*,int ,int ,int ,int ) ;
 scalar_t__ RegOpenKeyExW (int ,scalar_t__*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int ,int ,int ,int*,int*,int ,int ,int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int,int ) ;
 int SetCursor (int ) ;
 int TRUE ;
 int TVIS_EXPANDEDONCE ;
 int TVM_SORTCHILDREN ;
 int WM_SETREDRAW ;

BOOL OnTreeExpanding(HWND hwndTV, NMTREEVIEW* pnmtv)
{
    DWORD dwCount, dwIndex, dwMaxSubKeyLen;
    HKEY hRoot, hNewKey, hKey;
    LPCWSTR keyPath;
    LPWSTR Name;
    LONG errCode;
    HCURSOR hcursorOld;

    static int expanding;
    if (expanding) return FALSE;
    if (pnmtv->itemNew.state & TVIS_EXPANDEDONCE )
    {
        return TRUE;
    }
    expanding = TRUE;
    hcursorOld = SetCursor(LoadCursor(((void*)0), IDC_WAIT));
    SendMessageW(hwndTV, WM_SETREDRAW, FALSE, 0);

    keyPath = GetItemPath(hwndTV, pnmtv->itemNew.hItem, &hRoot);
    if (!keyPath) goto done;

    if (*keyPath)
    {
        errCode = RegOpenKeyExW(hRoot, keyPath, 0, KEY_READ, &hNewKey);
        if (errCode != ERROR_SUCCESS) goto done;
    }
    else
    {
        hNewKey = hRoot;
    }

    errCode = RegQueryInfoKeyW(hNewKey, 0, 0, 0, &dwCount, &dwMaxSubKeyLen, 0, 0, 0, 0, 0, 0);
    if (errCode != ERROR_SUCCESS) goto done;
    dwMaxSubKeyLen++;
    Name = HeapAlloc(GetProcessHeap(), 0, dwMaxSubKeyLen * sizeof(WCHAR));
    if (!Name) goto done;

    for (dwIndex = 0; dwIndex < dwCount; dwIndex++)
    {
        DWORD cName = dwMaxSubKeyLen, dwSubCount;

        errCode = RegEnumKeyExW(hNewKey, dwIndex, Name, &cName, 0, 0, 0, 0);
        if (errCode != ERROR_SUCCESS) continue;
        errCode = RegOpenKeyExW(hNewKey, Name, 0, KEY_QUERY_VALUE, &hKey);
        if (errCode == ERROR_SUCCESS)
        {
            errCode = RegQueryInfoKeyW(hKey, 0, 0, 0, &dwSubCount, 0, 0, 0, 0, 0, 0, 0);
            RegCloseKey(hKey);
        }
        if (errCode != ERROR_SUCCESS) dwSubCount = 0;
        AddEntryToTree(hwndTV, pnmtv->itemNew.hItem, Name, ((void*)0), dwSubCount);
    }

    SendMessageW(hwndTV, TVM_SORTCHILDREN, 0, (LPARAM)pnmtv->itemNew.hItem);

    RegCloseKey(hNewKey);
    HeapFree(GetProcessHeap(), 0, Name);

done:
    SendMessageW(hwndTV, WM_SETREDRAW, TRUE, 0);
    SetCursor(hcursorOld);
    expanding = FALSE;

    return TRUE;
}
