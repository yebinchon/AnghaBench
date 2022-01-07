
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_6__ {int Grouping; int NegativeOrder; scalar_t__ PositiveOrder; int lpCurrencySymbol; int lpThousandSep; int lpDecimalSep; scalar_t__ LeadingZero; int NumDigits; } ;
struct TYPE_5__ {int nCurrNegFormat; int UserLCID; int szCurrSymbol; int szCurrThousandSep; int szCurrDecimalSep; int nCurrDigits; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_2__ CURRENCYFMTW ;


 int CB_INSERTSTRING ;
 int CB_SETCURSEL ;
 int GetCurrencyFormatW (int ,int ,char*,TYPE_2__*,int *,int) ;
 int IDC_CURRENCYNEGVALUE ;
 int MAX_FMT_SIZE ;
 int SendDlgItemMessageW (int ,int ,int ,int,int ) ;

__attribute__((used)) static VOID
InitCurrencyNegativeFormats(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    WCHAR szBuffer[MAX_FMT_SIZE];
    CURRENCYFMTW cyFmt;
    int i;


    cyFmt.NumDigits = pGlobalData->nCurrDigits;
    cyFmt.LeadingZero = 0;
    cyFmt.Grouping = 3;
    cyFmt.lpDecimalSep = pGlobalData->szCurrDecimalSep;
    cyFmt.lpThousandSep = pGlobalData->szCurrThousandSep;
    cyFmt.lpCurrencySymbol = pGlobalData->szCurrSymbol;
    cyFmt.PositiveOrder = 0;

    for (i = 0; i < 16; i++)
    {
        cyFmt.NegativeOrder = i;
        GetCurrencyFormatW(pGlobalData->UserLCID, 0,
                           L"-1.1",
                           &cyFmt, szBuffer, MAX_FMT_SIZE);

        SendDlgItemMessageW(hwndDlg, IDC_CURRENCYNEGVALUE,
                            CB_INSERTSTRING,
                            -1,
                            (LPARAM)szBuffer);
    }

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYNEGVALUE,
                        CB_SETCURSEL,
                        pGlobalData->nCurrNegFormat,
                        0);
}
