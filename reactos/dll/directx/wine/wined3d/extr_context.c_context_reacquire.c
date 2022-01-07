
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_device {int cs; } ;
struct TYPE_2__ {int sub_resource_idx; scalar_t__ texture; } ;
struct wined3d_context {scalar_t__ tid; TYPE_1__ current_rt; } ;


 int ERR (char*,struct wined3d_context*,struct wined3d_context*) ;
 scalar_t__ GetCurrentThreadId () ;
 struct wined3d_context* context_acquire (struct wined3d_device const*,int *,int ) ;
 int context_activate (struct wined3d_context*,scalar_t__,int ) ;
 int wined3d_from_cs (int ) ;

struct wined3d_context *context_reacquire(const struct wined3d_device *device,
        struct wined3d_context *context)
{
    struct wined3d_context *acquired_context;

    wined3d_from_cs(device->cs);

    if (!context || context->tid != GetCurrentThreadId())
        return ((void*)0);

    if (context->current_rt.texture)
    {
        context_activate(context, context->current_rt.texture, context->current_rt.sub_resource_idx);
        return context;
    }

    acquired_context = context_acquire(device, ((void*)0), 0);
    if (acquired_context != context)
        ERR("Acquired context %p instead of %p.\n", acquired_context, context);
    return acquired_context;
}
