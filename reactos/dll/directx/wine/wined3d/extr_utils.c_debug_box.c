
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_box {int back; int bottom; int right; int front; int top; int left; } ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ,int ,int ) ;

const char *debug_box(const struct wined3d_box *box)
{
    if (!box)
        return "(null)";
    return wine_dbg_sprintf("(%u, %u, %u)-(%u, %u, %u)",
            box->left, box->top, box->front,
            box->right, box->bottom, box->back);
}
