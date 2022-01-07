
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int * HICON ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ ICON_BIG ;
 scalar_t__ ICON_SMALL ;
 scalar_t__ SendMessage (int *,int ,int ,int ) ;
 int TRUE ;
 int WM_SETICON ;

__attribute__((used)) static BOOL
SetConsoleIcon(
    HWND hWnd,
    HICON hIconSmall,
    HICON hIcon)
{
    HICON hPrevIconSmall;
    HICON hPrevIcon;

    if (hWnd == ((void*)0))
 return FALSE;

    if (hIconSmall != ((void*)0))
 hPrevIconSmall = (HICON)SendMessage(hWnd, WM_SETICON,
          (WPARAM)ICON_SMALL, (LPARAM)hIconSmall);
    if (hIcon != ((void*)0))
 hPrevIcon = (HICON)SendMessage(hWnd, WM_SETICON,
          (WPARAM)ICON_BIG,(LPARAM) hIcon);
    return TRUE;
}
