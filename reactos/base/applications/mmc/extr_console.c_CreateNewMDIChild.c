
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int style; void* cy; void* y; void* cx; void* x; int hOwner; int szClass; int szTitle; } ;
struct TYPE_4__ {int nConsoleCount; } ;
typedef TYPE_1__* PCONSOLE_MAINFRAME_WND ;
typedef TYPE_2__ MDICREATESTRUCT ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;


 void* CW_USEDEFAULT ;
 int CreateNewConsoleTitle () ;
 int GetModuleHandle (int *) ;
 int MDIS_ALLCHILDSTYLES ;
 scalar_t__ SendMessage (scalar_t__,int ,int ,int ) ;
 int WM_MDICREATE ;
 int szMMCChildFrm ;

HWND
CreateNewMDIChild(PCONSOLE_MAINFRAME_WND Info,
                  HWND hwndMDIClient)
{
    MDICREATESTRUCT mcs;
    HWND hChild;

    mcs.szTitle = CreateNewConsoleTitle();
    mcs.szClass = szMMCChildFrm;
    mcs.hOwner = GetModuleHandle(((void*)0));
    mcs.x = mcs.cx = CW_USEDEFAULT;
    mcs.y = mcs.cy = CW_USEDEFAULT;
    mcs.style = MDIS_ALLCHILDSTYLES;

    hChild = (HWND)SendMessage(hwndMDIClient, WM_MDICREATE, 0, (LPARAM)&mcs);
    if (hChild)
    {
        Info->nConsoleCount++;
    }

    return hChild;
}
