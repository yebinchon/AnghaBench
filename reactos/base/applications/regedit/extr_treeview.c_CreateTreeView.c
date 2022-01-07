
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bottom; int right; } ;
typedef TYPE_1__ RECT ;
typedef int LPWSTR ;
typedef int * HWND ;
typedef int HMENU ;


 int * CreateWindowExW (int ,int ,int *,int,int ,int ,int ,int ,int *,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 int GetClientRect (int *,TYPE_1__*) ;
 int InitTreeViewImageLists (int *) ;
 int InitTreeViewItems (int *,int ) ;
 int TVS_EDITLABELS ;
 int TVS_HASBUTTONS ;
 int TVS_HASLINES ;
 int TVS_LINESATROOT ;
 int TVS_SHOWSELALWAYS ;
 int WC_TREEVIEW ;
 int WS_CHILD ;
 int WS_EX_CLIENTEDGE ;
 int WS_TABSTOP ;
 int WS_VISIBLE ;
 int hInst ;

HWND CreateTreeView(HWND hwndParent, LPWSTR pHostName, HMENU id)
{
    RECT rcClient;
    HWND hwndTV;


    GetClientRect(hwndParent, &rcClient);
    hwndTV = CreateWindowExW(WS_EX_CLIENTEDGE, WC_TREEVIEW, ((void*)0),
                            WS_VISIBLE | WS_CHILD | WS_TABSTOP | TVS_HASLINES | TVS_HASBUTTONS | TVS_LINESATROOT | TVS_EDITLABELS | TVS_SHOWSELALWAYS,
                            0, 0, rcClient.right, rcClient.bottom,
                            hwndParent, id, hInst, ((void*)0));

    if (!InitTreeViewImageLists(hwndTV) || !InitTreeViewItems(hwndTV, pHostName))
    {
        DestroyWindow(hwndTV);
        return ((void*)0);
    }
    return hwndTV;
}
