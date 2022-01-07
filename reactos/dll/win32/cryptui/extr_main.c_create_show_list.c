
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct detail_data {int dummy; } ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ WCHAR ;
typedef int LPARAM ;
typedef int HWND ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CB_INSERTSTRING ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int GetDlgItem (int ,int ) ;
 int IDC_DETAIL_SELECT ;
 int LoadStringW (int ,int ,TYPE_1__*,int) ;
 int MAX_STRING_LEN ;
 int SendMessageW (int ,int ,int,int ) ;
 int hInstance ;
 TYPE_1__* listItems ;

__attribute__((used)) static void create_show_list(HWND hwnd, struct detail_data *data)
{
    HWND cb = GetDlgItem(hwnd, IDC_DETAIL_SELECT);
    WCHAR buf[MAX_STRING_LEN];
    int i;

    for (i = 0; i < ARRAY_SIZE(listItems); i++)
    {
        int index;

        LoadStringW(hInstance, listItems[i].id, buf, ARRAY_SIZE(buf));
        index = SendMessageW(cb, CB_INSERTSTRING, -1, (LPARAM)buf);
        SendMessageW(cb, CB_SETITEMDATA, index, (LPARAM)data);
    }
    SendMessageW(cb, CB_SETCURSEL, 0, 0);
}
