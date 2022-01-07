
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int format; int device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_2__ resource; TYPE_1__* sub_resources; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct wined3d_bo_address {int dummy; } ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ right; scalar_t__ left; scalar_t__ bottom; scalar_t__ top; } ;
struct TYPE_7__ {int locations; } ;
typedef TYPE_3__ RECT ;
typedef int POINT ;
typedef int HRESULT ;


 int FALSE ;
 int TRACE (char*,struct wined3d_surface*,int ,struct wined3d_surface*,int ) ;
 int WINED3D_LOCATION_TEXTURE_RGB ;
 int WINED3D_OK ;
 struct wined3d_context* context_acquire (int ,int *,int ) ;
 int context_release (struct wined3d_context*) ;
 unsigned int surface_get_sub_resource_idx (struct wined3d_surface*) ;
 int wine_dbgstr_point (int const*) ;
 int wine_dbgstr_rect (TYPE_3__ const*) ;
 int wined3d_const_bo_address (struct wined3d_bo_address*) ;
 int wined3d_surface_upload_data (struct wined3d_surface*,struct wined3d_gl_info const*,int ,TYPE_3__ const*,unsigned int,int const*,int ,int ) ;
 int wined3d_texture_bind_and_dirtify (struct wined3d_texture*,struct wined3d_context*,int ) ;
 scalar_t__ wined3d_texture_get_level_height (struct wined3d_texture*,unsigned int) ;
 scalar_t__ wined3d_texture_get_level_width (struct wined3d_texture*,unsigned int) ;
 int wined3d_texture_get_memory (struct wined3d_texture*,unsigned int,struct wined3d_bo_address*,int ) ;
 int wined3d_texture_get_pitch (struct wined3d_texture*,unsigned int,unsigned int*,unsigned int*) ;
 int wined3d_texture_invalidate_location (struct wined3d_texture*,unsigned int,int ) ;
 int wined3d_texture_load_location (struct wined3d_texture*,unsigned int,struct wined3d_context*,int ) ;
 int wined3d_texture_prepare_texture (struct wined3d_texture*,struct wined3d_context*,int ) ;
 int wined3d_texture_validate_location (struct wined3d_texture*,unsigned int,int ) ;

__attribute__((used)) static HRESULT surface_upload_from_surface(struct wined3d_surface *dst_surface, const POINT *dst_point,
        struct wined3d_surface *src_surface, const RECT *src_rect)
{
    unsigned int src_sub_resource_idx = surface_get_sub_resource_idx(src_surface);
    unsigned int dst_sub_resource_idx = surface_get_sub_resource_idx(dst_surface);
    struct wined3d_texture *src_texture = src_surface->container;
    struct wined3d_texture *dst_texture = dst_surface->container;
    unsigned int src_row_pitch, src_slice_pitch;
    const struct wined3d_gl_info *gl_info;
    unsigned int src_level, dst_level;
    struct wined3d_context *context;
    struct wined3d_bo_address data;
    UINT update_w, update_h;

    TRACE("dst_surface %p, dst_point %s, src_surface %p, src_rect %s.\n",
            dst_surface, wine_dbgstr_point(dst_point),
            src_surface, wine_dbgstr_rect(src_rect));

    context = context_acquire(dst_texture->resource.device, ((void*)0), 0);
    gl_info = context->gl_info;




    update_w = src_rect->right - src_rect->left;
    update_h = src_rect->bottom - src_rect->top;
    dst_level = dst_sub_resource_idx % dst_texture->level_count;
    if (update_w == wined3d_texture_get_level_width(dst_texture, dst_level)
            && update_h == wined3d_texture_get_level_height(dst_texture, dst_level))
        wined3d_texture_prepare_texture(dst_texture, context, FALSE);
    else
        wined3d_texture_load_location(dst_texture, dst_sub_resource_idx, context, WINED3D_LOCATION_TEXTURE_RGB);
    wined3d_texture_bind_and_dirtify(dst_texture, context, FALSE);

    src_level = src_sub_resource_idx % src_texture->level_count;
    wined3d_texture_get_memory(src_texture, src_sub_resource_idx, &data,
            src_texture->sub_resources[src_sub_resource_idx].locations);
    wined3d_texture_get_pitch(src_texture, src_level, &src_row_pitch, &src_slice_pitch);

    wined3d_surface_upload_data(dst_surface, gl_info, src_texture->resource.format, src_rect,
            src_row_pitch, dst_point, FALSE, wined3d_const_bo_address(&data));

    context_release(context);

    wined3d_texture_validate_location(dst_texture, dst_sub_resource_idx, WINED3D_LOCATION_TEXTURE_RGB);
    wined3d_texture_invalidate_location(dst_texture, dst_sub_resource_idx, ~WINED3D_LOCATION_TEXTURE_RGB);

    return WINED3D_OK;
}
