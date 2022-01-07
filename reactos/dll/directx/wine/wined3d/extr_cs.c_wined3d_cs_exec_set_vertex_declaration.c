
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_vertex_declaration {int declaration; } ;
struct TYPE_2__ {int vertex_declaration; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_VDECL ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_vertex_declaration(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_vertex_declaration *op = data;

    cs->state.vertex_declaration = op->declaration;
    device_invalidate_state(cs->device, STATE_VDECL);
}
