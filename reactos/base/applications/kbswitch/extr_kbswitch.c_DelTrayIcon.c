
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tnid ;
typedef int VOID ;
struct TYPE_4__ {int cbSize; int uID; int hWnd; } ;
typedef TYPE_1__ NOTIFYICONDATA ;
typedef int HWND ;


 int NIM_DELETE ;
 int Shell_NotifyIcon (int ,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static VOID
DelTrayIcon(HWND hwnd)
{
    NOTIFYICONDATA tnid;

    memset(&tnid, 0, sizeof(tnid));
    tnid.cbSize = sizeof(NOTIFYICONDATA);
    tnid.hWnd = hwnd;
    tnid.uID = 1;

    Shell_NotifyIcon(NIM_DELETE, &tnid);
}
