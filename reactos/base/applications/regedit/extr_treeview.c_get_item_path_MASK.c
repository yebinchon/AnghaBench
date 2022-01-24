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
struct TYPE_3__ {int* pszText; int cchTextMax; void* hItem; int /*<<< orphan*/  mask; scalar_t__ lParam; } ;
typedef  TYPE_1__ TVITEMW ;
typedef  int* LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  void* HTREEITEM ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  TVIF_PARAM ; 
 int /*<<< orphan*/  TVIF_TEXT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,void*) ; 
 size_t FUNC4 (int*) ; 

__attribute__((used)) static BOOL FUNC5(HWND hwndTV, HTREEITEM hItem, HKEY* phKey, LPWSTR* pKeyPath, int* pPathLen, int* pMaxLen)
{
    TVITEMW item;
    size_t maxLen, len;
    LPWSTR newStr;

    item.mask = TVIF_PARAM;
    item.hItem = hItem;
    if (!FUNC2(hwndTV, &item)) return FALSE;

    if (item.lParam)
    {
        /* found root key with valid key value */
        *phKey = (HKEY)item.lParam;
        return TRUE;
    }

    if(!FUNC5(hwndTV, FUNC3(hwndTV, hItem), phKey, pKeyPath, pPathLen, pMaxLen)) return FALSE;
    if (*pPathLen)
    {
        (*pKeyPath)[*pPathLen] = L'\\';
        ++(*pPathLen);
    }

    do
    {
        item.mask = TVIF_TEXT;
        item.hItem = hItem;
        item.pszText = *pKeyPath + *pPathLen;
        maxLen = *pMaxLen - *pPathLen;
        item.cchTextMax = (int) maxLen;
        if (!FUNC2(hwndTV, &item)) return FALSE;
        len = FUNC4(item.pszText);
        if (len < maxLen - 1)
        {
            *pPathLen += (int) len;
            break;
        }
        newStr = FUNC1(FUNC0(), 0, *pKeyPath, *pMaxLen * 2);
        if (!newStr) return FALSE;
        *pKeyPath = newStr;
        *pMaxLen *= 2;
    }
    while(TRUE);

    return TRUE;
}