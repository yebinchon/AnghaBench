
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_ivec4 {int w; int z; int y; int x; } ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ) ;

const char *debug_ivec4(const struct wined3d_ivec4 *v)
{
    if (!v)
        return "(null)";
    return wine_dbg_sprintf("{%d, %d, %d, %d}",
            v->x, v->y, v->z, v->w);
}
