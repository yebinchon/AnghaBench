#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* glDeleteFramebuffers ) (int,int /*<<< orphan*/ *) ;} ;
struct wined3d_gl_info {TYPE_1__ fbo_ops; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_gl_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wined3d_context *context, GLuint fbo)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;

    FUNC1(context, GL_FRAMEBUFFER, fbo);
    FUNC2(gl_info, GL_FRAMEBUFFER);
    FUNC1(context, GL_FRAMEBUFFER, 0);

    gl_info->fbo_ops.glDeleteFramebuffers(1, &fbo);
    FUNC0("glDeleteFramebuffers()");
}