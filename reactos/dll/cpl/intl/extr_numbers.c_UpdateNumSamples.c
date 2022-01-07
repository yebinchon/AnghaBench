
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
struct TYPE_7__ {int NegativeOrder; int lpThousandSep; int lpDecimalSep; int Grouping; int LeadingZero; int NumDigits; } ;
struct TYPE_6__ {size_t nNumGrouping; int UserLCID; int nNumNegFormat; int szNumThousandSep; int szNumDecimalSep; int nNumLeadingZero; int nNumDigits; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef TYPE_2__ NUMBERFMT ;
typedef int LPARAM ;
typedef int HWND ;


 int GetNumberFormatW (int ,int ,int ,TYPE_2__*,int *,int) ;
 TYPE_4__* GroupingFormats ;
 int IDC_NUMBERSNEGSAMPLE ;
 int IDC_NUMBERSPOSSAMPLE ;
 int MAX_FMT_SIZE ;
 int SAMPLE_NEG_NUMBER ;
 int SAMPLE_NUMBER ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int WM_SETTEXT ;

__attribute__((used)) static VOID
UpdateNumSamples(HWND hwndDlg,
                 PGLOBALDATA pGlobalData)
{
    WCHAR OutBuffer[MAX_FMT_SIZE];
    NUMBERFMT NumberFormat;

    NumberFormat.NumDigits = pGlobalData->nNumDigits;
    NumberFormat.LeadingZero = pGlobalData->nNumLeadingZero;
    NumberFormat.Grouping = GroupingFormats[pGlobalData->nNumGrouping].nInteger;
    NumberFormat.lpDecimalSep = pGlobalData->szNumDecimalSep;
    NumberFormat.lpThousandSep = pGlobalData->szNumThousandSep;
    NumberFormat.NegativeOrder = pGlobalData->nNumNegFormat;


    GetNumberFormatW(pGlobalData->UserLCID,
                     0,
                     SAMPLE_NUMBER,
                     &NumberFormat,
                     OutBuffer,
                     MAX_FMT_SIZE);

    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSPOSSAMPLE,
                        WM_SETTEXT,
                        0,
                        (LPARAM)OutBuffer);


    GetNumberFormatW(pGlobalData->UserLCID,
                     0,
                     SAMPLE_NEG_NUMBER,
                     &NumberFormat,
                     OutBuffer,
                     MAX_FMT_SIZE);

    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNEGSAMPLE,
                        WM_SETTEXT,
                        0,
                        (LPARAM)OutBuffer);
}
