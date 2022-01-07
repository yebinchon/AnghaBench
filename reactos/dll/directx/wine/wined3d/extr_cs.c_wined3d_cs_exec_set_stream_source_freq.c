
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_stream_state {int flags; int frequency; } ;
struct wined3d_cs_set_stream_source_freq {size_t stream_idx; int flags; int frequency; } ;
struct TYPE_2__ {struct wined3d_stream_state* streams; } ;
struct wined3d_cs {int device; TYPE_1__ state; } ;


 int STATE_STREAMSRC ;
 int device_invalidate_state (int ,int ) ;

__attribute__((used)) static void wined3d_cs_exec_set_stream_source_freq(struct wined3d_cs *cs, const void *data)
{
    const struct wined3d_cs_set_stream_source_freq *op = data;
    struct wined3d_stream_state *stream;

    stream = &cs->state.streams[op->stream_idx];
    stream->frequency = op->frequency;
    stream->flags = op->flags;

    device_invalidate_state(cs->device, STATE_STREAMSRC);
}
