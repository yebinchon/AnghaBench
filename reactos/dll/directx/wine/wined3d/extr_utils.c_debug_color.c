
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_color {int a; int b; int g; int r; } ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ) ;

const char *debug_color(const struct wined3d_color *color)
{
    if (!color)
        return "(null)";
    return wine_dbg_sprintf("{%.8e, %.8e, %.8e, %.8e}",
            color->r, color->g, color->b, color->a);
}
