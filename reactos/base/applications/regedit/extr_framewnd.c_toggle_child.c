
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int HWND ;
typedef int HMENU ;
typedef scalar_t__ BOOL ;


 int CheckMenuItem (int ,int ,int) ;
 int GetSubMenu (int ,int ) ;
 int ID_VIEW_MENU ;
 scalar_t__ IsWindowVisible (int ) ;
 int MF_BYCOMMAND ;
 int MF_CHECKED ;
 int SW_HIDE ;
 int SW_SHOW ;
 int ShowWindow (int ,int ) ;
 int hMenuFrame ;
 int resize_frame_client (int ) ;

__attribute__((used)) static void toggle_child(HWND hWnd, UINT cmd, HWND hchild)
{
    BOOL vis = IsWindowVisible(hchild);
    HMENU hMenuView = GetSubMenu(hMenuFrame, ID_VIEW_MENU);

    CheckMenuItem(hMenuView, cmd, vis?MF_BYCOMMAND:MF_BYCOMMAND|MF_CHECKED);
    ShowWindow(hchild, vis?SW_HIDE:SW_SHOW);
    resize_frame_client(hWnd);
}
