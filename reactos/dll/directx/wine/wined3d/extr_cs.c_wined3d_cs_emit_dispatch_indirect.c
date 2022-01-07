
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
struct TYPE_6__ {unsigned int offset; struct wined3d_buffer* buffer; } ;
struct TYPE_7__ {TYPE_1__ indirect; } ;
struct TYPE_8__ {TYPE_2__ u; int indirect; } ;
struct wined3d_cs_dispatch {TYPE_3__ parameters; int opcode; } ;
struct wined3d_cs {TYPE_4__* ops; TYPE_5__* device; } ;
struct wined3d_buffer {int resource; } ;
struct TYPE_10__ {struct wined3d_state state; } ;
struct TYPE_9__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_dispatch* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int TRUE ;
 int WINED3D_CS_OP_DISPATCH ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 int acquire_compute_pipeline_resources (struct wined3d_state const*) ;
 struct wined3d_cs_dispatch* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int wined3d_resource_acquire (int *) ;

void wined3d_cs_emit_dispatch_indirect(struct wined3d_cs *cs,
        struct wined3d_buffer *buffer, unsigned int offset)
{
    const struct wined3d_state *state = &cs->device->state;
    struct wined3d_cs_dispatch *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_DISPATCH;
    op->parameters.indirect = TRUE;
    op->parameters.u.indirect.buffer = buffer;
    op->parameters.u.indirect.offset = offset;

    acquire_compute_pipeline_resources(state);
    wined3d_resource_acquire(&buffer->resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
