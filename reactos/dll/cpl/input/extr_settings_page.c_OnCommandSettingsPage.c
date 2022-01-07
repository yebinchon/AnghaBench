
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WPARAM ;
typedef int VOID ;
struct TYPE_3__ {scalar_t__ lParam; void* iItem; void* mask; int member_0; } ;
typedef TYPE_1__ LVITEM ;
typedef int INPUT_LIST_NODE ;
typedef int * HWND ;


 int AddDialogProc ;
 int DialogBoxParamW (int ,int ,int *,int ,scalar_t__) ;
 int DialogBoxW (int ,int ,int *,int ) ;
 int EditDialogProc ;
 int FALSE ;
 int * GetDlgItem (int *,int ) ;
 int GetParent (int *) ;

 int IDC_KEYLAYOUT_LIST ;




 int IDD_ADD ;
 int IDD_INPUT_LANG_PROP ;
 int IDD_KEYSETTINGS ;
 int IDOK ;
 int InputList_Remove (int *) ;
 int InputList_SetDefault (int *) ;
 int KeySettingsDialogProc ;
 int LOWORD (int ) ;
 void* LVIF_PARAM ;
 int LVNI_SELECTED ;
 int ListView_GetItem (int *,TYPE_1__*) ;
 void* ListView_GetNextItem (int *,int,int ) ;
 int MAKEINTRESOURCEW (int ) ;
 int PropSheet_Changed (int ,int *) ;
 int UpdateInputListView (int *) ;
 int hApplet ;

VOID
OnCommandSettingsPage(HWND hwndDlg, WPARAM wParam)
{
    switch (LOWORD(wParam))
    {
        case 132:
        {
            if (DialogBoxW(hApplet,
                           MAKEINTRESOURCEW(IDD_ADD),
                           hwndDlg,
                           AddDialogProc) == IDOK)
            {
                UpdateInputListView(GetDlgItem(hwndDlg, IDC_KEYLAYOUT_LIST));
                PropSheet_Changed(GetParent(hwndDlg), hwndDlg);
            }
        }
        break;

        case 129:
        {
            HWND hwndList;

            hwndList = GetDlgItem(hwndDlg, IDC_KEYLAYOUT_LIST);

            if (hwndList != ((void*)0))
            {
                LVITEM item = { 0 };

                item.mask = LVIF_PARAM;
                item.iItem = ListView_GetNextItem(hwndList, -1, LVNI_SELECTED);

                if (ListView_GetItem(hwndList, &item) != FALSE)
                {
                    InputList_Remove((INPUT_LIST_NODE*) item.lParam);
                    UpdateInputListView(hwndList);
                    PropSheet_Changed(GetParent(hwndDlg), hwndDlg);
                }
            }
        }
        break;

        case 130:
        {
            HWND hwndList;

            hwndList = GetDlgItem(hwndDlg, IDC_KEYLAYOUT_LIST);

            if (hwndList != ((void*)0))
            {
                LVITEM item = { 0 };

                item.mask = LVIF_PARAM;
                item.iItem = ListView_GetNextItem(hwndList, -1, LVNI_SELECTED);

                if (ListView_GetItem(hwndList, &item) != FALSE)
                {
                    if (DialogBoxParamW(hApplet,
                                        MAKEINTRESOURCEW(IDD_INPUT_LANG_PROP),
                                        hwndDlg,
                                        EditDialogProc,
                                        item.lParam) == IDOK)
                    {
                        UpdateInputListView(hwndList);
                        PropSheet_Changed(GetParent(hwndDlg), hwndDlg);
                    }
                }
            }
        }
        break;

        case 128:
        {
            HWND hwndList;

            hwndList = GetDlgItem(hwndDlg, IDC_KEYLAYOUT_LIST);

            if (hwndList != ((void*)0))
            {
                LVITEM item = { 0 };

                item.mask = LVIF_PARAM;
                item.iItem = ListView_GetNextItem(hwndList, -1, LVNI_SELECTED);

                if (ListView_GetItem(hwndList, &item) != FALSE)
                {
                    InputList_SetDefault((INPUT_LIST_NODE*) item.lParam);
                    UpdateInputListView(hwndList);
                    PropSheet_Changed(GetParent(hwndDlg), hwndDlg);
                }
            }
        }
        break;

        case 131:
        {
            DialogBoxW(hApplet,
                       MAKEINTRESOURCEW(IDD_KEYSETTINGS),
                       hwndDlg,
                       KeySettingsDialogProc);
        }
        break;
    }
}
