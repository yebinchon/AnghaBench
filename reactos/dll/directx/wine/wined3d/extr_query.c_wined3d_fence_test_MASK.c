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
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  sync; } ;
struct wined3d_fence {TYPE_2__ object; TYPE_3__* context; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef  enum wined3d_fence_result { ____Placeholder_wined3d_fence_result } wined3d_fence_result ;
struct TYPE_6__ {TYPE_1__* gl_info; } ;
struct TYPE_4__ {int /*<<< orphan*/ * supported; } ;
typedef  int GLenum ;
typedef  int DWORD ;
typedef  void* BOOL ;

/* Variables and functions */
 size_t APPLE_FENCE ; 
 size_t ARB_SYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  GL_ALREADY_SIGNALED 131 
#define  GL_CONDITION_SATISFIED 130 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_SYNC_FLUSH_COMMANDS_BIT ; 
#define  GL_TIMEOUT_EXPIRED 129 
#define  GL_WAIT_FAILED 128 
 size_t NV_FENCE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int WINED3DGETDATA_FLUSH ; 
 int WINED3D_FENCE_ERROR ; 
 int WINED3D_FENCE_NOT_STARTED ; 
 int WINED3D_FENCE_OK ; 
 int WINED3D_FENCE_WAITING ; 
 int WINED3D_FENCE_WRONG_THREAD ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct wined3d_context* FUNC5 (struct wined3d_device const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wined3d_context* FUNC6 (struct wined3d_device const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wined3d_fence_result FUNC11(const struct wined3d_fence *fence,
        const struct wined3d_device *device, DWORD flags)
{
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context;
    enum wined3d_fence_result ret;
    BOOL fence_result;

    FUNC2("fence %p, device %p, flags %#x.\n", fence, device, flags);

    if (!fence->context)
    {
        FUNC2("Fence not issued.\n");
        return WINED3D_FENCE_NOT_STARTED;
    }

    if (!(context = FUNC6(device, fence->context)))
    {
        if (!fence->context->gl_info->supported[ARB_SYNC])
        {
            FUNC3("Fence tested from wrong thread.\n");
            return WINED3D_FENCE_WRONG_THREAD;
        }
        context = FUNC5(device, NULL, 0);
    }
    gl_info = context->gl_info;

    if (gl_info->supported[ARB_SYNC])
    {
        GLenum gl_ret = FUNC1(FUNC8(fence->object.sync,
                (flags & WINED3DGETDATA_FLUSH) ? GL_SYNC_FLUSH_COMMANDS_BIT : 0, 0));
        FUNC4("glClientWaitSync");

        switch (gl_ret)
        {
            case GL_ALREADY_SIGNALED:
            case GL_CONDITION_SATISFIED:
                ret = WINED3D_FENCE_OK;
                break;

            case GL_TIMEOUT_EXPIRED:
                ret = WINED3D_FENCE_WAITING;
                break;

            case GL_WAIT_FAILED:
            default:
                FUNC0("glClientWaitSync returned %#x.\n", gl_ret);
                ret = WINED3D_FENCE_ERROR;
        }
    }
    else if (gl_info->supported[APPLE_FENCE])
    {
        fence_result = FUNC1(FUNC9(fence->object.id));
        FUNC4("glTestFenceAPPLE");
        if (fence_result)
            ret = WINED3D_FENCE_OK;
        else
            ret = WINED3D_FENCE_WAITING;
    }
    else if (gl_info->supported[NV_FENCE])
    {
        fence_result = FUNC1(FUNC10(fence->object.id));
        FUNC4("glTestFenceNV");
        if (fence_result)
            ret = WINED3D_FENCE_OK;
        else
            ret = WINED3D_FENCE_WAITING;
    }
    else
    {
        FUNC0("Fence created despite lack of GL support.\n");
        ret = WINED3D_FENCE_ERROR;
    }

    FUNC7(context);
    return ret;
}