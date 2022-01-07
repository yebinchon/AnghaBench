
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_PTR ;
typedef int HWND ;
typedef int DWORD ;


 int GWL_STYLE ;
 int GetComCtl32Version (int*,int*,int*) ;
 int GetWindowLongPtr (int ,int ) ;
 int IDB_2K3CHECK ;
 int IDB_V7CHECK ;
 int ImageList_LoadBitmap (int ,int ,int,int,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int RGB (int,int,int) ;
 int SetWindowLongPtr (int ,int ,int) ;
 int TVSIL_STATE ;
 int TVS_CHECKBOXES ;
 int TVS_EX_PARTIALCHECKBOXES ;
 int TreeView_GetExtendedStyle (int ) ;
 int TreeView_SetExtendedStyle (int ,int,int ) ;
 int TreeView_SetImageList (int ,int ,int ) ;
 int hInst ;

void TreeView_Set3StateCheck(HWND hTree)
{
    LONG_PTR lStyle;
    DWORD dwExStyle;

    DWORD Major, Minor, Build;
    GetComCtl32Version(&Major, &Minor, &Build);
    if (Major > 6 || (Major == 6 && Minor >= 10))
    {
        dwExStyle = TreeView_GetExtendedStyle(hTree);
        TreeView_SetExtendedStyle(hTree, dwExStyle | TVS_EX_PARTIALCHECKBOXES, 0);

        lStyle = GetWindowLongPtr(hTree, GWL_STYLE);
        SetWindowLongPtr(hTree, GWL_STYLE, lStyle | TVS_CHECKBOXES);
    }
    else
    {
        lStyle = GetWindowLongPtr(hTree, GWL_STYLE);
        SetWindowLongPtr(hTree, GWL_STYLE, lStyle | TVS_CHECKBOXES);







        TreeView_SetImageList(hTree,
                              ImageList_LoadBitmap(hInst, (Build >= 6000 ? MAKEINTRESOURCEW(IDB_V7CHECK) : MAKEINTRESOURCEW(IDB_2K3CHECK)), 16, 4, RGB(255, 255, 255)),
                              TVSIL_STATE);
    }
}
