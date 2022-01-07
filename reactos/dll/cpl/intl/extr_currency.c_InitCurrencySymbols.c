
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ szCurrSymbol; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_LIMITTEXT ;
 int CB_SETCURSEL ;
 int IDC_CURRENCYSYMBOL ;
 scalar_t__ MAX_CURRSYMBOL ;
 int SendDlgItemMessageW (int ,int ,int ,scalar_t__,int ) ;

__attribute__((used)) static VOID
InitCurrencySymbols(HWND hwndDlg, PGLOBALDATA pGlobalData)
{

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYSYMBOL,
                        CB_LIMITTEXT,
                        MAX_CURRSYMBOL - 1,
                        0);


    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYSYMBOL,
                        CB_ADDSTRING,
                        0,
                        (LPARAM)pGlobalData->szCurrSymbol);

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYSYMBOL,
                        CB_SETCURSEL,
                        0,
                        0);
}
