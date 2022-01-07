
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int Selection; TYPE_1__* ScreenSaverItems; } ;
struct TYPE_7__ {scalar_t__ szDisplayName; int szFilename; } ;
typedef TYPE_2__* PDATA ;
typedef scalar_t__ LPTSTR ;
typedef int LPARAM ;
typedef int LONG_PTR ;
typedef size_t INT ;
typedef int HWND ;
typedef int DATA ;
typedef scalar_t__ BOOL ;


 int AddScreenSavers (int ,TYPE_2__*) ;
 size_t CB_ERR ;
 int CB_FINDSTRINGEXACT ;
 int CB_SETCURSEL ;
 int CheckRegScreenSaverIsSecure (int ) ;
 int DWLP_USER ;
 int EndDialog (int ,int) ;
 scalar_t__ FALSE ;
 scalar_t__ GetCurrentScreenSaverValue (int ) ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int IDC_SCREENS_LIST ;
 int IDC_SCREENS_TIME ;
 int MAKELONG (short,short) ;
 size_t MAX_SCREENSAVERS ;
 int SelectionChanged (int ,TYPE_2__*) ;
 int SendDlgItemMessage (int ,int ,int ,int ,int) ;
 size_t SendMessage (int ,int ,size_t,int ) ;
 int SetWindowLongPtr (int ,int ,int ) ;
 scalar_t__ TRUE ;
 int UDM_SETPOS32 ;
 int UDM_SETRANGE ;
 int _T (char*) ;
 int _tcscmp (scalar_t__,int ) ;
 int _ttoi (scalar_t__) ;

__attribute__((used)) static BOOL
OnInitDialog(HWND hwndDlg, PDATA pData)
{
    LPTSTR lpCurSs;
    HWND hwndSSCombo = GetDlgItem(hwndDlg, IDC_SCREENS_LIST);
    INT Num;

    pData = HeapAlloc(GetProcessHeap(),
                            HEAP_ZERO_MEMORY,
                            sizeof(DATA));
    if (!pData)
    {
        EndDialog(hwndDlg, -1);
        return FALSE;
    }

    SetWindowLongPtr(hwndDlg,
                     DWLP_USER,
                     (LONG_PTR)pData);

    pData->Selection = -1;

    SendDlgItemMessage(hwndDlg,
                       IDC_SCREENS_TIME,
                       UDM_SETRANGE,
                       0,
                       MAKELONG
                       ((short) 240, (short) 1));

    AddScreenSavers(hwndDlg,
                    pData);

    CheckRegScreenSaverIsSecure(hwndDlg);


    lpCurSs = GetCurrentScreenSaverValue(_T("SCRNSAVE.EXE"));
    if (lpCurSs)
    {
        BOOL bFound = FALSE;
        INT i;

        for (i = 0; i < MAX_SCREENSAVERS; i++)
        {
            if (!_tcscmp(lpCurSs, pData->ScreenSaverItems[i].szFilename))
            {
                bFound = TRUE;
                break;
            }
        }

        if (bFound)
        {
            Num = SendMessage(hwndSSCombo,
                              CB_FINDSTRINGEXACT,
                              -1,
                              (LPARAM)pData->ScreenSaverItems[i].szDisplayName);
            if (Num != CB_ERR)
                SendMessage(hwndSSCombo,
                            CB_SETCURSEL,
                            Num,
                            0);
        }
        else
        {
            SendMessage(hwndSSCombo,
                        CB_SETCURSEL,
                        0,
                        0);
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpCurSs);
    }
    else
    {

        SendMessage(hwndSSCombo,
                    CB_SETCURSEL,
                    0,
                    0);
    }


    lpCurSs = GetCurrentScreenSaverValue(_T("ScreenSaveTimeOut"));
    if (lpCurSs)
    {
        UINT Time = _ttoi(lpCurSs);

        Time /= 60;

        SendDlgItemMessage(hwndDlg,
                           IDC_SCREENS_TIME,
                           UDM_SETPOS32,
                           0,
                           Time);

        HeapFree(GetProcessHeap(),
                 0,
                 lpCurSs);

    }

    SelectionChanged(hwndDlg,
                     pData);

    return TRUE;
}
