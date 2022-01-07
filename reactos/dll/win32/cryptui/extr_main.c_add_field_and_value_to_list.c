
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct detail_data {int dummy; } ;
typedef int create_detailed_value_func ;
struct TYPE_2__ {int mask; int iItem; int iSubItem; void* pszText; scalar_t__ lParam; } ;
typedef TYPE_1__ LVITEMW ;
typedef void* LPWSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;


 int LVIF_PARAM ;
 int LVIF_TEXT ;
 int LVM_GETITEMCOUNT ;
 int LVM_INSERTITEMW ;
 int LVM_SETITEMTEXTW ;
 int SendMessageW (int ,int ,int,scalar_t__) ;
 int add_field_value_data (struct detail_data*,int ,void*) ;

__attribute__((used)) static void add_field_and_value_to_list(HWND hwnd, struct detail_data *data,
 LPWSTR field, LPWSTR value, create_detailed_value_func create, void *param)
{
    LVITEMW item;
    int iItem = SendMessageW(hwnd, LVM_GETITEMCOUNT, 0, 0);

    item.mask = LVIF_TEXT | LVIF_PARAM;
    item.iItem = iItem;
    item.iSubItem = 0;
    item.pszText = field;
    item.lParam = (LPARAM)data;
    SendMessageW(hwnd, LVM_INSERTITEMW, 0, (LPARAM)&item);
    if (value)
    {
        item.pszText = value;
        item.iSubItem = 1;
        SendMessageW(hwnd, LVM_SETITEMTEXTW, iItem, (LPARAM)&item);
    }
    add_field_value_data(data, create, param);
}
