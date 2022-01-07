
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ szNumDecimalSep; } ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 size_t CB_ERR ;
 int CB_LIMITTEXT ;
 int CB_RESETCONTENT ;
 int CB_SELECTSTRING ;
 int IDC_NUMBERDSYMBOL ;
 int MAX_NUMDECIMALSEP ;
 size_t MAX_NUM_SEP_SAMPLES ;
 size_t SendDlgItemMessageW (int ,int ,int ,int,int ) ;
 scalar_t__* lpNumSepSamples ;

__attribute__((used)) static VOID
InitNumDecimalSepCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    INT nCBIndex;
    INT nRetCode;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERDSYMBOL,
                        CB_LIMITTEXT,
                        MAX_NUMDECIMALSEP - 1,
                        0);


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERDSYMBOL,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_NUM_SEP_SAMPLES; nCBIndex++)
    {
        SendDlgItemMessageW(hwndDlg, IDC_NUMBERDSYMBOL,
                            CB_ADDSTRING,
                            0,
                            (LPARAM)lpNumSepSamples[nCBIndex]);
    }


    nRetCode = SendDlgItemMessageW(hwndDlg, IDC_NUMBERDSYMBOL,
                                   CB_SELECTSTRING,
                                   -1,
                                   (LPARAM)pGlobalData->szNumDecimalSep);


    if (nRetCode == CB_ERR)
    {
        SendDlgItemMessageW(hwndDlg, IDC_NUMBERDSYMBOL,
                            CB_ADDSTRING,
                            MAX_NUM_SEP_SAMPLES,
                            (LPARAM)pGlobalData->szNumDecimalSep);
        SendDlgItemMessageW(hwndDlg, IDC_NUMBERDSYMBOL,
                            CB_SELECTSTRING,
                            -1,
                            (LPARAM)pGlobalData->szNumDecimalSep);
    }
}
