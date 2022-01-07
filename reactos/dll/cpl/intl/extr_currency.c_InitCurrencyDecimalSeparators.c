
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ szCurrDecimalSep; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_LIMITTEXT ;
 int CB_SETCURSEL ;
 int IDC_CURRENCYDECSEP ;
 scalar_t__ MAX_CURRDECIMALSEP ;
 int SendDlgItemMessageW (int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static VOID
InitCurrencyDecimalSeparators(HWND hwndDlg, PGLOBALDATA pGlobalData)
{

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYDECSEP,
                        CB_LIMITTEXT,
                        MAX_CURRDECIMALSEP - 1,
                        0);


    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYDECSEP,
                        CB_ADDSTRING,
                        0,
                        (LPARAM)pGlobalData->szCurrDecimalSep);

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYDECSEP,
                        CB_SETCURSEL,
                        0,
                        0);
}
