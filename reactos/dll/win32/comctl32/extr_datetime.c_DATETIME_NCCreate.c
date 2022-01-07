
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int LPARAM ;
typedef int HWND ;
typedef int DWORD ;
typedef int CREATESTRUCTW ;


 int DefWindowProcW (int ,int ,int ,int ) ;
 int GWL_EXSTYLE ;
 int GetWindowLongW (int ,int ) ;
 int SetWindowLongW (int ,int ,int ) ;
 int WM_NCCREATE ;
 int WS_EX_CLIENTEDGE ;

__attribute__((used)) static LRESULT
DATETIME_NCCreate (HWND hwnd, const CREATESTRUCTW *lpcs)
{
    DWORD dwExStyle = GetWindowLongW(hwnd, GWL_EXSTYLE);

    dwExStyle |= WS_EX_CLIENTEDGE;
    SetWindowLongW(hwnd, GWL_EXSTYLE, dwExStyle);

    return DefWindowProcW(hwnd, WM_NCCREATE, 0, (LPARAM)lpcs);
}
