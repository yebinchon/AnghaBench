
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbSize; int uCallbackMessage; scalar_t__ uFlags; scalar_t__ uID; int hWnd; } ;
typedef TYPE_1__ NOTIFYICONDATAW ;
typedef int BOOL ;


 int NIM_DELETE ;
 int Shell_NotifyIconW (int ,TYPE_1__*) ;
 int WM_ONTRAYICON ;
 int hMainWnd ;
 int memset (TYPE_1__*,int ,int) ;

BOOL TrayIcon_ShellRemoveTrayIcon(void)
{
    NOTIFYICONDATAW nid;
    BOOL bRetVal;

    memset(&nid, 0, sizeof(NOTIFYICONDATAW));

    nid.cbSize = sizeof(NOTIFYICONDATAW);
    nid.hWnd = hMainWnd;
    nid.uID = 0;
    nid.uFlags = 0;
    nid.uCallbackMessage = WM_ONTRAYICON;

    bRetVal = Shell_NotifyIconW(NIM_DELETE, &nid);

    return bRetVal;
}
