
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szNewTitle ;
typedef int TCHAR ;
typedef int HWND ;


 int ARRAYSIZE (int *) ;
 int GetDeviceMode (int ) ;
 int IDS_MODE_NOT_READY ;
 int IDS_MODE_OPEN ;
 int IDS_MODE_PAUSE ;
 int IDS_MODE_PLAY ;
 int IDS_MODE_RECORD ;
 int IDS_MODE_SEEK ;
 int IDS_MODE_STOP ;
 int IDS_MODE_UNKNOWN ;
 int LoadString (int ,int ,int *,int ) ;
 int MAX_PATH ;







 int SetWindowText (int ,int *) ;
 int StringCbPrintf (int *,int,int ,int *,int ,int *) ;
 int _T (char*) ;
 int hInstance ;
 int * szAppTitle ;
 int szCurrentFile ;
 scalar_t__ wDeviceId ;

void UpdateWindowCaption(HWND hwnd)
{
    TCHAR szNewTitle[MAX_PATH + 3 + 256];
    TCHAR szStatus[128];

    if (wDeviceId == 0)
    {
        SetWindowText(hwnd, szAppTitle);
        return;
    }

    switch (GetDeviceMode(hwnd))
    {
        case 132:
        {
            LoadString(hInstance, IDS_MODE_PAUSE, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        case 128:
        {
            LoadString(hInstance, IDS_MODE_STOP, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        case 131:
        {
            LoadString(hInstance, IDS_MODE_PLAY, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        case 133:
        {
            LoadString(hInstance, IDS_MODE_OPEN, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        case 130:
        {
            LoadString(hInstance, IDS_MODE_RECORD, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        case 129:
        {
            LoadString(hInstance, IDS_MODE_SEEK, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        case 134:
        {
            LoadString(hInstance, IDS_MODE_NOT_READY, szStatus, ARRAYSIZE(szStatus));
            break;
        }

        default:
        {
            LoadString(hInstance, IDS_MODE_UNKNOWN, szStatus, ARRAYSIZE(szStatus));
        }
    }

    StringCbPrintf(szNewTitle, sizeof(szNewTitle), _T("%s - %s (%s)"), szAppTitle, szCurrentFile, szStatus);
    SetWindowText(hwnd, szNewTitle);
}
