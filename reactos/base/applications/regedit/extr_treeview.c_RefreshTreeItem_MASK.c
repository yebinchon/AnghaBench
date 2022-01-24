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
struct TYPE_4__ {int cChildren; int cchTextMax; int* pszText; void* hItem; int /*<<< orphan*/  mask; } ;
typedef  TYPE_1__ TVITEMW ;
typedef  int* LPWSTR ;
typedef  int* LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  void* HTREEITEM ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int* FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TVIF_CHILDREN ; 
 int /*<<< orphan*/  TVIF_TEXT ; 
 int /*<<< orphan*/  TVIS_EXPANDED ; 
 int /*<<< orphan*/  TVM_SORTCHILDREN ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC12 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int*,int*) ; 
 scalar_t__ FUNC18 (int*) ; 

BOOL FUNC19(HWND hwndTV, HTREEITEM hItem)
{
    HKEY hRoot, hKey, hSubKey;
    HTREEITEM childItem;
    LPCWSTR KeyPath;
    DWORD dwCount, dwIndex, dwMaxSubKeyLen;
    LPWSTR Name = NULL;
    TVITEMW tvItem;
    LPWSTR pszNodes = NULL;
    BOOL bSuccess = FALSE;
    LPWSTR s;
    BOOL bAddedAny;

    KeyPath = FUNC1(hwndTV, hItem, &hRoot);

    if (*KeyPath)
    {
        if (FUNC8(hRoot, KeyPath, 0, KEY_READ, &hKey) != ERROR_SUCCESS)
        {
            goto done;
        }
    }
    else
    {
        hKey = hRoot;
    }

    if (FUNC9(hKey, 0, 0, 0, &dwCount, &dwMaxSubKeyLen, 0, 0, 0, 0, 0, 0) != ERROR_SUCCESS)
    {
        goto done;
    }

    /* Set the number of children again */
    tvItem.mask = TVIF_CHILDREN;
    tvItem.hItem = hItem;
    tvItem.cChildren = dwCount;
    if (!FUNC16(hwndTV, &tvItem))
    {
        goto done;
    }

    /* We don't have to bother with the rest if it's not expanded. */
    if (FUNC14(hwndTV, hItem, TVIS_EXPANDED) == 0)
    {
        FUNC6(hKey);
        bSuccess = TRUE;
        goto done;
    }

    dwMaxSubKeyLen++; /* account for the \0 terminator */
    if (!(Name = FUNC3(FUNC2(), 0, dwMaxSubKeyLen * sizeof(WCHAR))))
    {
        goto done;
    }
    tvItem.cchTextMax = dwMaxSubKeyLen;
    /*if (!(tvItem.pszText = HeapAlloc(GetProcessHeap(), 0, dwMaxSubKeyLen * sizeof(WCHAR)))) {
        goto done;
    }*/

    /* Get all of the tree node siblings in one contiguous block of memory */
    {
        DWORD dwPhysicalSize = 0;
        DWORD dwActualSize = 0;
        DWORD dwNewPhysicalSize;
        LPWSTR pszNewNodes;
        DWORD dwStep = 10000;

        for (childItem = FUNC12(hwndTV, hItem); childItem;
                childItem = FUNC15(hwndTV, childItem))
        {

            if (dwActualSize + dwMaxSubKeyLen + 1 > dwPhysicalSize)
            {
                dwNewPhysicalSize = dwActualSize + dwMaxSubKeyLen + 1 + dwStep;

                if (pszNodes)
                    pszNewNodes = (LPWSTR) FUNC5(FUNC2(), 0, pszNodes, dwNewPhysicalSize * sizeof(WCHAR));
                else
                    pszNewNodes = (LPWSTR) FUNC3(FUNC2(), 0, dwNewPhysicalSize * sizeof(WCHAR));
                if (!pszNewNodes)
                    goto done;

                dwPhysicalSize = dwNewPhysicalSize;
                pszNodes = pszNewNodes;
            }

            tvItem.mask = TVIF_TEXT;
            tvItem.hItem = childItem;
            tvItem.pszText = &pszNodes[dwActualSize];
            tvItem.cchTextMax = dwPhysicalSize - dwActualSize;
            if (!FUNC13(hwndTV, &tvItem))
                goto done;

            dwActualSize += (DWORD) FUNC18(&pszNodes[dwActualSize]) + 1;
        }

        if (pszNodes)
            pszNodes[dwActualSize] = L'\0';
    }

    /* Now go through all the children in the tree, and check if any have to be removed. */
    childItem = FUNC12(hwndTV, hItem);
    while (childItem)
    {
        HTREEITEM nextItem = FUNC15(hwndTV, childItem);
        if (FUNC19(hwndTV, childItem) == FALSE)
        {
            (void)FUNC11(hwndTV, childItem);
        }
        childItem = nextItem;
    }

    /* Now go through all the children in the registry, and check if any have to be added. */
    bAddedAny = FALSE;
    for (dwIndex = 0; dwIndex < dwCount; dwIndex++)
    {
        DWORD cName = dwMaxSubKeyLen, dwSubCount;
        BOOL found;

        found = FALSE;
        if (FUNC7(hKey, dwIndex, Name, &cName, 0, 0, 0, NULL) != ERROR_SUCCESS)
        {
            continue;
        }

        /* Check if the node is already in there. */
        if (pszNodes)
        {
            for (s = pszNodes; *s; s += FUNC18(s) + 1)
            {
                if (!FUNC17(s, Name))
                {
                    found = TRUE;
                    break;
                }
            }
        }

        if (found == FALSE)
        {
            /* Find the number of children of the node. */
            dwSubCount = 0;
            if (FUNC8(hKey, Name, 0, KEY_QUERY_VALUE, &hSubKey) == ERROR_SUCCESS)
            {
                if (FUNC9(hSubKey, 0, 0, 0, &dwSubCount, 0, 0, 0, 0, 0, 0, 0) != ERROR_SUCCESS)
                {
                    dwSubCount = 0;
                }
                FUNC6(hSubKey);
            }

            FUNC0(hwndTV, hItem, Name, NULL, dwSubCount);
            bAddedAny = TRUE;
        }
    }
    FUNC6(hKey);

    if (bAddedAny)
        FUNC10(hwndTV, TVM_SORTCHILDREN, 0, (LPARAM) hItem);

    bSuccess = TRUE;

done:
    if (pszNodes)
        FUNC4(FUNC2(), 0, pszNodes);
    if (Name)
        FUNC4(FUNC2(), 0, Name);
    return bSuccess;
}