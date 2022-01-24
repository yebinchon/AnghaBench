#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int state; scalar_t__ hItem; } ;
struct TYPE_5__ {TYPE_1__ itemNew; } ;
typedef  TYPE_2__ NMTREEVIEW ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__* LPCWSTR ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  HCURSOR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  IDC_WAIT ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,scalar_t__*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int TVIS_EXPANDEDONCE ; 
 int /*<<< orphan*/  TVM_SORTCHILDREN ; 
 int /*<<< orphan*/  WM_SETREDRAW ; 

BOOL FUNC12(HWND hwndTV, NMTREEVIEW* pnmtv)
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
    hcursorOld = FUNC11(FUNC5(NULL, IDC_WAIT));
    FUNC10(hwndTV, WM_SETREDRAW, FALSE, 0);

    keyPath = FUNC1(hwndTV, pnmtv->itemNew.hItem, &hRoot);
    if (!keyPath) goto done;

    if (*keyPath)
    {
        errCode = FUNC8(hRoot, keyPath, 0, KEY_READ, &hNewKey);
        if (errCode != ERROR_SUCCESS) goto done;
    }
    else
    {
        hNewKey = hRoot;
    }

    errCode = FUNC9(hNewKey, 0, 0, 0, &dwCount, &dwMaxSubKeyLen, 0, 0, 0, 0, 0, 0);
    if (errCode != ERROR_SUCCESS) goto done;
    dwMaxSubKeyLen++; /* account for the \0 terminator */
    Name = FUNC3(FUNC2(), 0, dwMaxSubKeyLen * sizeof(WCHAR));
    if (!Name) goto done;

    for (dwIndex = 0; dwIndex < dwCount; dwIndex++)
    {
        DWORD cName = dwMaxSubKeyLen, dwSubCount;

        errCode = FUNC7(hNewKey, dwIndex, Name, &cName, 0, 0, 0, 0);
        if (errCode != ERROR_SUCCESS) continue;
        errCode = FUNC8(hNewKey, Name, 0, KEY_QUERY_VALUE, &hKey);
        if (errCode == ERROR_SUCCESS)
        {
            errCode = FUNC9(hKey, 0, 0, 0, &dwSubCount, 0, 0, 0, 0, 0, 0, 0);
            FUNC6(hKey);
        }
        if (errCode != ERROR_SUCCESS) dwSubCount = 0;
        FUNC0(hwndTV, pnmtv->itemNew.hItem, Name, NULL, dwSubCount);
    }

    FUNC10(hwndTV, TVM_SORTCHILDREN, 0, (LPARAM)pnmtv->itemNew.hItem);

    FUNC6(hNewKey);
    FUNC4(FUNC2(), 0, Name);

done:
    FUNC10(hwndTV, WM_SETREDRAW, TRUE, 0);
    FUNC11(hcursorOld);
    expanding = FALSE;

    return TRUE;
}