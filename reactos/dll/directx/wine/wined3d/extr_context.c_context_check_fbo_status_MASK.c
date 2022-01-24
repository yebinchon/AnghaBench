#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int buffers; } ;
struct TYPE_4__ {scalar_t__ (* glCheckFramebufferStatus ) (scalar_t__) ;} ;
struct wined3d_gl_info {TYPE_1__ limits; TYPE_2__ fbo_ops; } ;
struct wined3d_context {int /*<<< orphan*/  current_fbo; struct wined3d_gl_info* gl_info; } ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GL_COLOR_ATTACHMENT0 ; 
 scalar_t__ GL_DEPTH_ATTACHMENT ; 
 scalar_t__ GL_FRAMEBUFFER_COMPLETE ; 
 scalar_t__ GL_STENCIL_ATTACHMENT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_gl_info const*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  d3d ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

void FUNC7(const struct wined3d_context *context, GLenum target)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    GLenum status;

    if (!FUNC2(d3d))
        return;

    status = gl_info->fbo_ops.glCheckFramebufferStatus(target);
    if (status == GL_FRAMEBUFFER_COMPLETE)
    {
        FUNC3("FBO complete.\n");
    }
    else
    {
        unsigned int i;

        FUNC1("FBO status %s (%#x).\n", FUNC5(status), status);

        if (!context->current_fbo)
        {
            FUNC0("FBO 0 is incomplete, driver bug?\n");
            return;
        }

        FUNC4(gl_info, target, GL_DEPTH_ATTACHMENT);
        FUNC4(gl_info, target, GL_STENCIL_ATTACHMENT);

        for (i = 0; i < gl_info->limits.buffers; ++i)
            FUNC4(gl_info, target, GL_COLOR_ATTACHMENT0 + i);
    }
}