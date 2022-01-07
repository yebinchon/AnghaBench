
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tnid ;
typedef int VOID ;
struct TYPE_4__ {int cbSize; int uID; int uFlags; int szTip; int hIcon; int uCallbackMessage; int hWnd; } ;
typedef TYPE_1__ NOTIFYICONDATA ;
typedef int LPTSTR ;
typedef int HWND ;


 int ARRAYSIZE (int ) ;
 int CreateTrayIcon (int ) ;
 int NIF_ICON ;
 int NIF_MESSAGE ;
 int NIF_TIP ;
 int NIM_MODIFY ;
 int Shell_NotifyIcon (int ,TYPE_1__*) ;
 int StringCchCopy (int ,int ,int ) ;
 int WM_NOTIFYICONMSG ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static VOID
UpdateTrayIcon(HWND hwnd, LPTSTR szLCID, LPTSTR szName)
{
    NOTIFYICONDATA tnid;

    memset(&tnid, 0, sizeof(tnid));
    tnid.cbSize = sizeof(NOTIFYICONDATA);
    tnid.hWnd = hwnd;
    tnid.uID = 1;
    tnid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
    tnid.uCallbackMessage = WM_NOTIFYICONMSG;
    tnid.hIcon = CreateTrayIcon(szLCID);

    StringCchCopy(tnid.szTip, ARRAYSIZE(tnid.szTip), szName);

    Shell_NotifyIcon(NIM_MODIFY, &tnid);
}
