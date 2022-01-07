
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {void* nCurrDigits; void* nCurrNegFormat; void* nCurrPosFormat; int szCurrThousandSep; int szCurrDecimalSep; void* nCurrGrouping; int szCurrSymbol; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef void* INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetSelectedComboBoxIndex (int ,int ,void**) ;
 int GetSelectedComboBoxText (int ,int ,int*,int) ;
 int IDC_CURRENCYDECNUM ;
 int IDC_CURRENCYDECSEP ;
 int IDC_CURRENCYGRPNUM ;
 int IDC_CURRENCYGRPSEP ;
 int IDC_CURRENCYNEGVALUE ;
 int IDC_CURRENCYPOSVALUE ;
 int IDC_CURRENCYSYMBOL ;
 int MAX_CURRDECIMALSEP ;
 int MAX_CURRSYMBOL ;
 int MAX_CURRTHOUSANDSEP ;
 int TRUE ;
 int wcscpy (int ,int*) ;

__attribute__((used)) static
BOOL
GetCurrencySetting(
     HWND hwndDlg,
     PGLOBALDATA pGlobalData)
{
    WCHAR szCurrSymbol[MAX_CURRSYMBOL];
    WCHAR szCurrDecimalSep[MAX_CURRDECIMALSEP];
    WCHAR szCurrThousandSep[MAX_CURRTHOUSANDSEP];
    INT nCurrPosFormat;
    INT nCurrNegFormat;
    INT nCurrDigits;
    INT nCurrGrouping;


    GetSelectedComboBoxText(hwndDlg,
                            IDC_CURRENCYSYMBOL,
                            szCurrSymbol,
                            MAX_CURRSYMBOL);

    if (szCurrSymbol[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_CURRENCYPOSVALUE,
                             &nCurrPosFormat);


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_CURRENCYNEGVALUE,
                             &nCurrNegFormat);


    GetSelectedComboBoxText(hwndDlg,
                            IDC_CURRENCYDECSEP,
                            szCurrDecimalSep,
                            MAX_CURRDECIMALSEP);

    if (szCurrDecimalSep[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_CURRENCYDECNUM,
                             &nCurrDigits);


    GetSelectedComboBoxText(hwndDlg,
                            IDC_CURRENCYGRPSEP,
                            szCurrThousandSep,
                            MAX_CURRTHOUSANDSEP);

    if (szCurrThousandSep[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_CURRENCYGRPNUM,
                             &nCurrGrouping);


    wcscpy(pGlobalData->szCurrSymbol, szCurrSymbol);
    pGlobalData->nCurrGrouping = nCurrGrouping;
    wcscpy(pGlobalData->szCurrDecimalSep, szCurrDecimalSep);
    wcscpy(pGlobalData->szCurrThousandSep, szCurrThousandSep);
    pGlobalData->nCurrPosFormat = nCurrPosFormat;
    pGlobalData->nCurrNegFormat = nCurrNegFormat;
    pGlobalData->nCurrDigits = nCurrDigits;

    return TRUE;
}
