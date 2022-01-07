
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_unordered_access_view {int * resource; } ;
struct wined3d_cs_copy_uav_counter {unsigned int offset; struct wined3d_unordered_access_view* view; struct wined3d_buffer* buffer; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct wined3d_buffer {int resource; } ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_copy_uav_counter* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_COPY_UAV_COUNTER ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_copy_uav_counter* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;
 int wined3d_resource_acquire (int *) ;

void wined3d_cs_emit_copy_uav_counter(struct wined3d_cs *cs, struct wined3d_buffer *dst_buffer,
        unsigned int offset, struct wined3d_unordered_access_view *uav)
{
    struct wined3d_cs_copy_uav_counter *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_COPY_UAV_COUNTER;
    op->buffer = dst_buffer;
    op->offset = offset;
    op->view = uav;

    wined3d_resource_acquire(&dst_buffer->resource);
    wined3d_resource_acquire(uav->resource);

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
