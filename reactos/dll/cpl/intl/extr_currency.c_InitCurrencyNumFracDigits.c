
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int VOID ;
struct TYPE_3__ {int nCurrDigits; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int IDC_CURRENCYDECNUM ;
 int MAX_FMT_SIZE ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;

__attribute__((used)) static VOID
InitCurrencyNumFracDigits(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    WCHAR szBuffer[MAX_FMT_SIZE];
    int i;


    for (i = 0; i < 10; i++)
    {
        szBuffer[0] = L'0' + i;
        szBuffer[1] = 0;
        SendDlgItemMessageW(hwndDlg, IDC_CURRENCYDECNUM,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)szBuffer);
    }

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYDECNUM,
                        CB_SETCURSEL,
                        pGlobalData->nCurrDigits,
                        0);
}
