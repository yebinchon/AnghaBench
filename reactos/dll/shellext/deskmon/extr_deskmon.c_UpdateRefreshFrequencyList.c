
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int szFmt ;
typedef int szBuffer ;
typedef int WPARAM ;
typedef int VOID ;
struct TYPE_10__ {int hwndDlg; TYPE_1__* DeskExtInterface; } ;
struct TYPE_9__ {scalar_t__ dmBitsPerPel; scalar_t__ dmPelsWidth; scalar_t__ dmPelsHeight; int dmDisplayFrequency; } ;
struct TYPE_8__ {int Context; TYPE_2__* (* EnumAllModes ) (int ,int ) ;TYPE_2__* (* GetCurrentMode ) (int ) ;} ;
typedef int TCHAR ;
typedef TYPE_2__* PDEVMODEW ;
typedef TYPE_3__* PDESKMONITOR ;
typedef int LPARAM ;
typedef scalar_t__ INT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int CB_ADDSTRING ;
 int CB_RESETCONTENT ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int EnableWindow (int ,scalar_t__) ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetPruningSettings (TYPE_3__*) ;
 int IDC_REFRESHRATE ;
 int IDS_FREQFMT ;
 int IDS_MONITORSETTINGSGROUP ;
 int IDS_REFRESHRATELABEL ;
 int IDS_USEDEFFRQUENCY ;
 int LoadString (int ,int ,int *,int) ;
 scalar_t__ SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int TEXT (char) ;
 scalar_t__ TRUE ;
 int _sntprintf (int *,int,int *,int) ;
 int hInstance ;
 TYPE_2__* stub1 (int ) ;
 TYPE_2__* stub2 (int ,int ) ;

__attribute__((used)) static VOID
UpdateRefreshFrequencyList(PDESKMONITOR This)
{
    PDEVMODEW lpCurrentMode, lpMode;
    TCHAR szBuffer[64];
    DWORD dwIndex;
    INT i;
    BOOL bHasDef = FALSE;
    BOOL bAdded = FALSE;


    SendDlgItemMessage(This->hwndDlg,
                       IDC_REFRESHRATE,
                       CB_RESETCONTENT,
                       0,
                       0);

    lpCurrentMode = This->DeskExtInterface->GetCurrentMode(This->DeskExtInterface->Context);
    dwIndex = 0;

    do
    {
        lpMode = This->DeskExtInterface->EnumAllModes(This->DeskExtInterface->Context,
                                                      dwIndex++);
        if (lpMode != ((void*)0) &&
            lpMode->dmBitsPerPel == lpCurrentMode->dmBitsPerPel &&
            lpMode->dmPelsWidth == lpCurrentMode->dmPelsWidth &&
            lpMode->dmPelsHeight == lpCurrentMode->dmPelsHeight)
        {


            if (lpMode->dmDisplayFrequency <= 1)
            {

                if (bHasDef)
                    continue;

                bHasDef = TRUE;

                if (!LoadString(hInstance,
                                IDS_USEDEFFRQUENCY,
                                szBuffer,
                                sizeof(szBuffer) / sizeof(szBuffer[0])))
                {
                    szBuffer[0] = TEXT('\0');
                }
            }
            else
            {
                TCHAR szFmt[64];

                if (!LoadString(hInstance,
                                IDS_FREQFMT,
                                szFmt,
                                sizeof(szFmt) / sizeof(szFmt[0])))
                {
                    szFmt[0] = TEXT('\0');
                }

                _sntprintf(szBuffer,
                           sizeof(szBuffer) / sizeof(szBuffer[0]),
                           szFmt,
                           lpMode->dmDisplayFrequency);
            }

            i = (INT)SendDlgItemMessage(This->hwndDlg,
                                        IDC_REFRESHRATE,
                                        CB_ADDSTRING,
                                        0,
                                        (LPARAM)szBuffer);
            if (i >= 0)
            {
                bAdded = TRUE;

                SendDlgItemMessage(This->hwndDlg,
                                   IDC_REFRESHRATE,
                                   CB_SETITEMDATA,
                                   (WPARAM)i,
                                   (LPARAM)lpMode);

                if (lpMode->dmDisplayFrequency == lpCurrentMode->dmDisplayFrequency)
                {
                    SendDlgItemMessage(This->hwndDlg,
                                       IDC_REFRESHRATE,
                                       CB_SETCURSEL,
                                       (WPARAM)i,
                                       0);
                }
            }
        }

    } while (lpMode != ((void*)0));

    EnableWindow(GetDlgItem(This->hwndDlg,
                            IDS_MONITORSETTINGSGROUP),
                 bAdded);
    EnableWindow(GetDlgItem(This->hwndDlg,
                            IDS_REFRESHRATELABEL),
                 bAdded);
    EnableWindow(GetDlgItem(This->hwndDlg,
                            IDC_REFRESHRATE),
                 bAdded);

    GetPruningSettings(This);
}
