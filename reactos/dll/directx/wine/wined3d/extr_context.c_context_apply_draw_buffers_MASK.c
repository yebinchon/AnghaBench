#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* p_glDrawBuffer ) (scalar_t__) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {scalar_t__ offscreen_rendering_mode; } ;
typedef  scalar_t__ GLenum ;
typedef  int DWORD ;

/* Variables and functions */
 size_t ARB_DRAW_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ GL_COLOR_ATTACHMENT0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ GL_NONE ; 
 int MAX_RENDER_TARGET_VIEWS ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 TYPE_3__ wined3d_settings ; 

__attribute__((used)) static void FUNC9(struct wined3d_context *context, DWORD rt_mask)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLenum draw_buffers[MAX_RENDER_TARGET_VIEWS];

    if (!rt_mask)
    {
        gl_info->gl_ops.gl.p_glDrawBuffer(GL_NONE);
    }
    else if (FUNC5(rt_mask))
    {
        gl_info->gl_ops.gl.p_glDrawBuffer(FUNC3(rt_mask));
    }
    else
    {
        if (wined3d_settings.offscreen_rendering_mode == ORM_FBO)
        {
            unsigned int i = 0;

            while (rt_mask)
            {
                if (rt_mask & 1)
                    draw_buffers[i] = GL_COLOR_ATTACHMENT0 + i;
                else
                    draw_buffers[i] = GL_NONE;

                rt_mask >>= 1;
                ++i;
            }

            if (gl_info->supported[ARB_DRAW_BUFFERS])
            {
                FUNC1(FUNC4(i, draw_buffers));
            }
            else
            {
                gl_info->gl_ops.gl.p_glDrawBuffer(draw_buffers[0]);
            }
        }
        else
        {
            FUNC0("Unexpected draw buffers mask with backbuffer ORM.\n");
        }
    }

    FUNC2("apply draw buffers");
}