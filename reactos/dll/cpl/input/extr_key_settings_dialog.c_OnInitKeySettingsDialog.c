
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int column ;
typedef int VOID ;
struct TYPE_6__ {int dwAttributes; } ;
struct TYPE_5__ {int mask; int iSubItem; char* pszText; int cx; int fmt; } ;
typedef TYPE_1__ LV_COLUMN ;
typedef int HWND ;


 int BST_CHECKED ;
 int BST_UNCHECKED ;
 int CheckDlgButton (int ,int ,int ) ;
 int GetDlgItem (int ,int ) ;
 int IDC_KEY_LISTVIEW ;
 int IDC_PRESS_CL_KEY_RB ;
 int IDC_PRESS_SHIFT_KEY_RB ;
 int KLF_SHIFTLOCK ;
 int LVCFMT_LEFT ;
 int LVCFMT_RIGHT ;
 int LVCF_FMT ;
 int LVCF_SUBITEM ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int LVS_EX_FULLROWSELECT ;
 int ListView_InsertColumn (int ,int,TYPE_1__*) ;
 int ListView_SetExtendedListViewStyle (int ,int ) ;
 int ReadKeysSettings () ;
 int UpdateKeySettingsListView (int ) ;
 int ZeroMemory (TYPE_1__*,int) ;
 TYPE_2__ _KeySettings ;

__attribute__((used)) static VOID
OnInitKeySettingsDialog(HWND hwndDlg)
{
    LV_COLUMN column;
    HWND hwndList;

    ReadKeysSettings();

    if (_KeySettings.dwAttributes & KLF_SHIFTLOCK)
    {
        CheckDlgButton(hwndDlg, IDC_PRESS_SHIFT_KEY_RB, BST_CHECKED);
        CheckDlgButton(hwndDlg, IDC_PRESS_CL_KEY_RB, BST_UNCHECKED);
    }
    else
    {
        CheckDlgButton(hwndDlg, IDC_PRESS_SHIFT_KEY_RB, BST_UNCHECKED);
        CheckDlgButton(hwndDlg, IDC_PRESS_CL_KEY_RB, BST_CHECKED);
    }

    hwndList = GetDlgItem(hwndDlg, IDC_KEY_LISTVIEW);

    ListView_SetExtendedListViewStyle(hwndList, LVS_EX_FULLROWSELECT);

    ZeroMemory(&column, sizeof(column));

    column.mask = LVCF_FMT | LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;

    column.fmt = LVCFMT_LEFT;
    column.iSubItem = 0;
    column.pszText = L"";
    column.cx = 210;
    ListView_InsertColumn(hwndList, 0, &column);

    column.fmt = LVCFMT_RIGHT;
    column.cx = 145;
    column.iSubItem = 1;
    column.pszText = L"";
    ListView_InsertColumn(hwndList, 1, &column);

    UpdateKeySettingsListView(hwndList);
}
