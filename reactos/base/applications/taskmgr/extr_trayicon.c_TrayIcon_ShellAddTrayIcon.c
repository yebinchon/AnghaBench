
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int szMsg ;
typedef int WCHAR ;
struct TYPE_4__ {int cbSize; int uFlags; int szTip; int * hIcon; int uCallbackMessage; scalar_t__ uID; int hWnd; } ;
typedef TYPE_1__ NOTIFYICONDATAW ;
typedef int * HICON ;
typedef int BOOL ;


 int DestroyIcon (int *) ;
 int GetModuleHandleW (int *) ;
 int IDS_MSG_TRAYICONCPUUSAGE ;
 int LoadStringW (int ,int ,int *,int) ;
 int NIF_ICON ;
 int NIF_MESSAGE ;
 int NIF_TIP ;
 int NIM_ADD ;
 int PerfDataGetProcessorUsage () ;
 int Shell_NotifyIconW (int ,TYPE_1__*) ;
 int * TrayIcon_GetProcessorUsageIcon () ;
 int WM_ONTRAYICON ;
 int hMainWnd ;
 int memset (TYPE_1__*,int ,int) ;
 int wsprintfW (int ,int *,int ) ;

BOOL TrayIcon_ShellAddTrayIcon(void)
{
    NOTIFYICONDATAW nid;
    HICON hIcon = ((void*)0);
    BOOL bRetVal;
    WCHAR szMsg[64];

    memset(&nid, 0, sizeof(NOTIFYICONDATAW));

    hIcon = TrayIcon_GetProcessorUsageIcon();

    nid.cbSize = sizeof(NOTIFYICONDATAW);
    nid.hWnd = hMainWnd;
    nid.uID = 0;
    nid.uFlags = NIF_ICON | NIF_MESSAGE | NIF_TIP;
    nid.uCallbackMessage = WM_ONTRAYICON;
    nid.hIcon = hIcon;


    LoadStringW( GetModuleHandleW(((void*)0)), IDS_MSG_TRAYICONCPUUSAGE, szMsg, sizeof(szMsg) / sizeof(szMsg[0]));
    wsprintfW(nid.szTip, szMsg, PerfDataGetProcessorUsage());

    bRetVal = Shell_NotifyIconW(NIM_ADD, &nid);

    if (hIcon)
        DestroyIcon(hIcon);

    return bRetVal;
}
