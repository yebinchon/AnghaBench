
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef scalar_t__ HTREEITEM ;
typedef int HCURSOR ;
typedef int BOOL ;


 int FALSE ;
 int IDC_WAIT ;
 int LoadCursor (int *,int ) ;
 int RefreshTreeItem (int ,scalar_t__) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetCursor (int ) ;
 int TRUE ;
 scalar_t__ TreeView_GetChild (int ,int ) ;
 scalar_t__ TreeView_GetNextSibling (int ,scalar_t__) ;
 int TreeView_GetRoot (int ) ;
 scalar_t__ TreeView_GetSelection (int ) ;
 int TreeView_SelectItem (int ,scalar_t__) ;
 int WM_SETREDRAW ;

BOOL RefreshTreeView(HWND hwndTV)
{
    HTREEITEM hItem;
    HTREEITEM hSelectedItem;
    HCURSOR hcursorOld;

    hSelectedItem = TreeView_GetSelection(hwndTV);
    hcursorOld = SetCursor(LoadCursor(((void*)0), IDC_WAIT));
    SendMessageW(hwndTV, WM_SETREDRAW, FALSE, 0);

    hItem = TreeView_GetChild(hwndTV, TreeView_GetRoot(hwndTV));
    while (hItem)
    {
        RefreshTreeItem(hwndTV, hItem);
        hItem = TreeView_GetNextSibling(hwndTV, hItem);
    }

    SendMessageW(hwndTV, WM_SETREDRAW, TRUE, 0);
    SetCursor(hcursorOld);


    (void)TreeView_SelectItem(hwndTV, hSelectedItem);
    return TRUE;
}
