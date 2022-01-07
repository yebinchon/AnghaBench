
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ThemeActive; } ;
struct TYPE_4__ {int Scheme; scalar_t__ hdcThemePreview; TYPE_2__ ActiveTheme; } ;
typedef int RECT ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_1__ GLOBALS ;


 scalar_t__ DrawThemePreview (scalar_t__,int *,TYPE_2__*,int *) ;
 int GetClientRect (int ,int *) ;
 int GetDlgItem (int ,int ) ;
 int IDC_APPEARANCE_PREVIEW ;
 int PVM_SET_HDC_PREVIEW ;
 int PVM_UPDATETHEME ;
 int SendDlgItemMessage (int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
AppearancePage_UpdateThemePreview(HWND hwndDlg, GLOBALS *g)
{
    if (g->ActiveTheme.ThemeActive)
    {
        RECT rcWindow;

        GetClientRect(GetDlgItem(hwndDlg, IDC_APPEARANCE_PREVIEW), &rcWindow);
        if (DrawThemePreview(g->hdcThemePreview, &g->Scheme, &g->ActiveTheme, &rcWindow))
        {
            SendDlgItemMessage(hwndDlg, IDC_APPEARANCE_PREVIEW, PVM_SET_HDC_PREVIEW, 0, (LPARAM)g->hdcThemePreview);
            return;
        }
    }

    SendDlgItemMessage(hwndDlg, IDC_APPEARANCE_PREVIEW, PVM_UPDATETHEME, 0, (LPARAM)&g->Scheme);
    SendDlgItemMessage(hwndDlg, IDC_APPEARANCE_PREVIEW, PVM_SET_HDC_PREVIEW, 0, 0);
}
