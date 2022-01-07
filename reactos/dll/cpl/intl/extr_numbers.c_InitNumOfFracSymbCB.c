
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int WCHAR ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ nNumDigits; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int DECIMAL_RADIX ;
 int IDC_NUMBERSNDIGDEC ;
 scalar_t__ MAX_FRAC_NUM_SAMPLES ;
 int MAX_SAMPLES_STR_SIZE ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int _itow (scalar_t__,int *,int ) ;

__attribute__((used)) static VOID
InitNumOfFracSymbCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    WCHAR szFracCount[MAX_SAMPLES_STR_SIZE];
    INT nCBIndex;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNDIGDEC,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_FRAC_NUM_SAMPLES; nCBIndex++)
    {

        _itow(nCBIndex, szFracCount, DECIMAL_RADIX);

        SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNDIGDEC,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)szFracCount);
    }


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNDIGDEC,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumDigits,
                        (LPARAM)0);
}
