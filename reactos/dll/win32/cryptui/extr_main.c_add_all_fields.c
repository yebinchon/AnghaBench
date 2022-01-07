
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct detail_data {int dummy; } ;
typedef int HWND ;


 int add_all_extensions (int ,struct detail_data*) ;
 int add_properties (int ,struct detail_data*) ;
 int add_v1_fields (int ,struct detail_data*) ;

__attribute__((used)) static void add_all_fields(HWND hwnd, struct detail_data *data)
{
    add_v1_fields(hwnd, data);
    add_all_extensions(hwnd, data);
    add_properties(hwnd, data);
}
