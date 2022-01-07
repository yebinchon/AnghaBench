
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_state {int * unordered_access_view; int * shader; } ;
struct TYPE_6__ {TYPE_1__* buffer; } ;
struct TYPE_7__ {TYPE_2__ indirect; } ;
struct TYPE_8__ {TYPE_3__ u; scalar_t__ indirect; } ;
struct wined3d_cs_dispatch {TYPE_4__ parameters; } ;
struct wined3d_cs {int device; struct wined3d_state state; } ;
struct TYPE_5__ {int resource; } ;


 size_t WINED3D_PIPELINE_COMPUTE ;
 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 int dispatch_compute (int ,struct wined3d_state*,TYPE_4__*) ;
 int release_shader_resources (struct wined3d_state*,unsigned int) ;
 int release_unordered_access_resources (int ,int ) ;
 int wined3d_resource_release (int *) ;

__attribute__((used)) static void wined3d_cs_exec_dispatch(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_dispatch *op = data;
    struct wined3d_state *state = &cs->state;

    dispatch_compute(cs->device, state, &op->parameters);

    if (op->parameters.indirect)
        wined3d_resource_release(&op->parameters.u.indirect.buffer->resource);

    release_shader_resources(state, 1u << WINED3D_SHADER_TYPE_COMPUTE);
    release_unordered_access_resources(state->shader[WINED3D_SHADER_TYPE_COMPUTE],
            state->unordered_access_view[WINED3D_PIPELINE_COMPUTE]);
}
