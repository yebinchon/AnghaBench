
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ szCurrThousandSep; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_LIMITTEXT ;
 int CB_SETCURSEL ;
 int IDC_CURRENCYGRPSEP ;
 scalar_t__ MAX_CURRTHOUSANDSEP ;
 int SendDlgItemMessageW (int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static VOID
InitCurrencyGroupSeparators(HWND hwndDlg, PGLOBALDATA pGlobalData)
{

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYGRPSEP,
                        CB_LIMITTEXT,
                        MAX_CURRTHOUSANDSEP - 1,
                        0);


    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYGRPSEP,
                        CB_ADDSTRING,
                        0,
                        (LPARAM)pGlobalData->szCurrThousandSep);

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYGRPSEP,
                        CB_SETCURSEL,
                        0,
                        0);
}
