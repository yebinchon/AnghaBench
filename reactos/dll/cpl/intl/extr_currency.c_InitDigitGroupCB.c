
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
struct TYPE_7__ {char* lpDecimalSep; char* lpCurrencySymbol; int Grouping; scalar_t__ NegativeOrder; scalar_t__ PositiveOrder; int lpThousandSep; scalar_t__ LeadingZero; scalar_t__ NumDigits; } ;
struct TYPE_6__ {int nCurrGrouping; int UserLCID; int szCurrThousandSep; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;
typedef TYPE_2__ CURRENCYFMTW ;


 int CB_INSERTSTRING ;
 int CB_SETCURSEL ;
 int GetCurrencyFormatW (int ,int ,char*,TYPE_2__*,int *,int) ;
 TYPE_4__* GroupingFormats ;
 int IDC_CURRENCYGRPNUM ;
 int MAX_FMT_SIZE ;
 size_t MAX_GROUPINGFORMATS ;
 int SendDlgItemMessageW (int ,int ,int ,int,int ) ;

__attribute__((used)) static VOID
InitDigitGroupCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    WCHAR szBuffer[MAX_FMT_SIZE];
    CURRENCYFMTW cyFmt;
    INT i;


    cyFmt.NumDigits = 0;
    cyFmt.LeadingZero = 0;
    cyFmt.lpDecimalSep = L"";
    cyFmt.lpThousandSep = pGlobalData->szCurrThousandSep;
    cyFmt.PositiveOrder = 0;
    cyFmt.NegativeOrder = 0;
    cyFmt.lpCurrencySymbol = L"";

    for (i = 0 ; i < MAX_GROUPINGFORMATS ; i++)
    {
       cyFmt.Grouping = GroupingFormats[i].nInteger;

       GetCurrencyFormatW(pGlobalData->UserLCID, 0,
                          L"123456789",
                          &cyFmt, szBuffer, MAX_FMT_SIZE);
       SendDlgItemMessageW(hwndDlg, IDC_CURRENCYGRPNUM,
                           CB_INSERTSTRING,
                           -1,
                           (LPARAM)szBuffer);
    }

    SendDlgItemMessageW(hwndDlg, IDC_CURRENCYGRPNUM,
                        CB_SETCURSEL,
                        pGlobalData->nCurrGrouping,
                        0);
}
