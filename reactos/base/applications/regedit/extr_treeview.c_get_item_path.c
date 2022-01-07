
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pszText; int cchTextMax; void* hItem; int mask; scalar_t__ lParam; } ;
typedef TYPE_1__ TVITEMW ;
typedef int* LPWSTR ;
typedef int HWND ;
typedef void* HTREEITEM ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int GetProcessHeap () ;
 int* HeapReAlloc (int ,int ,int*,int) ;
 scalar_t__ TRUE ;
 int TVIF_PARAM ;
 int TVIF_TEXT ;
 int TreeView_GetItem (int ,TYPE_1__*) ;
 void* TreeView_GetParent (int ,void*) ;
 size_t wcslen (int*) ;

__attribute__((used)) static BOOL get_item_path(HWND hwndTV, HTREEITEM hItem, HKEY* phKey, LPWSTR* pKeyPath, int* pPathLen, int* pMaxLen)
{
    TVITEMW item;
    size_t maxLen, len;
    LPWSTR newStr;

    item.mask = TVIF_PARAM;
    item.hItem = hItem;
    if (!TreeView_GetItem(hwndTV, &item)) return FALSE;

    if (item.lParam)
    {

        *phKey = (HKEY)item.lParam;
        return TRUE;
    }

    if(!get_item_path(hwndTV, TreeView_GetParent(hwndTV, hItem), phKey, pKeyPath, pPathLen, pMaxLen)) return FALSE;
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
        if (!TreeView_GetItem(hwndTV, &item)) return FALSE;
        len = wcslen(item.pszText);
        if (len < maxLen - 1)
        {
            *pPathLen += (int) len;
            break;
        }
        newStr = HeapReAlloc(GetProcessHeap(), 0, *pKeyPath, *pMaxLen * 2);
        if (!newStr) return FALSE;
        *pKeyPath = newStr;
        *pMaxLen *= 2;
    }
    while(TRUE);

    return TRUE;
}
