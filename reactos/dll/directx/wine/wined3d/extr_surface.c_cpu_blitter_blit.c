
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int map_binding; } ;
struct wined3d_texture {TYPE_2__ resource; TYPE_1__* sub_resources; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_color_key {int dummy; } ;
struct wined3d_box {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct wined3d_blt_fx {struct wined3d_color_key src_color_key; } ;
struct wined3d_blitter {int dummy; } ;
typedef int fx ;
typedef enum wined3d_texture_filter_type { ____Placeholder_wined3d_texture_filter_type } wined3d_texture_filter_type ;
typedef enum wined3d_blit_op { ____Placeholder_wined3d_blit_op } wined3d_blit_op ;
struct TYPE_8__ {int bottom; int right; int top; int left; } ;
struct TYPE_6__ {int locations; } ;
typedef TYPE_3__ RECT ;
typedef int DWORD ;


 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;





 int WINED3D_BLT_ALPHA_TEST ;
 int WINED3D_BLT_FX ;
 int WINED3D_BLT_SRC_CKEY_OVERRIDE ;
 int memset (struct wined3d_blt_fx*,int ,int) ;
 int surface_cpu_blt (struct wined3d_texture*,unsigned int,struct wined3d_box*,struct wined3d_texture*,unsigned int,struct wined3d_box*,int,struct wined3d_blt_fx*,int) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int) ;

__attribute__((used)) static DWORD cpu_blitter_blit(struct wined3d_blitter *blitter, enum wined3d_blit_op op,
        struct wined3d_context *context, struct wined3d_surface *src_surface, DWORD src_location,
        const RECT *src_rect, struct wined3d_surface *dst_surface, DWORD dst_location, const RECT *dst_rect,
        const struct wined3d_color_key *color_key, enum wined3d_texture_filter_type filter)
{
    struct wined3d_box dst_box = {dst_rect->left, dst_rect->top, dst_rect->right, dst_rect->bottom, 0, 1};
    struct wined3d_box src_box = {src_rect->left, src_rect->top, src_rect->right, src_rect->bottom, 0, 1};
    unsigned int dst_sub_resource_idx = surface_get_sub_resource_idx(dst_surface);
    unsigned int src_sub_resource_idx = surface_get_sub_resource_idx(src_surface);
    struct wined3d_texture *dst_texture = dst_surface->container;
    struct wined3d_texture *src_texture = src_surface->container;
    struct wined3d_blt_fx fx;
    DWORD flags = 0;

    memset(&fx, 0, sizeof(fx));
    switch (op)
    {
        case 132:
        case 129:
        case 128:
            break;
        case 131:
            flags |= WINED3D_BLT_ALPHA_TEST;
            break;
        case 130:
            flags |= WINED3D_BLT_SRC_CKEY_OVERRIDE | WINED3D_BLT_FX;
            fx.src_color_key = *color_key;
            break;
        default:
            FIXME("Unhandled op %#x.\n", op);
            break;
    }

    if (FAILED(surface_cpu_blt(dst_texture, dst_sub_resource_idx, &dst_box,
            src_texture, src_sub_resource_idx, &src_box, flags, &fx, filter)))
        ERR("Failed to blit.\n");
    wined3d_texture_load_location(dst_texture, dst_sub_resource_idx, context, dst_location);

    return dst_location | (dst_texture->sub_resources[dst_sub_resource_idx].locations
            & dst_texture->resource.map_binding);
}
