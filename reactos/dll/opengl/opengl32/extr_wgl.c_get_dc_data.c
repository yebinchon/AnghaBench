
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wgl_dc_data {int dummy; } ;
typedef int HDC ;


 struct wgl_dc_data* get_dc_data_ex (int ,int ,int ,int *) ;

__attribute__((used)) static
struct wgl_dc_data*
get_dc_data(HDC hdc)
{
    return get_dc_data_ex(hdc, 0, 0, ((void*)0));
}
