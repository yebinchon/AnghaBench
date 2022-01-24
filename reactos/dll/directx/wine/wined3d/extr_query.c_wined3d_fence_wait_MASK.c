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
struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; int /*<<< orphan*/  sync; } ;
struct wined3d_fence {TYPE_1__ object; TYPE_2__* context; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  enum wined3d_fence_result { ____Placeholder_wined3d_fence_result } wined3d_fence_result ;
struct TYPE_4__ {struct wined3d_gl_info* gl_info; } ;
typedef  int GLuint64 ;
typedef  int GLenum ;

/* Variables and functions */
 size_t APPLE_FENCE ; 
 size_t ARB_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  GL_ALREADY_SIGNALED 129 
#define  GL_CONDITION_SATISFIED 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_SYNC_FLUSH_COMMANDS_BIT ; 
 size_t NV_FENCE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int WINED3D_FENCE_ERROR ; 
 int WINED3D_FENCE_NOT_STARTED ; 
 int WINED3D_FENCE_OK ; 
 int WINED3D_FENCE_WRONG_THREAD ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct wined3d_context* FUNC5 (struct wined3d_device const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wined3d_context* FUNC6 (struct wined3d_device const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

enum wined3d_fence_result FUNC11(const struct wined3d_fence *fence,
        const struct wined3d_device *device)
{
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context;
    enum wined3d_fence_result ret;

    FUNC2("fence %p, device %p.\n", fence, device);

    if (!fence->context)
    {
        FUNC2("Fence not issued.\n");
        return WINED3D_FENCE_NOT_STARTED;
    }
    gl_info = fence->context->gl_info;

    if (!(context = FUNC6(device, fence->context)))
    {
        /* A glFinish does not reliably wait for draws in other contexts. The caller has
         * to find its own way to cope with the thread switch
         */
        if (!gl_info->supported[ARB_SYNC])
        {
            FUNC3("Fence finished from wrong thread.\n");
            return WINED3D_FENCE_WRONG_THREAD;
        }
        context = FUNC5(device, NULL, 0);
    }
    gl_info = context->gl_info;

    if (gl_info->supported[ARB_SYNC])
    {
        /* Timeouts near 0xffffffffffffffff may immediately return GL_TIMEOUT_EXPIRED,
         * possibly because macOS internally adds some slop to the timer. To avoid this,
         * we use a large number that isn't near the point of overflow (macOS 10.12.5).
         */
        GLenum gl_ret = FUNC1(FUNC8(fence->object.sync,
                GL_SYNC_FLUSH_COMMANDS_BIT, ~(GLuint64)0 >> 1));
        FUNC4("glClientWaitSync");

        switch (gl_ret)
        {
            case GL_ALREADY_SIGNALED:
            case GL_CONDITION_SATISFIED:
                ret = WINED3D_FENCE_OK;
                break;

                /* We don't expect a timeout for a ~292 year wait */
            default:
                FUNC0("glClientWaitSync returned %#x.\n", gl_ret);
                ret = WINED3D_FENCE_ERROR;
        }
    }
    else if (context->gl_info->supported[APPLE_FENCE])
    {
        FUNC1(FUNC9(fence->object.id));
        FUNC4("glFinishFenceAPPLE");
        ret = WINED3D_FENCE_OK;
    }
    else if (context->gl_info->supported[NV_FENCE])
    {
        FUNC1(FUNC10(fence->object.id));
        FUNC4("glFinishFenceNV");
        ret = WINED3D_FENCE_OK;
    }
    else
    {
        FUNC0("Fence created without GL support.\n");
        ret = WINED3D_FENCE_ERROR;
    }

    FUNC7(context);
    return ret;
}