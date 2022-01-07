
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetConsoleHwnd () ;
 int SWP_NOACTIVATE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int SetWindowPos (int ,int *,int,int,int ,int ,int) ;
 int s_hwnd ;

void
mch_set_winpos(int x, int y)
{
    GetConsoleHwnd();
    SetWindowPos(s_hwnd, ((void*)0), x, y, 0, 0,
   SWP_NOZORDER | SWP_NOSIZE | SWP_NOACTIVATE);
}
