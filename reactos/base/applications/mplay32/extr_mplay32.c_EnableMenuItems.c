
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hWnd; } ;
typedef int MCI_GENERIC_PARMS ;
typedef TYPE_1__ MCI_DGV_WINDOW_PARMSW ;
typedef int MCI_DGV_RECT_PARMS ;
typedef scalar_t__ MCIERROR ;
typedef int HWND ;
typedef int DWORD_PTR ;


 int EnableMenuItem (int ,int ,int) ;
 int IDM_CLOSE_FILE ;
 int IDM_DEVPROPS ;
 int IDM_SWITCHVIEW ;
 int MCI_CONFIGURE ;
 int MCI_DGV_WHERE_SOURCE ;
 int MCI_DGV_WINDOW_HWND ;
 int MCI_TEST ;
 int MCI_WHERE ;
 int MCI_WINDOW ;
 int MF_BYCOMMAND ;
 int MF_ENABLED ;
 int hMainMenu ;
 scalar_t__ mciSendCommand (int ,int ,int,int ) ;
 int wDeviceId ;

void EnableMenuItems(HWND hwnd)
{
    MCIERROR mciError;
    MCI_GENERIC_PARMS mciGeneric;
    MCI_DGV_RECT_PARMS mciVideoRect;
    MCI_DGV_WINDOW_PARMSW mciVideoWindow;

    EnableMenuItem(hMainMenu, IDM_CLOSE_FILE, MF_BYCOMMAND | MF_ENABLED);

    mciError = mciSendCommand(wDeviceId, MCI_CONFIGURE, MCI_TEST, (DWORD_PTR)&mciGeneric);
    if (mciError == 0)
    {
        EnableMenuItem(hMainMenu, IDM_DEVPROPS, MF_BYCOMMAND | MF_ENABLED);
    }

    mciVideoWindow.hWnd = hwnd;

    mciError = mciSendCommand(wDeviceId, MCI_WINDOW, MCI_DGV_WINDOW_HWND | MCI_TEST, (DWORD_PTR)&mciVideoWindow);
    if (!mciError)
    {
        mciError = mciSendCommand(wDeviceId, MCI_WHERE, MCI_DGV_WHERE_SOURCE | MCI_TEST, (DWORD_PTR)&mciVideoRect);
        if (!mciError)
        {
            EnableMenuItem(hMainMenu, IDM_SWITCHVIEW, MF_BYCOMMAND | MF_ENABLED);
        }
    }
}
