
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int mask; int cx; int * pszText; } ;
struct TYPE_4__ {int right; int left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__ LVCOLUMNW ;
typedef int LPARAM ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int GetDlgItem (int ,int ) ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IDC_DETAIL_LIST ;
 int IDS_FIELD ;
 int IDS_VALUE ;
 int LVCF_TEXT ;
 int LVCF_WIDTH ;
 int LVM_INSERTCOLUMNW ;
 int LVM_SETEXTENDEDLISTVIEWSTYLE ;
 int LVS_EX_FULLROWSELECT ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAX_STRING_LEN ;
 int SendMessageW (int ,int ,int,int ) ;
 int hInstance ;

__attribute__((used)) static void create_listview_columns(HWND hwnd)
{
    HWND lv = GetDlgItem(hwnd, IDC_DETAIL_LIST);
    RECT rc;
    WCHAR buf[MAX_STRING_LEN];
    LVCOLUMNW column;

    SendMessageW(lv, LVM_SETEXTENDEDLISTVIEWSTYLE, 0, LVS_EX_FULLROWSELECT);
    GetWindowRect(lv, &rc);
    LoadStringW(hInstance, IDS_FIELD, buf, ARRAY_SIZE(buf));
    column.mask = LVCF_WIDTH | LVCF_TEXT;
    column.cx = (rc.right - rc.left) / 2 - 2;
    column.pszText = buf;
    SendMessageW(lv, LVM_INSERTCOLUMNW, 0, (LPARAM)&column);
    LoadStringW(hInstance, IDS_VALUE, buf, ARRAY_SIZE(buf));
    SendMessageW(lv, LVM_INSERTCOLUMNW, 1, (LPARAM)&column);
}
