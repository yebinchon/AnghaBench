#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_state {TYPE_1__* stream_output; } ;
struct wined3d_context {int dummy; } ;
struct wined3d_buffer {int dummy; } ;
struct TYPE_2__ {struct wined3d_buffer* buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  WINED3D_LOCATION_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_buffer*,struct wined3d_context*,struct wined3d_state const*) ; 

__attribute__((used)) static void FUNC3(struct wined3d_context *context,
        const struct wined3d_state *state)
{
    unsigned int i;

    for (i = 0; i < FUNC0(state->stream_output); ++i)
    {
        struct wined3d_buffer *buffer;
        if (!(buffer = state->stream_output[i].buffer))
            continue;

        FUNC2(buffer, context, state);
        FUNC1(buffer, ~WINED3D_LOCATION_BUFFER);
    }
}