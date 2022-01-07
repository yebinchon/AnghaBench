
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ nNumLeadingZero; int szNumDecimalSep; } ;
typedef int * PWSTR ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IDC_NUMBERSDISPLEADZER ;
 size_t MAX_LEAD_ZEROES_SAMPLES ;
 int * ReplaceSubStr (int ,int ,char*) ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int * lpLeadNumFmtSamples ;

__attribute__((used)) static VOID
InitLeadingZeroesCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    PWSTR pszResultStr;
    INT nCBIndex;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSDISPLEADZER,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_LEAD_ZEROES_SAMPLES; nCBIndex++)
    {
        pszResultStr = ReplaceSubStr(lpLeadNumFmtSamples[nCBIndex],
                                     pGlobalData->szNumDecimalSep,
                                     L",");
        if (pszResultStr != ((void*)0))
        {
            SendDlgItemMessage(hwndDlg, IDC_NUMBERSDISPLEADZER,
                               CB_ADDSTRING,
                               0,
                               (LPARAM)pszResultStr);
            HeapFree(GetProcessHeap(), 0, pszResultStr);
        }
    }


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSDISPLEADZER,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumLeadingZero,
                        (LPARAM)0);
}
