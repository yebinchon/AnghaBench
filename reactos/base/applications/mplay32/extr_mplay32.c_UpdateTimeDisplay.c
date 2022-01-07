
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int szTime ;
struct TYPE_2__ {int dwReturn; int dwItem; } ;
typedef int TCHAR ;
typedef TYPE_1__ MCI_STATUS_PARMS ;
typedef int HWND ;
typedef int DWORD_PTR ;
typedef int DWORD ;


 int MAX_MCISTR ;

 int MCI_STATUS ;
 int MCI_STATUS_ITEM ;
 int MCI_STATUS_POSITION ;
 int MCI_STATUS_TIME_FORMAT ;
 int SetWindowText (int ,int *) ;
 int StringCbPrintf (int *,int,int *,int,...) ;
 int * _T (char*) ;
 int mciSendCommand (int ,int ,int ,int ) ;
 int wDeviceId ;

void UpdateTimeDisplay(HWND hwnd)
{
    MCI_STATUS_PARMS mciStatus;
    TCHAR szTime[MAX_MCISTR];
    DWORD dwTimeFormat;

    if (!wDeviceId)
    {
        SetWindowText(hwnd, _T(""));
        return;
    }

    mciStatus.dwItem = MCI_STATUS_TIME_FORMAT;
    mciStatus.dwReturn = 0;
    mciSendCommand(wDeviceId, MCI_STATUS, MCI_STATUS_ITEM, (DWORD_PTR)&mciStatus);
    dwTimeFormat = mciStatus.dwReturn;

    mciStatus.dwItem = MCI_STATUS_POSITION;
    mciStatus.dwReturn = 0;
    mciSendCommand(wDeviceId, MCI_STATUS, MCI_STATUS_ITEM, (DWORD_PTR)&mciStatus);

    switch(dwTimeFormat)
    {
        case 128:
        {
            int s, m, h;

            s = (mciStatus.dwReturn / 1000) % 60;
            m = ((mciStatus.dwReturn / (1000*60)) % 60);
            h = ((mciStatus.dwReturn / (1000*60*60)) % 24);
            StringCbPrintf(szTime, sizeof(szTime), _T("%02lu:%02lu:%02lu"), h, m, s);
            break;
        }


        default:
        {
            StringCbPrintf(szTime, sizeof(szTime), _T("%lu"), mciStatus.dwReturn);
            break;
        }
    }

    SetWindowText(hwnd, szTime);
}
