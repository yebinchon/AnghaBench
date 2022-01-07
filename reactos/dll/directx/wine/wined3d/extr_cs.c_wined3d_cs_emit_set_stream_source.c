
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_cs_set_stream_source {void* stride; void* offset; struct wined3d_buffer* buffer; void* stream_idx; int opcode; } ;
struct wined3d_cs {TYPE_1__* ops; } ;
struct wined3d_buffer {int dummy; } ;
typedef void* UINT ;
struct TYPE_2__ {int (* submit ) (struct wined3d_cs*,int ) ;struct wined3d_cs_set_stream_source* (* require_space ) (struct wined3d_cs*,int,int ) ;} ;


 int WINED3D_CS_OP_SET_STREAM_SOURCE ;
 int WINED3D_CS_QUEUE_DEFAULT ;
 struct wined3d_cs_set_stream_source* stub1 (struct wined3d_cs*,int,int ) ;
 int stub2 (struct wined3d_cs*,int ) ;

void wined3d_cs_emit_set_stream_source(struct wined3d_cs *cs, UINT stream_idx,
        struct wined3d_buffer *buffer, UINT offset, UINT stride)
{
    struct wined3d_cs_set_stream_source *op;

    op = cs->ops->require_space(cs, sizeof(*op), WINED3D_CS_QUEUE_DEFAULT);
    op->opcode = WINED3D_CS_OP_SET_STREAM_SOURCE;
    op->stream_idx = stream_idx;
    op->buffer = buffer;
    op->offset = offset;
    op->stride = stride;

    cs->ops->submit(cs, WINED3D_CS_QUEUE_DEFAULT);
}
