
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_shader_resource_view {TYPE_2__* resource; } ;
struct wined3d_cs_set_shader_resource_view {size_t type; size_t view_idx; struct wined3d_shader_resource_view* view; } ;
struct TYPE_3__ {struct wined3d_shader_resource_view*** shader_resource_view; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;
struct TYPE_4__ {int bind_count; } ;


 int InterlockedDecrement (int *) ;
 int InterlockedIncrement (int *) ;
 int STATE_COMPUTE_SHADER_RESOURCE_BINDING ;
 int STATE_GRAPHICS_SHADER_RESOURCE_BINDING ;
 size_t WINED3D_SHADER_TYPE_COMPUTE ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_shader_resource_view(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_shader_resource_view *op = data;
    struct wined3d_shader_resource_view *prev;

    prev = cs->state.shader_resource_view[op->type][op->view_idx];
    cs->state.shader_resource_view[op->type][op->view_idx] = op->view;

    if (op->view)
        InterlockedIncrement(&op->view->resource->bind_count);
    if (prev)
        InterlockedDecrement(&prev->resource->bind_count);

    if (op->type != WINED3D_SHADER_TYPE_COMPUTE)
        device_invalidate_state(cs->device, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
    else
        device_invalidate_state(cs->device, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
}
