
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ LPWSTR ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 scalar_t__ TreeView_GetChild (int ,scalar_t__) ;
 scalar_t__ TreeView_GetItemParam (int ,scalar_t__) ;

__attribute__((used)) static VOID
DestroyItem(HWND hTreeView,
            HTREEITEM hItem)
{
    HTREEITEM hChildItem;
    LPWSTR lpServiceName;


    hChildItem = TreeView_GetChild(hTreeView, hItem);
    if (hChildItem)
    {

        DestroyItem(hTreeView, hChildItem);
    }


    lpServiceName = (LPWSTR)TreeView_GetItemParam(hTreeView, hItem);
    if (lpServiceName)
    {
        HeapFree(GetProcessHeap(),
                 0,
                 lpServiceName);
    }
}
