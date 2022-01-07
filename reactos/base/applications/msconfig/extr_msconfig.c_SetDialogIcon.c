
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int LPARAM ;
typedef int HWND ;


 int DestroyIcon (scalar_t__) ;
 int GetModuleHandle (int *) ;
 int ICON_BIG ;
 int ICON_SMALL ;
 int IDI_APPICON ;
 int IMAGE_ICON ;
 scalar_t__ LoadIconW (int ,int ) ;
 scalar_t__ LoadImage (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCE (int ) ;
 int SendMessage (int ,int ,int ,int ) ;
 int WM_SETICON ;
 scalar_t__ hDialogIconBig ;
 scalar_t__ hDialogIconSmall ;
 int uXIcon ;
 int uYIcon ;

__attribute__((used)) static
VOID
SetDialogIcon(HWND hDlg)
{
    if (hDialogIconBig) DestroyIcon(hDialogIconBig);
    if (hDialogIconSmall) DestroyIcon(hDialogIconSmall);

    hDialogIconBig = LoadIconW(GetModuleHandle(((void*)0)),
                               MAKEINTRESOURCE(IDI_APPICON));
    hDialogIconSmall = LoadImage(GetModuleHandle(((void*)0)),
                                 MAKEINTRESOURCE(IDI_APPICON),
                                 IMAGE_ICON,
                                 uXIcon,
                                 uYIcon,
                                 0);
    SendMessage(hDlg,
                WM_SETICON,
                ICON_BIG,
                (LPARAM)hDialogIconBig);
    SendMessage(hDlg,
                WM_SETICON,
                ICON_SMALL,
                (LPARAM)hDialogIconSmall);
}
