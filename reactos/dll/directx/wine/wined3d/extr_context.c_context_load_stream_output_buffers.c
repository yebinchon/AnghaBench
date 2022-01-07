
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_state {TYPE_1__* stream_output; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_buffer {int dummy; } ;
struct TYPE_2__ {struct wined3d_buffer* buffer; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int WINED3D_LOCATION_BUFFER ;
 int wined3d_buffer_invalidate_location (struct wined3d_buffer*,int ) ;
 int wined3d_buffer_load (struct wined3d_buffer*,struct wined3d_context*,struct wined3d_state const*) ;

__attribute__((used)) static void context_load_stream_output_buffers(struct wined3d_context *context,
        const struct wined3d_state *state)
{
    unsigned int i;

    for (i = 0; i < ARRAY_SIZE(state->stream_output); ++i)
    {
        struct wined3d_buffer *buffer;
        if (!(buffer = state->stream_output[i].buffer))
            continue;

        wined3d_buffer_load(buffer, context, state);
        wined3d_buffer_invalidate_location(buffer, ~WINED3D_LOCATION_BUFFER);
    }
}
