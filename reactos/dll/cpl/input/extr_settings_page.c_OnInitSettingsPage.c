
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int column ;
typedef int WCHAR ;
typedef int VOID ;
struct TYPE_4__ {int mask; int iSubItem; int cx; int * pszText; int fmt; } ;
typedef TYPE_1__ LV_COLUMN ;
typedef int * HWND ;
typedef int * HIMAGELIST ;


 int ARRAYSIZE (int *) ;
 int FALSE ;
 int * GetDlgItem (int *,int ) ;
 int GetSystemMetrics (int ) ;
 int IDC_KEYLAYOUT_LIST ;
 int IDS_LANGUAGE ;
 int IDS_LAYOUT ;
 int ILC_COLOR8 ;
 int ILC_MASK ;
 int * ImageList_Create (int,int,int,int ,int ) ;
 int ImageList_Destroy (int *) ;
 int InputList_Create () ;
 int LVCFMT_LEFT ;
 int LVCFMT_RIGHT ;
 int LVCF_FMT ;
 int LVCF_SUBITEM ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int LVSIL_SMALL ;
 int LVS_EX_FULLROWSELECT ;
 int LayoutList_Create () ;
 int ListView_InsertColumn (int *,int,TYPE_1__*) ;
 int ListView_SetExtendedListViewStyle (int *,int ) ;
 int * ListView_SetImageList (int *,int *,int ) ;
 int LoadStringW (int ,int ,int *,int ) ;
 int LocaleList_Create () ;
 int MAX_STR_LEN ;
 int SM_CXSMICON ;
 int SM_CYSMICON ;
 int SetControlsState (int *,int ) ;
 int UpdateInputListView (int *) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int hApplet ;

__attribute__((used)) static VOID
OnInitSettingsPage(HWND hwndDlg)
{
    HWND hwndInputList;

    LayoutList_Create();
    LocaleList_Create();
    InputList_Create();

    hwndInputList = GetDlgItem(hwndDlg, IDC_KEYLAYOUT_LIST);

    if (hwndInputList != ((void*)0))
    {
        WCHAR szBuffer[MAX_STR_LEN];
        HIMAGELIST hLayoutImageList;
        LV_COLUMN column;

        ListView_SetExtendedListViewStyle(hwndInputList, LVS_EX_FULLROWSELECT);

        ZeroMemory(&column, sizeof(column));

        column.mask = LVCF_FMT | LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;

        LoadStringW(hApplet, IDS_LANGUAGE, szBuffer, ARRAYSIZE(szBuffer));
        column.fmt = LVCFMT_LEFT;
        column.iSubItem = 0;
        column.pszText = szBuffer;
        column.cx = 175;
        ListView_InsertColumn(hwndInputList, 0, &column);

        LoadStringW(hApplet, IDS_LAYOUT, szBuffer, ARRAYSIZE(szBuffer));
        column.fmt = LVCFMT_RIGHT;
        column.cx = 155;
        column.iSubItem = 1;
        column.pszText = szBuffer;
        ListView_InsertColumn(hwndInputList, 1, &column);

        hLayoutImageList = ImageList_Create(GetSystemMetrics(SM_CXSMICON) * 2,
                                            GetSystemMetrics(SM_CYSMICON),
                                            ILC_COLOR8 | ILC_MASK, 0, 0);
        if (hLayoutImageList != ((void*)0))
        {
            HIMAGELIST hOldImagelist = ListView_SetImageList(hwndInputList, hLayoutImageList, LVSIL_SMALL);
            ImageList_Destroy(hOldImagelist);
        }

        UpdateInputListView(hwndInputList);
    }

    SetControlsState(hwndDlg, FALSE);
}
