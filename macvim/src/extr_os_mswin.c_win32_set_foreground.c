
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetConsoleHwnd () ;
 int SetForegroundWindow (scalar_t__) ;
 scalar_t__ s_hwnd ;

void
win32_set_foreground()
{

    GetConsoleHwnd();

    if (s_hwnd != 0)
 SetForegroundWindow(s_hwnd);
}
