
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_stream_output {int offset; struct wined3d_buffer* buffer; } ;
struct wined3d_cs_set_stream_output {size_t stream_idx; struct wined3d_buffer* buffer; int offset; } ;
struct TYPE_3__ {struct wined3d_stream_output* stream_output; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;
struct TYPE_4__ {int bind_count; } ;
struct wined3d_buffer {TYPE_2__ resource; } ;


 int InterlockedDecrement (int *) ;
 int InterlockedIncrement (int *) ;
 int STATE_STREAM_OUTPUT ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_stream_output(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_stream_output *op = data;
    struct wined3d_stream_output *stream;
    struct wined3d_buffer *prev;

    stream = &cs->state.stream_output[op->stream_idx];
    prev = stream->buffer;
    stream->buffer = op->buffer;
    stream->offset = op->offset;

    if (op->buffer)
        InterlockedIncrement(&op->buffer->resource.bind_count);
    if (prev)
        InterlockedDecrement(&prev->resource.bind_count);

    device_invalidate_state(cs->device, STATE_STREAM_OUTPUT);
}
