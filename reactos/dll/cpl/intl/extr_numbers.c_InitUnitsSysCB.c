
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ nNumMeasure; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int IDC_NUMBERSMEASSYS ;
 scalar_t__ IDS_METRIC ;
 int LoadStringW (int ,scalar_t__,int *,int) ;
 scalar_t__ MAX_UNITS_SYS_SAMPLES ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int hApplet ;

__attribute__((used)) static VOID
InitUnitsSysCB(HWND hwndDlg,
               PGLOBALDATA pGlobalData)
{
    WCHAR szUnitName[128];
    INT nCBIndex;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSMEASSYS,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_UNITS_SYS_SAMPLES; nCBIndex++)
    {
        LoadStringW(hApplet, IDS_METRIC + nCBIndex, szUnitName, 128);

        SendDlgItemMessageW(hwndDlg, IDC_NUMBERSMEASSYS,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)szUnitName);
    }


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSMEASSYS,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumMeasure,
                        (LPARAM)0);
}
