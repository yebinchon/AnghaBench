
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_texture_state {int state; int value; int stage; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
typedef enum wined3d_texture_stage_state { ____Placeholder_wined3d_texture_stage_state } wined3d_texture_stage_state ;
typedef int UINT ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_set_texture_state* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;
typedef int DWORD ;


 int WINED3D_CS_OP_SET_TEXTURE_STATE ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_set_texture_state* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

void wined3d_cs_emit_set_texture_state(struct wined3d_cs *cs, UINT stage,
        enum wined3d_texture_stage_state state, DWORD value)
{
    struct wined3d_cs_set_texture_state *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_SET_TEXTURE_STATE;
    op->stage = stage;
    op->state = state;
    op->value = value;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
