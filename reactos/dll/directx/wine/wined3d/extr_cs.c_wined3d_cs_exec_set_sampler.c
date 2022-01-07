
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_sampler {size_t type; size_t sampler_idx; int sampler; } ;
struct TYPE_2__ {int ** sampler; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_COMPUTE_SHADER_RESOURCE_BINDING ;
 int STATE_GRAPHICS_SHADER_RESOURCE_BINDING ;
 size_t WINED3D_SHADER_TYPE_COMPUTE ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_sampler(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_sampler *op = data;

    cs->state.sampler[op->type][op->sampler_idx] = op->sampler;
    if (op->type != WINED3D_SHADER_TYPE_COMPUTE)
        device_invalidate_state(cs->device, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
    else
        device_invalidate_state(cs->device, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
}
