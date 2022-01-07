
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_3__ {int * lpSelDevMode; } ;
typedef int * PDEVMODEW ;
typedef TYPE_1__* PDESKDISPLAYADAPTER ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int IDC_ALLVALIDMODES ;
 int LB_GETCURSEL ;
 int LB_GETITEMDATA ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL
ChangeSelectedMode(PDESKDISPLAYADAPTER This,
                   HWND hwndListAllModesDlg)
{
    INT i;
    PDEVMODEW lpSelDevMode = ((void*)0);
    BOOL bRet = FALSE;

    i = (INT)SendDlgItemMessage(hwndListAllModesDlg,
                                IDC_ALLVALIDMODES,
                                LB_GETCURSEL,
                                0,
                                0);

    if (i >= 0)
    {
        lpSelDevMode = (PDEVMODEW)SendDlgItemMessage(hwndListAllModesDlg,
                                                     IDC_ALLVALIDMODES,
                                                     LB_GETITEMDATA,
                                                     (WPARAM)i,
                                                     0);
    }

    if (lpSelDevMode != ((void*)0))
    {
        This->lpSelDevMode = lpSelDevMode;
        bRet = TRUE;
    }

    return bRet;
}
