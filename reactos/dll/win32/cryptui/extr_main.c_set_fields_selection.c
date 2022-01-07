
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct detail_data {int dummy; } ;
struct TYPE_3__ {int (* add ) (int ,struct detail_data*) ;} ;
typedef int HWND ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_DETAIL_LIST ;
 int LVM_DELETEALLITEMS ;
 int SendMessageW (int ,int ,int ,int ) ;
 TYPE_1__* listItems ;
 int stub1 (int ,struct detail_data*) ;

__attribute__((used)) static void set_fields_selection(HWND hwnd, struct detail_data *data, int sel)
{
    HWND list = GetDlgItem(hwnd, IDC_DETAIL_LIST);

    if (sel >= 0 && sel < ARRAY_SIZE(listItems))
    {
        SendMessageW(list, LVM_DELETEALLITEMS, 0, 0);
        listItems[sel].add(list, data);
    }
}
