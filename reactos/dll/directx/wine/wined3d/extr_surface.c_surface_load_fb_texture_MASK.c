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
struct TYPE_6__ {struct wined3d_device* device; } ;
struct wined3d_texture {unsigned int level_count; TYPE_3__ resource; } ;
struct wined3d_surface {struct wined3d_texture* container; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* p_glCopyTexSubImage2D ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_glReadBuffer ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  STATE_FRAMEBUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct wined3d_context* FUNC2 (struct wined3d_device*,struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*) ; 
 struct wined3d_surface* FUNC4 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*,struct wined3d_surface*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (struct wined3d_surface*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC14 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct wined3d_texture*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct wined3d_texture*,struct wined3d_context*,int /*<<< orphan*/ ) ; 

void FUNC18(struct wined3d_surface *surface, BOOL srgb, struct wined3d_context *old_ctx)
{
    unsigned int sub_resource_idx = FUNC10(surface);
    struct wined3d_texture *texture = surface->container;
    struct wined3d_device *device = texture->resource.device;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context = old_ctx;
    struct wined3d_surface *restore_rt = NULL;
    unsigned int level;
    GLenum target;

    restore_rt = FUNC4(old_ctx);
    if (restore_rt != surface)
        context = FUNC2(device, texture, sub_resource_idx);
    else
        restore_rt = NULL;

    gl_info = context->gl_info;
    FUNC6(device, STATE_FRAMEBUFFER);

    FUNC17(texture, context, srgb);
    FUNC12(texture, context, srgb);

    FUNC0("Reading back offscreen render target %p.\n", surface);

    if (FUNC11(&texture->resource))
        gl_info->gl_ops.gl.p_glReadBuffer(FUNC3(context));
    else
        gl_info->gl_ops.gl.p_glReadBuffer(FUNC13(texture));
    FUNC1("glReadBuffer");

    level = sub_resource_idx % texture->level_count;
    target = FUNC16(texture, sub_resource_idx);
    gl_info->gl_ops.gl.p_glCopyTexSubImage2D(target, level, 0, 0, 0, 0,
            FUNC15(texture, level),
            FUNC14(texture, level));
    FUNC1("glCopyTexSubImage2D");

    if (restore_rt)
        FUNC5(context, restore_rt);
}