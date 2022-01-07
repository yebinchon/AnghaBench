
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct detail_data {int dummy; } ;
typedef int create_detailed_value_func ;
typedef int WCHAR ;
typedef int LPWSTR ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int LoadStringW (int ,int,int *,int ) ;
 int MAX_STRING_LEN ;
 int add_field_and_value_to_list (int ,struct detail_data*,int *,int ,int ,void*) ;
 int hInstance ;

__attribute__((used)) static void add_string_id_and_value_to_list(HWND hwnd, struct detail_data *data,
 int id, LPWSTR value, create_detailed_value_func create, void *param)
{
    WCHAR buf[MAX_STRING_LEN];

    LoadStringW(hInstance, id, buf, ARRAY_SIZE(buf));
    add_field_and_value_to_list(hwnd, data, buf, value, create, param);
}
