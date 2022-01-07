
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetActiveWindow () ;
 int IsChild (int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
TOOLTIPS_IsWindowActive (HWND hwnd)
{
    HWND hwndActive = GetActiveWindow ();
    if (!hwndActive)
 return FALSE;
    if (hwndActive == hwnd)
 return TRUE;
    return IsChild (hwndActive, hwnd);
}
