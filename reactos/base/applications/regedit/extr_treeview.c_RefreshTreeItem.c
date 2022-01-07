
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int cChildren; int cchTextMax; int* pszText; void* hItem; int mask; } ;
typedef TYPE_1__ TVITEMW ;
typedef int* LPWSTR ;
typedef int* LPCWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef void* HTREEITEM ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int AddEntryToTree (int ,void*,int*,int *,int) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int* GetItemPath (int ,void*,int *) ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 scalar_t__ HeapReAlloc (int ,int ,int*,int) ;
 int KEY_QUERY_VALUE ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyExW (int ,int,int*,int*,int ,int ,int ,int *) ;
 scalar_t__ RegOpenKeyExW (int ,int*,int ,int ,int *) ;
 scalar_t__ RegQueryInfoKeyW (int ,int ,int ,int ,int*,int*,int ,int ,int ,int ,int ,int ) ;
 int SendMessageW (int ,int ,int ,int ) ;
 scalar_t__ TRUE ;
 int TVIF_CHILDREN ;
 int TVIF_TEXT ;
 int TVIS_EXPANDED ;
 int TVM_SORTCHILDREN ;
 int TreeView_DeleteItem (int ,void*) ;
 void* TreeView_GetChild (int ,void*) ;
 int TreeView_GetItem (int ,TYPE_1__*) ;
 scalar_t__ TreeView_GetItemState (int ,void*,int ) ;
 void* TreeView_GetNextSibling (int ,void*) ;
 int TreeView_SetItem (int ,TYPE_1__*) ;
 int wcscmp (int*,int*) ;
 scalar_t__ wcslen (int*) ;

BOOL RefreshTreeItem(HWND hwndTV, HTREEITEM hItem)
{
    HKEY hRoot, hKey, hSubKey;
    HTREEITEM childItem;
    LPCWSTR KeyPath;
    DWORD dwCount, dwIndex, dwMaxSubKeyLen;
    LPWSTR Name = ((void*)0);
    TVITEMW tvItem;
    LPWSTR pszNodes = ((void*)0);
    BOOL bSuccess = FALSE;
    LPWSTR s;
    BOOL bAddedAny;

    KeyPath = GetItemPath(hwndTV, hItem, &hRoot);

    if (*KeyPath)
    {
        if (RegOpenKeyExW(hRoot, KeyPath, 0, KEY_READ, &hKey) != ERROR_SUCCESS)
        {
            goto done;
        }
    }
    else
    {
        hKey = hRoot;
    }

    if (RegQueryInfoKeyW(hKey, 0, 0, 0, &dwCount, &dwMaxSubKeyLen, 0, 0, 0, 0, 0, 0) != ERROR_SUCCESS)
    {
        goto done;
    }


    tvItem.mask = TVIF_CHILDREN;
    tvItem.hItem = hItem;
    tvItem.cChildren = dwCount;
    if (!TreeView_SetItem(hwndTV, &tvItem))
    {
        goto done;
    }


    if (TreeView_GetItemState(hwndTV, hItem, TVIS_EXPANDED) == 0)
    {
        RegCloseKey(hKey);
        bSuccess = TRUE;
        goto done;
    }

    dwMaxSubKeyLen++;
    if (!(Name = HeapAlloc(GetProcessHeap(), 0, dwMaxSubKeyLen * sizeof(WCHAR))))
    {
        goto done;
    }
    tvItem.cchTextMax = dwMaxSubKeyLen;





    {
        DWORD dwPhysicalSize = 0;
        DWORD dwActualSize = 0;
        DWORD dwNewPhysicalSize;
        LPWSTR pszNewNodes;
        DWORD dwStep = 10000;

        for (childItem = TreeView_GetChild(hwndTV, hItem); childItem;
                childItem = TreeView_GetNextSibling(hwndTV, childItem))
        {

            if (dwActualSize + dwMaxSubKeyLen + 1 > dwPhysicalSize)
            {
                dwNewPhysicalSize = dwActualSize + dwMaxSubKeyLen + 1 + dwStep;

                if (pszNodes)
                    pszNewNodes = (LPWSTR) HeapReAlloc(GetProcessHeap(), 0, pszNodes, dwNewPhysicalSize * sizeof(WCHAR));
                else
                    pszNewNodes = (LPWSTR) HeapAlloc(GetProcessHeap(), 0, dwNewPhysicalSize * sizeof(WCHAR));
                if (!pszNewNodes)
                    goto done;

                dwPhysicalSize = dwNewPhysicalSize;
                pszNodes = pszNewNodes;
            }

            tvItem.mask = TVIF_TEXT;
            tvItem.hItem = childItem;
            tvItem.pszText = &pszNodes[dwActualSize];
            tvItem.cchTextMax = dwPhysicalSize - dwActualSize;
            if (!TreeView_GetItem(hwndTV, &tvItem))
                goto done;

            dwActualSize += (DWORD) wcslen(&pszNodes[dwActualSize]) + 1;
        }

        if (pszNodes)
            pszNodes[dwActualSize] = L'\0';
    }


    childItem = TreeView_GetChild(hwndTV, hItem);
    while (childItem)
    {
        HTREEITEM nextItem = TreeView_GetNextSibling(hwndTV, childItem);
        if (RefreshTreeItem(hwndTV, childItem) == FALSE)
        {
            (void)TreeView_DeleteItem(hwndTV, childItem);
        }
        childItem = nextItem;
    }


    bAddedAny = FALSE;
    for (dwIndex = 0; dwIndex < dwCount; dwIndex++)
    {
        DWORD cName = dwMaxSubKeyLen, dwSubCount;
        BOOL found;

        found = FALSE;
        if (RegEnumKeyExW(hKey, dwIndex, Name, &cName, 0, 0, 0, ((void*)0)) != ERROR_SUCCESS)
        {
            continue;
        }


        if (pszNodes)
        {
            for (s = pszNodes; *s; s += wcslen(s) + 1)
            {
                if (!wcscmp(s, Name))
                {
                    found = TRUE;
                    break;
                }
            }
        }

        if (found == FALSE)
        {

            dwSubCount = 0;
            if (RegOpenKeyExW(hKey, Name, 0, KEY_QUERY_VALUE, &hSubKey) == ERROR_SUCCESS)
            {
                if (RegQueryInfoKeyW(hSubKey, 0, 0, 0, &dwSubCount, 0, 0, 0, 0, 0, 0, 0) != ERROR_SUCCESS)
                {
                    dwSubCount = 0;
                }
                RegCloseKey(hSubKey);
            }

            AddEntryToTree(hwndTV, hItem, Name, ((void*)0), dwSubCount);
            bAddedAny = TRUE;
        }
    }
    RegCloseKey(hKey);

    if (bAddedAny)
        SendMessageW(hwndTV, TVM_SORTCHILDREN, 0, (LPARAM) hItem);

    bSuccess = TRUE;

done:
    if (pszNodes)
        HeapFree(GetProcessHeap(), 0, pszNodes);
    if (Name)
        HeapFree(GetProcessHeap(), 0, Name);
    return bSuccess;
}
