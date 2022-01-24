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
struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; scalar_t__ sync; } ;
struct wined3d_fence {TYPE_2__ object; TYPE_3__* context; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_6__ {TYPE_1__* gl_info; } ;
struct TYPE_4__ {int /*<<< orphan*/ * supported; } ;

/* Variables and functions */
 size_t APPLE_FENCE ; 
 size_t ARB_SYNC ; 
 int /*<<< orphan*/  GL_ALL_COMPLETED_NV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_SYNC_GPU_COMMANDS_COMPLETE ; 
 size_t NV_FENCE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct wined3d_context* FUNC2 (struct wined3d_device const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,struct wined3d_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_fence*) ; 
 struct wined3d_context* FUNC5 (struct wined3d_device const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC11(struct wined3d_fence *fence, const struct wined3d_device *device)
{
    struct wined3d_context *context = NULL;
    const struct wined3d_gl_info *gl_info;

    if (fence->context && !(context = FUNC5(device, fence->context))
            && !fence->context->gl_info->supported[ARB_SYNC])
        FUNC4(fence);
    if (!context)
        context = FUNC2(device, NULL, 0);
    gl_info = context->gl_info;
    if (!fence->context)
        FUNC3(context, fence);

    if (gl_info->supported[ARB_SYNC])
    {
        if (fence->object.sync)
            FUNC0(FUNC7(fence->object.sync));
        FUNC1("glDeleteSync");
        fence->object.sync = FUNC0(FUNC8(GL_SYNC_GPU_COMMANDS_COMPLETE, 0));
        FUNC1("glFenceSync");
    }
    else if (gl_info->supported[APPLE_FENCE])
    {
        FUNC0(FUNC9(fence->object.id));
        FUNC1("glSetFenceAPPLE");
    }
    else if (gl_info->supported[NV_FENCE])
    {
        FUNC0(FUNC10(fence->object.id, GL_ALL_COMPLETED_NV));
        FUNC1("glSetFenceNV");
    }

    FUNC6(context);
}