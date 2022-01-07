
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* format; } ;
struct wined3d_texture {TYPE_2__ resource; scalar_t__ swapchain; } ;
struct wined3d_context {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef int DWORD ;


 scalar_t__ WINED3DFMT_NULL ;
 int context_generate_rt_mask (int ) ;
 int context_generate_rt_mask_from_resource (TYPE_2__*) ;
 int context_get_offscreen_gl_buffer (struct wined3d_context const*) ;

__attribute__((used)) static DWORD context_generate_rt_mask_no_fbo(const struct wined3d_context *context, struct wined3d_texture *rt)
{
    if (!rt || rt->resource.format->id == WINED3DFMT_NULL)
        return 0;
    else if (rt->swapchain)
        return context_generate_rt_mask_from_resource(&rt->resource);
    else
        return context_generate_rt_mask(context_get_offscreen_gl_buffer(context));
}
