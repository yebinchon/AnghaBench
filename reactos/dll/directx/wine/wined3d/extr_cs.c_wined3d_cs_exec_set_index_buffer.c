
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_cs_set_index_buffer {struct wined3d_buffer* buffer; int offset; int format_id; } ;
struct TYPE_4__ {int index_offset; int index_format; struct wined3d_buffer* index_buffer; } ;
struct wined3d_cs {int device; TYPE_2__ state; } ;
struct TYPE_3__ {int bind_count; } ;
struct wined3d_buffer {TYPE_1__ resource; } ;


 int InterlockedDecrement (int *) ;
 int InterlockedIncrement (int *) ;
 int STATE_INDEXBUFFER ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_index_buffer(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_index_buffer *op = data;
    struct wined3d_buffer *prev;

    prev = cs->state.index_buffer;
    cs->state.index_buffer = op->buffer;
    cs->state.index_format = op->format_id;
    cs->state.index_offset = op->offset;

    if (op->buffer)
        InterlockedIncrement(&op->buffer->resource.bind_count);
    if (prev)
        InterlockedDecrement(&prev->resource.bind_count);

    device_invalidate_state(cs->device, STATE_INDEXBUFFER);
}
