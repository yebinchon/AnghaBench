
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_uvec4 {int w; int z; int y; int x; } ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ) ;

const char *debug_uvec4(const struct wined3d_uvec4 *v)
{
    if (!v)
        return "(null)";
    return wine_dbg_sprintf("{%u, %u, %u, %u}",
            v->x, v->y, v->z, v->w);
}
