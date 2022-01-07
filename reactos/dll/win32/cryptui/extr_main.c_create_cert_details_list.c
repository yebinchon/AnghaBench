
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct detail_data {int dummy; } ;
typedef int HWND ;


 int create_listview_columns (int ) ;
 int create_show_list (int ,struct detail_data*) ;
 int set_fields_selection (int ,struct detail_data*,int ) ;

__attribute__((used)) static void create_cert_details_list(HWND hwnd, struct detail_data *data)
{
    create_show_list(hwnd, data);
    create_listview_columns(hwnd);
    set_fields_selection(hwnd, data, 0);
}
