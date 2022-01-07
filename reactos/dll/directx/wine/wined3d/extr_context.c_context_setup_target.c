
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_8__ {int format_flags; struct wined3d_format* format; } ;
struct wined3d_texture {TYPE_1__ texture_srgb; TYPE_4__ resource; } ;
struct wined3d_format {scalar_t__ id; scalar_t__ alpha_size; } ;
struct TYPE_6__ {unsigned int sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {scalar_t__ render_offscreen; TYPE_2__ current_rt; } ;
struct TYPE_7__ {scalar_t__ offscreen_rendering_mode; } ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 scalar_t__ ORM_FBO ;
 int STATE_RENDER (int ) ;
 int TRUE ;
 int WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING ;
 int WINED3DFMT_FLAG_SRGB_WRITE ;
 int WINED3D_LOCATION_DRAWABLE ;
 int WINED3D_RS_ALPHABLENDENABLE ;
 int WINED3D_RS_SRGBWRITEENABLE ;
 int context_invalidate_state (struct wined3d_context*,int ) ;
 int context_set_render_offscreen (struct wined3d_context*,scalar_t__) ;
 scalar_t__ wined3d_resource_is_offscreen (TYPE_4__*) ;
 TYPE_3__ wined3d_settings ;
 int wined3d_texture_invalidate_location (struct wined3d_texture*,unsigned int,int ) ;
 int wined3d_texture_load (struct wined3d_texture*,struct wined3d_context*,int ) ;

__attribute__((used)) static void context_setup_target(struct wined3d_context *context,
        struct wined3d_texture *texture, unsigned int sub_resource_idx)
{
    BOOL old_render_offscreen = context->render_offscreen, render_offscreen;

    render_offscreen = wined3d_resource_is_offscreen(&texture->resource);
    if (context->current_rt.texture == texture
            && context->current_rt.sub_resource_idx == sub_resource_idx
            && render_offscreen == old_render_offscreen)
        return;



    if (!context->current_rt.texture)
    {
        context_invalidate_state(context, STATE_RENDER(WINED3D_RS_ALPHABLENDENABLE));
    }
    else
    {
        const struct wined3d_format *old = context->current_rt.texture->resource.format;
        const struct wined3d_format *new = texture->resource.format;

        if (old->id != new->id)
        {

            if ((old->alpha_size && !new->alpha_size) || (!old->alpha_size && new->alpha_size)
                    || !(texture->resource.format_flags & WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING))
                context_invalidate_state(context, STATE_RENDER(WINED3D_RS_ALPHABLENDENABLE));


            if ((context->current_rt.texture->resource.format_flags & WINED3DFMT_FLAG_SRGB_WRITE)
                    != (texture->resource.format_flags & WINED3DFMT_FLAG_SRGB_WRITE))
                context_invalidate_state(context, STATE_RENDER(WINED3D_RS_SRGBWRITEENABLE));
        }
        if (wined3d_settings.offscreen_rendering_mode != ORM_FBO
                && old_render_offscreen && (context->current_rt.texture != texture
                || context->current_rt.sub_resource_idx != sub_resource_idx))
        {
            unsigned int prev_sub_resource_idx = context->current_rt.sub_resource_idx;
            struct wined3d_texture *prev_texture = context->current_rt.texture;


            if (prev_texture->texture_srgb.name)
                wined3d_texture_load(prev_texture, context, TRUE);
            wined3d_texture_load(prev_texture, context, FALSE);
            wined3d_texture_invalidate_location(prev_texture, prev_sub_resource_idx, WINED3D_LOCATION_DRAWABLE);
        }
    }

    context->current_rt.texture = texture;
    context->current_rt.sub_resource_idx = sub_resource_idx;
    context_set_render_offscreen(context, render_offscreen);
}
