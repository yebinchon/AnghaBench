
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_format {scalar_t__ id; } ;
typedef int BOOL ;


 scalar_t__ WINED3DFMT_X24_TYPELESS_G8_UINT ;
 scalar_t__ WINED3DFMT_X32_TYPELESS_G8X24_UINT ;

__attribute__((used)) static BOOL is_stencil_view_format(const struct wined3d_format *format)
{
    return format->id == WINED3DFMT_X24_TYPELESS_G8_UINT
            || format->id == WINED3DFMT_X32_TYPELESS_G8X24_UINT;
}
