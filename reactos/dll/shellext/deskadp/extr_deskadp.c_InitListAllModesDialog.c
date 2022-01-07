
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int szRefreshRate ;
typedef int szFormat ;
typedef int szColors ;
typedef int szBuffer ;
typedef int WPARAM ;
typedef int VOID ;
struct TYPE_11__ {TYPE_1__* DeskExtInterface; } ;
struct TYPE_10__ {int dmPelsHeight; int dmPelsWidth; } ;
struct TYPE_9__ {int Context; TYPE_2__* (* EnumAllModes ) (int ,int ) ;TYPE_2__* (* GetCurrentMode ) (int ) ;} ;
typedef int TCHAR ;
typedef TYPE_2__* PDEVMODEW ;
typedef TYPE_3__* PDESKDISPLAYADAPTER ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int GetColorDescription (TYPE_2__*,int *,int) ;
 int GetRefreshRateDescription (TYPE_2__*,int *,int) ;
 int IDC_ALLVALIDMODES ;
 int IDS_MODEFMT ;
 int LB_ADDSTRING ;
 int LB_SETCURSEL ;
 int LB_SETITEMDATA ;
 int LoadString (int ,int ,int *,int) ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int TEXT (char) ;
 int _sntprintf (int *,int,int *,int ,int ,int *,int *) ;
 int hInstance ;
 TYPE_2__* stub1 (int ) ;
 TYPE_2__* stub2 (int ,int ) ;

__attribute__((used)) static VOID
InitListAllModesDialog(PDESKDISPLAYADAPTER This,
                       HWND hwndListAllModesDlg)
{
    TCHAR szFormat[64], szBuffer[64], szColors[64], szRefreshRate[64];
    PDEVMODEW lpDevMode, lpCurrentDevMode;
    DWORD dwIndex = 0;
    INT i;

    if (This->DeskExtInterface != ((void*)0))
    {
        if (!LoadString(hInstance,
                        IDS_MODEFMT,
                        szFormat,
                        sizeof(szFormat) / sizeof(szFormat[0])))
        {
            szFormat[0] = TEXT('\0');
        }

        lpCurrentDevMode = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);

        do
        {
            lpDevMode = This->DeskExtInterface->EnumAllModes(This->DeskExtInterface->Context,
                                                             dwIndex++);
            if (lpDevMode != ((void*)0))
            {
                GetColorDescription(lpDevMode,
                                    szColors,
                                    sizeof(szColors) / sizeof(szColors[0]));

                GetRefreshRateDescription(lpDevMode,
                                          szRefreshRate,
                                          sizeof(szRefreshRate) / sizeof(szRefreshRate[0]));

                _sntprintf(szBuffer,
                           sizeof(szBuffer) / sizeof(szBuffer[0]),
                           szFormat,
                           lpDevMode->dmPelsWidth,
                           lpDevMode->dmPelsHeight,
                           szColors,
                           szRefreshRate);

                i = (INT)SendDlgItemMessage(hwndListAllModesDlg,
                                            IDC_ALLVALIDMODES,
                                            LB_ADDSTRING,
                                            0,
                                            (LPARAM)szBuffer);
                if (i >= 0)
                {
                    SendDlgItemMessage(hwndListAllModesDlg,
                                       IDC_ALLVALIDMODES,
                                       LB_SETITEMDATA,
                                       (WPARAM)i,
                                       (LPARAM)lpDevMode);

                    if (lpDevMode == lpCurrentDevMode)
                    {
                        SendDlgItemMessage(hwndListAllModesDlg,
                                           IDC_ALLVALIDMODES,
                                           LB_SETCURSEL,
                                           (WPARAM)i,
                                           0);
                    }
                }
            }

        } while (lpDevMode != ((void*)0));
    }
}
