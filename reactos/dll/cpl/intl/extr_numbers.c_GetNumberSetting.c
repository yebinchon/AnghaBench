
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {void* nNumMeasure; void* nNumLeadingZero; void* nNumNegFormat; void* nNumDigits; void* nNumGrouping; int szNumListSep; int szNumNegativeSign; int szNumThousandSep; int szNumDecimalSep; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef void* INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int GetSelectedComboBoxIndex (int ,int ,void**) ;
 int GetSelectedComboBoxText (int ,int ,int*,int) ;
 int IDC_NUMBERDSYMBOL ;
 int IDC_NUMBERSDGROUPING ;
 int IDC_NUMBERSDIGITGRSYM ;
 int IDC_NUMBERSDISPLEADZER ;
 int IDC_NUMBERSLSEP ;
 int IDC_NUMBERSMEASSYS ;
 int IDC_NUMBERSNDIGDEC ;
 int IDC_NUMBERSNNUMFORMAT ;
 int IDC_NUMBERSNSIGNSYM ;
 int MAX_NUMDECIMALSEP ;
 int MAX_NUMLISTSEP ;
 int MAX_NUMNEGATIVESIGN ;
 int MAX_NUMTHOUSANDSEP ;
 int TRUE ;
 int wcscpy (int ,int*) ;

__attribute__((used)) static
BOOL
GetNumberSetting(
    HWND hwndDlg,
    PGLOBALDATA pGlobalData)
{
    WCHAR szNumDecimalSep[MAX_NUMDECIMALSEP];
    WCHAR szNumThousandSep[MAX_NUMTHOUSANDSEP];
    WCHAR szNumNegativeSign[MAX_NUMNEGATIVESIGN];
    WCHAR szNumListSep[MAX_NUMLISTSEP];
    INT nNumDigits;
    INT nNumGrouping;
    INT nNumNegFormat;
    INT nNumLeadingZero;
    INT nNumMeasure;


    GetSelectedComboBoxText(hwndDlg,
                            IDC_NUMBERDSYMBOL,
                            szNumDecimalSep,
                            MAX_NUMDECIMALSEP);

    if (szNumDecimalSep[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_NUMBERSNDIGDEC,
                             &nNumDigits);


    GetSelectedComboBoxText(hwndDlg,
                            IDC_NUMBERSDIGITGRSYM,
                            szNumThousandSep,
                            MAX_NUMTHOUSANDSEP);

    if (szNumThousandSep[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_NUMBERSDGROUPING,
                             &nNumGrouping);


    GetSelectedComboBoxText(hwndDlg,
                            IDC_NUMBERSNSIGNSYM,
                            szNumNegativeSign,
                            MAX_NUMNEGATIVESIGN);

    if (szNumNegativeSign[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_NUMBERSNNUMFORMAT,
                             &nNumNegFormat);


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_NUMBERSDISPLEADZER,
                             &nNumLeadingZero);


    GetSelectedComboBoxText(hwndDlg,
                            IDC_NUMBERSLSEP,
                            szNumListSep,
                            MAX_NUMLISTSEP);

    if (szNumListSep[0] == L'\0')
    {


        return FALSE;
    }


    GetSelectedComboBoxIndex(hwndDlg,
                             IDC_NUMBERSMEASSYS,
                             &nNumMeasure);


    wcscpy(pGlobalData->szNumDecimalSep, szNumDecimalSep);
    wcscpy(pGlobalData->szNumThousandSep, szNumThousandSep);
    wcscpy(pGlobalData->szNumNegativeSign, szNumNegativeSign);
    wcscpy(pGlobalData->szNumListSep, szNumListSep);
    pGlobalData->nNumGrouping = nNumGrouping;
    pGlobalData->nNumDigits = nNumDigits;
    pGlobalData->nNumNegFormat = nNumNegFormat;
    pGlobalData->nNumLeadingZero = nNumLeadingZero;
    pGlobalData->nNumMeasure = nNumMeasure;

    return TRUE;
}
