
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ szNumNegativeSign; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 size_t CB_ERR ;
 int CB_LIMITTEXT ;
 int CB_RESETCONTENT ;
 int CB_SELECTSTRING ;
 int IDC_NUMBERSNSIGNSYM ;
 size_t MAX_NEG_SIGN_SAMPLES ;
 int MAX_NUMNEGATIVESIGN ;
 size_t SendDlgItemMessageW (int ,int ,int ,int,int ) ;
 scalar_t__* lpNegSignSamples ;

__attribute__((used)) static VOID
InitNegSignCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    INT nCBIndex;
    INT nRetCode;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNSIGNSYM,
                        CB_LIMITTEXT,
                        MAX_NUMNEGATIVESIGN - 1,
                        0);


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNSIGNSYM,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_NEG_SIGN_SAMPLES; nCBIndex++)
    {
        SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNSIGNSYM,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)lpNegSignSamples[nCBIndex]);
    }


    nRetCode = SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNSIGNSYM,
                                   CB_SELECTSTRING,
                                   -1,
                                   (LPARAM)pGlobalData->szNumNegativeSign);


    if (nRetCode == CB_ERR)
    {
        SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNSIGNSYM,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)pGlobalData->szNumNegativeSign);
        SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNSIGNSYM,
                            CB_SELECTSTRING,
                            -1,
                            (LPARAM)pGlobalData->szNumNegativeSign);
    }
}
