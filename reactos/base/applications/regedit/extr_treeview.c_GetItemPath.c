
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* LPCWSTR ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;
typedef int * HKEY ;


 int GetProcessHeap () ;
 scalar_t__* HeapAlloc (int ,int ,int) ;
 scalar_t__ HeapSize (int ,int ,scalar_t__*) ;
 scalar_t__ TreeView_GetSelection (int ) ;
 int get_item_path (int ,scalar_t__,int **,scalar_t__**,int*,int*) ;
 scalar_t__* pathBuffer ;

LPCWSTR GetItemPath(HWND hwndTV, HTREEITEM hItem, HKEY* phRootKey)
{
    int pathLen = 0, maxLen;

    *phRootKey = ((void*)0);
    if (!pathBuffer) pathBuffer = HeapAlloc(GetProcessHeap(), 0, 1024);
    if (!pathBuffer) return ((void*)0);
    *pathBuffer = 0;
    maxLen = (int) HeapSize(GetProcessHeap(), 0, pathBuffer);
    if (maxLen == -1) return ((void*)0);
    if (!hItem) hItem = TreeView_GetSelection(hwndTV);
    if (!hItem) return ((void*)0);
    if (!get_item_path(hwndTV, hItem, phRootKey, &pathBuffer, &pathLen, &maxLen))
    {
        return ((void*)0);
    }
    return pathBuffer;
}
