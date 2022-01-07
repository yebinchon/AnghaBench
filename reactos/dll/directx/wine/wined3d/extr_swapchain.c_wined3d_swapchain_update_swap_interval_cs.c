
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int swap_interval; } ;
struct wined3d_swapchain {TYPE_1__ desc; int front_buffer; int device; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;


 int ERR (char*,int,struct wined3d_context*,int ) ;
 int FIXME (char*,int) ;
 int GL_EXTCALL (int ) ;
 int GetLastError () ;
 size_t WGL_EXT_SWAP_CONTROL ;






 struct wined3d_context* context_acquire (int ,int ,int ) ;
 int context_release (struct wined3d_context*) ;
 int wglSwapIntervalEXT (int) ;

__attribute__((used)) static void wined3d_swapchain_update_swap_interval_cs(void *object)
{
    struct wined3d_swapchain *swapchain = object;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context;
    int swap_interval;

    context = context_acquire(swapchain->device, swapchain->front_buffer, 0);
    gl_info = context->gl_info;

    switch (swapchain->desc.swap_interval)
    {
        case 131:
            swap_interval = 0;
            break;
        case 133:
        case 130:
            swap_interval = 1;
            break;
        case 128:
            swap_interval = 2;
            break;
        case 129:
            swap_interval = 3;
            break;
        case 132:
            swap_interval = 4;
            break;
        default:
            FIXME("Unhandled present interval %#x.\n", swapchain->desc.swap_interval);
            swap_interval = 1;
    }

    if (gl_info->supported[WGL_EXT_SWAP_CONTROL])
    {
        if (!GL_EXTCALL(wglSwapIntervalEXT(swap_interval)))
            ERR("wglSwapIntervalEXT failed to set swap interval %d for context %p, last error %#x\n",
                swap_interval, context, GetLastError());
    }

    context_release(context);
}
