
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
struct TYPE_7__ {int wFlags; } ;
struct TYPE_6__ {int code; int hwndFrom; int idFrom; } ;
struct TYPE_5__ {int iItem; scalar_t__ lParam; int mask; int member_0; } ;
typedef TYPE_1__ LVITEM ;
typedef TYPE_2__* LPNMHDR ;
typedef scalar_t__ LPARAM ;
typedef int INT ;
typedef TYPE_3__ INPUT_LIST_NODE ;
typedef int HWND ;


 int EWX_FORCE ;
 int EWX_REBOOT ;
 int EnableProcessPrivileges (int ,int ) ;
 int EnableWindow (int ,int ) ;
 int ExitWindowsEx (int,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_KEYLAYOUT_LIST ;
 int IDC_SET_DEFAULT ;
 int IDS_LANGUAGE ;
 int IDS_REBOOT_NOW ;
 int IDYES ;
 int INPUT_LIST_NODE_FLAG_DEFAULT ;
 int InputList_Process () ;
 int LVIF_PARAM ;
 int LVNI_SELECTED ;
 int ListView_GetItem (int ,TYPE_1__*) ;
 int ListView_GetNextItem (int ,int,int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MB_ICONINFORMATION ;
 int MB_YESNOCANCEL ;
 int MessageBoxW (int ,int *,int *,int) ;


 int SE_SHUTDOWN_NAME ;
 int SetControlsState (int ,int ) ;
 int TRUE ;
 int _countof (int *) ;
 int hApplet ;

__attribute__((used)) static VOID
OnNotifySettingsPage(HWND hwndDlg, LPARAM lParam)
{
    LPNMHDR header;

    header = (LPNMHDR)lParam;

    switch (header->code)
    {
        case 129:
        {
            if (header->idFrom == IDC_KEYLAYOUT_LIST)
            {
                INT iSelected = ListView_GetNextItem(header->hwndFrom, -1, LVNI_SELECTED);

                if (iSelected != -1)
                {
                    LVITEM item = { 0 };

                    SetControlsState(hwndDlg, TRUE);

                    item.mask = LVIF_PARAM;
                    item.iItem = iSelected;

                    if (ListView_GetItem(header->hwndFrom, &item) != FALSE)
                    {
                        INPUT_LIST_NODE *pInput;

                        pInput = (INPUT_LIST_NODE*) item.lParam;

                        if (pInput != ((void*)0) && pInput->wFlags & INPUT_LIST_NODE_FLAG_DEFAULT)
                        {
                            EnableWindow(GetDlgItem(hwndDlg, IDC_SET_DEFAULT), FALSE);
                        }
                    }
                }
                else
                {
                    SetControlsState(hwndDlg, FALSE);
                }
            }
        }
        break;

        case 128:
        {

            if (InputList_Process())
            {

                WCHAR szNeedsReboot[128], szLanguage[64];
                LoadStringW(hApplet, IDS_REBOOT_NOW, szNeedsReboot, _countof(szNeedsReboot));
                LoadStringW(hApplet, IDS_LANGUAGE, szLanguage, _countof(szLanguage));

                if (MessageBoxW(hwndDlg, szNeedsReboot, szLanguage,
                                MB_ICONINFORMATION | MB_YESNOCANCEL) == IDYES)
                {
                    EnableProcessPrivileges(SE_SHUTDOWN_NAME, TRUE);
                    ExitWindowsEx(EWX_REBOOT | EWX_FORCE, 0);
                }
            }
        }
        break;
    }
}
