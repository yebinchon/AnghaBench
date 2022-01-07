
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_shader {size_t type; int shader; } ;
struct TYPE_2__ {int * shader; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_COMPUTE_SHADER_RESOURCE_BINDING ;
 int STATE_GRAPHICS_SHADER_RESOURCE_BINDING ;
 int STATE_SHADER (size_t) ;
 size_t WINED3D_SHADER_TYPE_COMPUTE ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_shader(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_shader *op = data;

    cs->state.shader[op->type] = op->shader;
    device_invalidate_state(cs->device, STATE_SHADER(op->type));
    if (op->type != WINED3D_SHADER_TYPE_COMPUTE)
        device_invalidate_state(cs->device, STATE_GRAPHICS_SHADER_RESOURCE_BINDING);
    else
        device_invalidate_state(cs->device, STATE_COMPUTE_SHADER_RESOURCE_BINDING);
}
