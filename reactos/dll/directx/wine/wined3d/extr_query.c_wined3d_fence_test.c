
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_5__ {int id; int sync; } ;
struct wined3d_fence {TYPE_2__ object; TYPE_3__* context; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef enum wined3d_fence_result { ____Placeholder_wined3d_fence_result } wined3d_fence_result ;
struct TYPE_6__ {TYPE_1__* gl_info; } ;
struct TYPE_4__ {int * supported; } ;
typedef int GLenum ;
typedef int DWORD ;
typedef void* BOOL ;


 size_t APPLE_FENCE ;
 size_t ARB_SYNC ;
 int ERR (char*,...) ;


 void* GL_EXTCALL (int ) ;
 int GL_SYNC_FLUSH_COMMANDS_BIT ;


 size_t NV_FENCE ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int WINED3DGETDATA_FLUSH ;
 int WINED3D_FENCE_ERROR ;
 int WINED3D_FENCE_NOT_STARTED ;
 int WINED3D_FENCE_OK ;
 int WINED3D_FENCE_WAITING ;
 int WINED3D_FENCE_WRONG_THREAD ;
 int checkGLcall (char*) ;
 struct wined3d_context* context_acquire (struct wined3d_device const*,int *,int ) ;
 struct wined3d_context* context_reacquire (struct wined3d_device const*,TYPE_3__*) ;
 int context_release (struct wined3d_context*) ;
 int glClientWaitSync (int ,int ,int ) ;
 int glTestFenceAPPLE (int ) ;
 int glTestFenceNV (int ) ;

__attribute__((used)) static enum wined3d_fence_result wined3d_fence_test(const struct wined3d_fence *fence,
        const struct wined3d_device *device, DWORD flags)
{
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context;
    enum wined3d_fence_result ret;
    BOOL fence_result;

    TRACE("fence %p, device %p, flags %#x.\n", fence, device, flags);

    if (!fence->context)
    {
        TRACE("Fence not issued.\n");
        return WINED3D_FENCE_NOT_STARTED;
    }

    if (!(context = context_reacquire(device, fence->context)))
    {
        if (!fence->context->gl_info->supported[ARB_SYNC])
        {
            WARN("Fence tested from wrong thread.\n");
            return WINED3D_FENCE_WRONG_THREAD;
        }
        context = context_acquire(device, ((void*)0), 0);
    }
    gl_info = context->gl_info;

    if (gl_info->supported[ARB_SYNC])
    {
        GLenum gl_ret = GL_EXTCALL(glClientWaitSync(fence->object.sync,
                (flags & WINED3DGETDATA_FLUSH) ? GL_SYNC_FLUSH_COMMANDS_BIT : 0, 0));
        checkGLcall("glClientWaitSync");

        switch (gl_ret)
        {
            case 131:
            case 130:
                ret = WINED3D_FENCE_OK;
                break;

            case 129:
                ret = WINED3D_FENCE_WAITING;
                break;

            case 128:
            default:
                ERR("glClientWaitSync returned %#x.\n", gl_ret);
                ret = WINED3D_FENCE_ERROR;
        }
    }
    else if (gl_info->supported[APPLE_FENCE])
    {
        fence_result = GL_EXTCALL(glTestFenceAPPLE(fence->object.id));
        checkGLcall("glTestFenceAPPLE");
        if (fence_result)
            ret = WINED3D_FENCE_OK;
        else
            ret = WINED3D_FENCE_WAITING;
    }
    else if (gl_info->supported[NV_FENCE])
    {
        fence_result = GL_EXTCALL(glTestFenceNV(fence->object.id));
        checkGLcall("glTestFenceNV");
        if (fence_result)
            ret = WINED3D_FENCE_OK;
        else
            ret = WINED3D_FENCE_WAITING;
    }
    else
    {
        ERR("Fence created despite lack of GL support.\n");
        ret = WINED3D_FENCE_ERROR;
    }

    context_release(context);
    return ret;
}
