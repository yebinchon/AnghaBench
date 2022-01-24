#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct wined3d_state {struct wined3d_fb_state const* fb; } ;
struct wined3d_rendertarget_view {TYPE_2__* format; TYPE_7__* resource; int /*<<< orphan*/  layer_count; int /*<<< orphan*/  sub_resource_idx; int /*<<< orphan*/  gl_view; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* p_glDisable ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glEnable ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_4__ gl; } ;
struct TYPE_13__ {unsigned int buffers; } ;
struct wined3d_gl_info {TYPE_5__ gl_ops; scalar_t__* supported; TYPE_1__ limits; } ;
struct wined3d_fb_state {struct wined3d_rendertarget_view* depth_stencil; struct wined3d_rendertarget_view** render_targets; } ;
struct wined3d_context {unsigned int draw_buffers_mask; int /*<<< orphan*/  last_was_blit; TYPE_3__* current_fbo; TYPE_9__* blit_targets; struct wined3d_gl_info* gl_info; } ;
typedef  unsigned int UINT ;
struct TYPE_21__ {int /*<<< orphan*/  layer_count; int /*<<< orphan*/  sub_resource_idx; TYPE_7__* resource; int /*<<< orphan*/  gl_view; } ;
struct TYPE_20__ {int /*<<< orphan*/ * container; } ;
struct TYPE_19__ {int /*<<< orphan*/  draw_binding; } ;
struct TYPE_18__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_15__ {unsigned int rt_mask; } ;
struct TYPE_14__ {scalar_t__ id; } ;
typedef  unsigned int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 size_t ARB_FRAMEBUFFER_SRGB ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER_SRGB ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_SCISSORRECT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ WINED3DFMT_NULL ; 
 int /*<<< orphan*/  WINED3D_LOCATION_DRAWABLE ; 
 int /*<<< orphan*/  WINED3D_RS_ALPHABLENDENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_SCISSORTESTENABLE ; 
 int /*<<< orphan*/  WINED3D_RS_SRGBWRITEENABLE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,int /*<<< orphan*/ ,TYPE_9__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (TYPE_7__*) ; 
 unsigned int FUNC7 (struct wined3d_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_context*,struct wined3d_rendertarget_view*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,struct wined3d_rendertarget_view* const*,struct wined3d_rendertarget_view*) ; 
 scalar_t__ FUNC11 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (struct wined3d_context*,struct wined3d_state const*,struct wined3d_fb_state const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC18 (struct wined3d_rendertarget_view* const) ; 
 scalar_t__ FUNC19 (TYPE_7__*) ; 
 TYPE_6__ wined3d_settings ; 

BOOL FUNC20(struct wined3d_context *context, const struct wined3d_state *state,
        UINT rt_count, const struct wined3d_fb_state *fb)
{
    struct wined3d_rendertarget_view * const *rts = fb->render_targets;
    struct wined3d_rendertarget_view *dsv = fb->depth_stencil;
    const struct wined3d_gl_info *gl_info = context->gl_info;
    DWORD rt_mask = 0, *cur_mask;
    unsigned int i;

    if (FUNC11(context, STATE_FRAMEBUFFER) || fb != state->fb
            || rt_count != gl_info->limits.buffers)
    {
        if (!FUNC10(rt_count, rts, dsv))
        {
            FUNC1("Invalid render target config, need at least one attachment.\n");
            return FALSE;
        }

        if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
        {
            FUNC9(context, dsv);

            if (!rt_count || FUNC19(rts[0]->resource))
            {
                FUNC12(context->blit_targets, 0, sizeof(context->blit_targets));
                for (i = 0; i < rt_count; ++i)
                {
                    if (rts[i])
                    {
                        context->blit_targets[i].gl_view = rts[i]->gl_view;
                        context->blit_targets[i].resource = rts[i]->resource;
                        context->blit_targets[i].sub_resource_idx = rts[i]->sub_resource_idx;
                        context->blit_targets[i].layer_count = rts[i]->layer_count;
                    }
                    if (rts[i] && rts[i]->format->id != WINED3DFMT_NULL)
                        rt_mask |= (1u << i);
                }
                FUNC4(context, GL_FRAMEBUFFER, context->blit_targets,
                        FUNC18(dsv),
                        rt_count ? rts[0]->resource->draw_binding : 0,
                        dsv ? dsv->resource->draw_binding : 0);
            }
            else
            {
                FUNC4(context, GL_FRAMEBUFFER, NULL, NULL,
                        WINED3D_LOCATION_DRAWABLE, WINED3D_LOCATION_DRAWABLE);
                rt_mask = FUNC6(rts[0]->resource);
            }

            /* If the framebuffer is not the device's fb the device's fb has to be reapplied
             * next draw. Otherwise we could mark the framebuffer state clean here, once the
             * state management allows this */
            FUNC8(context, STATE_FRAMEBUFFER);
        }
        else
        {
            rt_mask = FUNC7(context,
                    rt_count ? FUNC18(rts[0])->container : NULL);
        }
    }
    else if (wined3d_settings.offscreen_rendering_mode == ORM_FBO
            && (!rt_count || FUNC19(rts[0]->resource)))
    {
        for (i = 0; i < rt_count; ++i)
        {
            if (rts[i] && rts[i]->format->id != WINED3DFMT_NULL)
                rt_mask |= (1u << i);
        }
    }
    else
    {
        rt_mask = FUNC7(context,
                rt_count ? FUNC18(rts[0])->container : NULL);
    }

    cur_mask = context->current_fbo ? &context->current_fbo->rt_mask : &context->draw_buffers_mask;

    if (rt_mask != *cur_mask)
    {
        FUNC3(context, rt_mask);
        *cur_mask = rt_mask;
        FUNC8(context, STATE_FRAMEBUFFER);
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
    {
        FUNC5(context, GL_FRAMEBUFFER);
    }

    context->last_was_blit = FALSE;

    /* Blending and clearing should be orthogonal, but tests on the nvidia
     * driver show that disabling blending when clearing improves the clearing
     * performance incredibly. */
    gl_info->gl_ops.gl.p_glDisable(GL_BLEND);
    gl_info->gl_ops.gl.p_glEnable(GL_SCISSOR_TEST);
    if (rt_count && gl_info->supported[ARB_FRAMEBUFFER_SRGB])
    {
        if (FUNC13(context, state, fb))
            gl_info->gl_ops.gl.p_glEnable(GL_FRAMEBUFFER_SRGB);
        else
            gl_info->gl_ops.gl.p_glDisable(GL_FRAMEBUFFER_SRGB);
        FUNC8(context, FUNC0(WINED3D_RS_SRGBWRITEENABLE));
    }
    FUNC2("setting up state for clear");

    FUNC8(context, FUNC0(WINED3D_RS_ALPHABLENDENABLE));
    FUNC8(context, FUNC0(WINED3D_RS_SCISSORTESTENABLE));
    FUNC8(context, STATE_SCISSORRECT);

    return TRUE;
}