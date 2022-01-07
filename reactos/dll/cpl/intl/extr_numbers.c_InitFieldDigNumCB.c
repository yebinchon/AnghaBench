
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ nNumGrouping; } ;
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
 int IDC_NUMBERSDGROUPING ;
 int * InsSpacesFmt (int ,int ) ;
 size_t MAX_FIELD_DIG_SAMPLES ;
 int SAMPLE_NUMBER ;
 int SendDlgItemMessageW (int ,int ,int ,int ,int ) ;
 int * lpFieldDigNumSamples ;

__attribute__((used)) static VOID
InitFieldDigNumCB(HWND hwndDlg, PGLOBALDATA pGlobalData)
{
    PWSTR pszFieldDigNumSmpl;
    INT nCBIndex;


    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSDGROUPING,
                        CB_RESETCONTENT,
                        (WPARAM)0,
                        (LPARAM)0);


    for (nCBIndex = 0; nCBIndex < MAX_FIELD_DIG_SAMPLES; nCBIndex++)
    {
        pszFieldDigNumSmpl = InsSpacesFmt(SAMPLE_NUMBER, lpFieldDigNumSamples[nCBIndex]);
        if (pszFieldDigNumSmpl != ((void*)0))
        {
            SendDlgItemMessageW(hwndDlg, IDC_NUMBERSDGROUPING,
                                CB_ADDSTRING,
                                0,
                                (LPARAM)pszFieldDigNumSmpl);
            HeapFree(GetProcessHeap(), 0, pszFieldDigNumSmpl);
        }
    }

    SendDlgItemMessageW(hwndDlg, IDC_NUMBERSDGROUPING,
                        CB_SETCURSEL,
                        (WPARAM)pGlobalData->nNumGrouping,
                        (LPARAM)0);
}
