
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_8__ {int nInteger; } ;
struct TYPE_7__ {int lpCurrencySymbol; int PositiveOrder; int NegativeOrder; int lpThousandSep; int lpDecimalSep; int Grouping; int LeadingZero; int NumDigits; } ;
struct TYPE_6__ {size_t nCurrGrouping; int UserLCID; int szCurrSymbol; int nCurrPosFormat; int nCurrNegFormat; int szCurrThousandSep; int szCurrDecimalSep; int nNumLeadingZero; int nCurrDigits; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_2__ CURRENCYFMTW ;


 int GetCurrencyFormatW (int ,int ,int ,TYPE_2__*,int *,int) ;
 TYPE_4__* GroupingFormats ;
 int IDC_CURRENCYNEGSAMPLE ;
 int IDC_CURRENCYPOSSAMPLE ;
 int MAX_FMT_SIZE ;
 int NEGATIVE_EXAMPLE ;
 int POSITIVE_EXAMPLE ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int WM_SETTEXT ;

__attribute__((used)) static VOID
UpdateExamples(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    WCHAR szBuffer[MAX_FMT_SIZE];
    CURRENCYFMTW CurrencyFormat;

    CurrencyFormat.NumDigits = pGlobalData->nCurrDigits;
    CurrencyFormat.LeadingZero = pGlobalData->nNumLeadingZero;
    CurrencyFormat.Grouping = GroupingFormats[pGlobalData->nCurrGrouping].nInteger;
    CurrencyFormat.lpDecimalSep = pGlobalData->szCurrDecimalSep;
    CurrencyFormat.lpThousandSep = pGlobalData->szCurrThousandSep;
    CurrencyFormat.NegativeOrder = pGlobalData->nCurrNegFormat;
    CurrencyFormat.PositiveOrder = pGlobalData->nCurrPosFormat;
    CurrencyFormat.lpCurrencySymbol = pGlobalData->szCurrSymbol;


    GetCurrencyFormatW(pGlobalData->UserLCID, 0,
                       POSITIVE_EXAMPLE,
                       &CurrencyFormat, szBuffer, MAX_FMT_SIZE);

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYPOSSAMPLE, WM_SETTEXT, 0, (LPARAM)szBuffer);


    GetCurrencyFormatW(pGlobalData->UserLCID, 0,
                       NEGATIVE_EXAMPLE,
                       &CurrencyFormat, szBuffer, MAX_FMT_SIZE);

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYNEGSAMPLE, WM_SETTEXT, 0, (LPARAM)szBuffer);
}
