
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct wined3d_state {int dummy; } ;
struct TYPE_7__ {unsigned int group_count_x; unsigned int group_count_y; unsigned int group_count_z; } ;
struct TYPE_8__ {TYPE_2__ direct; } ;
struct TYPE_9__ {TYPE_3__ u; int indirect; } ;
struct wined3d_cs_dispatch {TYPE_4__ parameters; int opcode; } ;
struct wined3d_cs {TYPE_5__* ops; TYPE_1__* device; } ;
struct TYPE_10__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_dispatch* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;
struct TYPE_6__ {struct wined3d_state state; } ;


 int FALSE ;
 int WINED3D_CS_OP_DISPATCH ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 int acquire_compute_pipeline_resources (struct wined3d_state const*) ;
 struct wined3d_cs_dispatch* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

void wined3d_cs_emit_dispatch(struct wined3d_cs *cs,
        unsigned int group_count_x, unsigned int group_count_y, unsigned int group_count_z)
{
    const struct wined3d_state *state = &cs->device->state;
    struct wined3d_cs_dispatch *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_DISPATCH;
    op->parameters.indirect = FALSE;
    op->parameters.u.direct.group_count_x = group_count_x;
    op->parameters.u.direct.group_count_y = group_count_y;
    op->parameters.u.direct.group_count_z = group_count_z;

    acquire_compute_pipeline_resources(state);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
