
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_blend_state {struct wined3d_blend_state* state; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct wined3d_blend_state {int dummy; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_set_blend_state* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_SET_BLEND_STATE ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_set_blend_state* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

void wined3d_cs_emit_set_blend_state(struct wined3d_cs *cs, struct wined3d_blend_state *state)
{
    struct wined3d_cs_set_blend_state *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_SET_BLEND_STATE;
    op->state = state;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
