
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_4__ {int dwFlags; int iWindowsEffect; } ;
struct TYPE_5__ {scalar_t__ bShowSounds; TYPE_1__ ssSoundSentry; } ;
typedef int TCHAR ;
typedef TYPE_2__* PGLOBAL_DATA ;
typedef int LPARAM ;
typedef int HWND ;


 int BST_CHECKED ;
 int CB_ADDSTRING ;
 int CB_SETCURSEL ;
 int CheckDlgButton (int ,int ,int ) ;
 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_SENTRY_BOX ;
 int IDC_SENTRY_COMBO ;
 int IDC_SENTRY_TEXT ;
 int IDC_SSHOW_BOX ;
 scalar_t__ IDS_SENTRY_NONE ;
 int LoadString (int ,scalar_t__,int *,int) ;
 int SSF_AVAILABLE ;
 int SSF_SOUNDSENTRYON ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;
 int hApplet ;

__attribute__((used)) static VOID
OnInitDialog(HWND hwndDlg, PGLOBAL_DATA pGlobalData)
{
    TCHAR szBuffer[256];
    UINT i;


    for (i = 0; i < 4; i++)
    {
        LoadString(hApplet, IDS_SENTRY_NONE + i, szBuffer, 256);
        SendDlgItemMessage(hwndDlg, IDC_SENTRY_COMBO, CB_ADDSTRING, 0, (LPARAM)szBuffer);
    }


    SendDlgItemMessage(hwndDlg, IDC_SENTRY_COMBO, CB_SETCURSEL, pGlobalData->ssSoundSentry.iWindowsEffect, 0);


    if (!(pGlobalData->ssSoundSentry.dwFlags & SSF_AVAILABLE))
    {
        EnableWindow(GetDlgItem(hwndDlg, IDC_SENTRY_BOX), FALSE);
        EnableWindow(GetDlgItem(hwndDlg, IDC_SENTRY_TEXT), FALSE);
        EnableWindow(GetDlgItem(hwndDlg, IDC_SENTRY_COMBO), FALSE);
    }
    else
    {
        if (pGlobalData->ssSoundSentry.dwFlags & SSF_SOUNDSENTRYON)
        {
            CheckDlgButton(hwndDlg, IDC_SENTRY_BOX, BST_CHECKED);
        }
        else
        {
            EnableWindow(GetDlgItem(hwndDlg, IDC_SENTRY_TEXT), FALSE);
            EnableWindow(GetDlgItem(hwndDlg, IDC_SENTRY_COMBO), FALSE);
        }
    }


    if (pGlobalData->bShowSounds)
        CheckDlgButton(hwndDlg, IDC_SSHOW_BOX, BST_CHECKED);
}
