#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_4__* format; int /*<<< orphan*/  draw_binding; } ;
struct wined3d_texture {TYPE_7__ resource; TYPE_2__* sub_resources; } ;
struct wined3d_surface {int dummy; } ;
struct wined3d_device {int dummy; } ;
struct TYPE_10__ {size_t sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {int draw_buffers_mask; TYPE_5__* current_fbo; TYPE_3__ current_rt; scalar_t__ render_offscreen; } ;
struct TYPE_13__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_12__ {int rt_mask; } ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_8__ {struct wined3d_surface* surface; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_device const*,struct wined3d_context*) ; 
 scalar_t__ WINED3DFMT_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,int /*<<< orphan*/ ,struct wined3d_surface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_7__*) ; 
 int FUNC6 (struct wined3d_context*,struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 TYPE_6__ wined3d_settings ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 

void FUNC9(struct wined3d_context *context, const struct wined3d_device *device)
{
    struct wined3d_texture *rt = context->current_rt.texture;
    struct wined3d_surface *surface;
    DWORD rt_mask, *cur_mask;

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
    {
        if (context->render_offscreen)
        {
            FUNC8(rt, context, FALSE);

            surface = rt->sub_resources[context->current_rt.sub_resource_idx].u.surface;
            FUNC2(context, GL_FRAMEBUFFER, surface, NULL, rt->resource.draw_binding);
            if (rt->resource.format->id != WINED3DFMT_NULL)
                rt_mask = 1;
            else
                rt_mask = 0;
        }
        else
        {
            context->current_fbo = NULL;
            FUNC3(context, GL_FRAMEBUFFER, 0);
            rt_mask = FUNC5(&rt->resource);
        }
    }
    else
    {
        rt_mask = FUNC6(context, rt);
    }

    cur_mask = context->current_fbo ? &context->current_fbo->rt_mask : &context->draw_buffers_mask;

    if (rt_mask != *cur_mask)
    {
        FUNC1(context, rt_mask);
        *cur_mask = rt_mask;
    }

    if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
    {
        FUNC4(context, GL_FRAMEBUFFER);
    }

    FUNC0(device, context);
    FUNC7(context, STATE_FRAMEBUFFER);
}