#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_8__ {int format_flags; struct wined3d_format* format; } ;
struct wined3d_texture {TYPE_1__ texture_srgb; TYPE_4__ resource; } ;
struct wined3d_format {scalar_t__ id; scalar_t__ alpha_size; } ;
struct TYPE_6__ {unsigned int sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {scalar_t__ render_offscreen; TYPE_2__ current_rt; } ;
struct TYPE_7__ {scalar_t__ offscreen_rendering_mode; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING ; 
 int WINED3DFMT_FLAG_SRGB_WRITE ; 
 int /*<<< orphan*/  WINED3D_LOCATION_DRAWABLE ; 
 int /*<<< orphan*/  WINED3D_RS_ALPHABLENDENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_SRGBWRITEENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 TYPE_3__ wined3d_settings ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_texture*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wined3d_context *context,
        struct wined3d_texture *texture, unsigned int sub_resource_idx)
{
    BOOL old_render_offscreen = context->render_offscreen, render_offscreen;

    render_offscreen = FUNC3(&texture->resource);
    if (context->current_rt.texture == texture
            && context->current_rt.sub_resource_idx == sub_resource_idx
            && render_offscreen == old_render_offscreen)
        return;

    /* To compensate the lack of format switching with some offscreen rendering methods and on onscreen buffers
     * the alpha blend state changes with different render target formats. */
    if (!context->current_rt.texture)
    {
        FUNC1(context, FUNC0(WINED3D_RS_ALPHABLENDENABLE));
    }
    else
    {
        const struct wined3d_format *old = context->current_rt.texture->resource.format;
        const struct wined3d_format *new = texture->resource.format;

        if (old->id != new->id)
        {
            /* Disable blending when the alpha mask has changed and when a format doesn't support blending. */
            if ((old->alpha_size && !new->alpha_size) || (!old->alpha_size && new->alpha_size)
                    || !(texture->resource.format_flags & WINED3DFMT_FLAG_POSTPIXELSHADER_BLENDING))
                FUNC1(context, FUNC0(WINED3D_RS_ALPHABLENDENABLE));

            /* Update sRGB writing when switching between formats that do/do not support sRGB writing */
            if ((context->current_rt.texture->resource.format_flags & WINED3DFMT_FLAG_SRGB_WRITE)
                    != (texture->resource.format_flags & WINED3DFMT_FLAG_SRGB_WRITE))
                FUNC1(context, FUNC0(WINED3D_RS_SRGBWRITEENABLE));
        }

        /* When switching away from an offscreen render target, and we're not
         * using FBOs, we have to read the drawable into the texture. This is
         * done via PreLoad (and WINED3D_LOCATION_DRAWABLE set on the surface).
         * There are some things that need care though. PreLoad needs a GL context,
         * and FindContext is called before the context is activated. It also
         * has to be called with the old rendertarget active, otherwise a
         * wrong drawable is read. */
        if (wined3d_settings.offscreen_rendering_mode != ORM_FBO
                && old_render_offscreen && (context->current_rt.texture != texture
                || context->current_rt.sub_resource_idx != sub_resource_idx))
        {
            unsigned int prev_sub_resource_idx = context->current_rt.sub_resource_idx;
            struct wined3d_texture *prev_texture = context->current_rt.texture;

            /* Read the back buffer of the old drawable into the destination texture. */
            if (prev_texture->texture_srgb.name)
                FUNC5(prev_texture, context, TRUE);
            FUNC5(prev_texture, context, FALSE);
            FUNC4(prev_texture, prev_sub_resource_idx, WINED3D_LOCATION_DRAWABLE);
        }
    }

    context->current_rt.texture = texture;
    context->current_rt.sub_resource_idx = sub_resource_idx;
    FUNC2(context, render_offscreen);
}