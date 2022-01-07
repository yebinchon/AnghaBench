
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_gl_info {scalar_t__* supported; } ;
struct TYPE_3__ {int id; int sync; } ;
struct wined3d_fence {TYPE_1__ object; TYPE_2__* context; } ;
struct wined3d_device {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
typedef enum wined3d_fence_result { ____Placeholder_wined3d_fence_result } wined3d_fence_result ;
struct TYPE_4__ {struct wined3d_gl_info* gl_info; } ;
typedef int GLuint64 ;
typedef int GLenum ;


 size_t APPLE_FENCE ;
 size_t ARB_SYNC ;
 int ERR (char*,...) ;


 int GL_EXTCALL (int ) ;
 int GL_SYNC_FLUSH_COMMANDS_BIT ;
 size_t NV_FENCE ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int WINED3D_FENCE_ERROR ;
 int WINED3D_FENCE_NOT_STARTED ;
 int WINED3D_FENCE_OK ;
 int WINED3D_FENCE_WRONG_THREAD ;
 int checkGLcall (char*) ;
 struct wined3d_context* context_acquire (struct wined3d_device const*,int *,int ) ;
 struct wined3d_context* context_reacquire (struct wined3d_device const*,TYPE_2__*) ;
 int context_release (struct wined3d_context*) ;
 int glClientWaitSync (int ,int ,int) ;
 int glFinishFenceAPPLE (int ) ;
 int glFinishFenceNV (int ) ;

enum wined3d_fence_result wined3d_fence_wait(const struct wined3d_fence *fence,
        const struct wined3d_device *device)
{
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context;
    enum wined3d_fence_result ret;

    TRACE("fence %p, device %p.\n", fence, device);

    if (!fence->context)
    {
        TRACE("Fence not issued.\n");
        return WINED3D_FENCE_NOT_STARTED;
    }
    gl_info = fence->context->gl_info;

    if (!(context = context_reacquire(device, fence->context)))
    {



        if (!gl_info->supported[ARB_SYNC])
        {
            WARN("Fence finished from wrong thread.\n");
            return WINED3D_FENCE_WRONG_THREAD;
        }
        context = context_acquire(device, ((void*)0), 0);
    }
    gl_info = context->gl_info;

    if (gl_info->supported[ARB_SYNC])
    {




        GLenum gl_ret = GL_EXTCALL(glClientWaitSync(fence->object.sync,
                GL_SYNC_FLUSH_COMMANDS_BIT, ~(GLuint64)0 >> 1));
        checkGLcall("glClientWaitSync");

        switch (gl_ret)
        {
            case 129:
            case 128:
                ret = WINED3D_FENCE_OK;
                break;


            default:
                ERR("glClientWaitSync returned %#x.\n", gl_ret);
                ret = WINED3D_FENCE_ERROR;
        }
    }
    else if (context->gl_info->supported[APPLE_FENCE])
    {
        GL_EXTCALL(glFinishFenceAPPLE(fence->object.id));
        checkGLcall("glFinishFenceAPPLE");
        ret = WINED3D_FENCE_OK;
    }
    else if (context->gl_info->supported[NV_FENCE])
    {
        GL_EXTCALL(glFinishFenceNV(fence->object.id));
        checkGLcall("glFinishFenceNV");
        ret = WINED3D_FENCE_OK;
    }
    else
    {
        ERR("Fence created without GL support.\n");
        ret = WINED3D_FENCE_ERROR;
    }

    context_release(context);
    return ret;
}
