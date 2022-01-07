
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_format {scalar_t__ id; scalar_t__ typeless_id; } ;
typedef int BOOL ;


 scalar_t__ WINED3DFMT_UNKNOWN ;

__attribute__((used)) static inline BOOL wined3d_format_is_typeless(const struct wined3d_format *format)
{
    return format->id == format->typeless_id && format->id != WINED3DFMT_UNKNOWN;
}
