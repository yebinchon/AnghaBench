
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ nNumNegFormat; int szNumNegativeSign; int szNumDecimalSep; } ;
typedef int * PWSTR ;
typedef TYPE_1__* PGLOBALDATA ;
typedef int LPARAM ;
typedef size_t INT ;
typedef int HWND ;


 int CB_ADDSTRING ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int IDC_NUMBERSNNUMFORMAT ;
 size_t MAX_NEG_NUMBERS_SAMPLES ;
 int * ReplaceSubStr (int *,int ,char*) ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int ** lpNegNumFmtSamples ;

__attribute__((used)) static VOID
InitNegNumFmtCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    PWSTR pszString1, pszString2;
    INT nCBIndex;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNNUMFORMAT,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_NEG_NUMBERS_SAMPLES; nCBIndex++)
    {

        pszString1 = ReplaceSubStr(lpNegNumFmtSamples[nCBIndex],
                                   pGlobalData->szNumDecimalSep,
                                   L",");
        if (pszString1 != ((void*)0))
        {

            pszString2 = ReplaceSubStr(pszString1,
                                       pGlobalData->szNumNegativeSign,
                                       L"-");
            if (pszString2 != ((void*)0))
            {
                SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNNUMFORMAT,
                                    CB_ADDSTRING,
                                    0,
                                    (LPARAM)pszString2);

                HeapFree(GetProcessHeap(), 0, pszString2);
            }

            HeapFree(GetProcessHeap(), 0, pszString1);
        }
    }


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSNNUMFORMAT,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumNegFormat,
                        (LPARAM)0);
}
