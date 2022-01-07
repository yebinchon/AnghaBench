
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_texture {int dummy; } ;
struct TYPE_3__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 unsigned int abs (scalar_t__) ;
 unsigned int wined3d_texture_get_level_height (struct wined3d_texture const*,unsigned int) ;
 unsigned int wined3d_texture_get_level_width (struct wined3d_texture const*,unsigned int) ;

__attribute__((used)) static BOOL texture2d_is_full_rect(const struct wined3d_texture *texture, unsigned int level, const RECT *r)
{
    unsigned int t;

    t = wined3d_texture_get_level_width(texture, level);
    if ((r->left && r->right) || abs(r->right - r->left) != t)
        return FALSE;
    t = wined3d_texture_get_level_height(texture, level);
    if ((r->top && r->bottom) || abs(r->bottom - r->top) != t)
        return FALSE;
    return TRUE;
}
