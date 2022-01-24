#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_stream_output_element {unsigned int output_slot; unsigned int component_count; scalar_t__ register_idx; scalar_t__ component_idx; scalar_t__ stream_idx; } ;
struct wined3d_stream_output_desc {unsigned int element_count; scalar_t__ rasterizer_stream_idx; unsigned int buffer_stride_count; int* buffer_strides; struct wined3d_stream_output_element* elements; } ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 scalar_t__ GL_INTERLEAVED_ATTRIBS ; 
 unsigned int WINED3D_MAX_STREAM_OUTPUT_BUFFERS ; 
 scalar_t__ WINED3D_NO_RASTERIZER_STREAM ; 
 scalar_t__ WINED3D_STREAM_OUTPUT_GAP ; 
 int /*<<< orphan*/  FUNC1 (char const**,unsigned int*,char**,unsigned int*,struct wined3d_string_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char const**,unsigned int*,char**,unsigned int*,struct wined3d_string_buffer*) ; 
 unsigned int FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_stream_output_desc *so_desc,
        struct wined3d_string_buffer *buffer, const char **varyings, unsigned int *varying_count,
        char *strings, unsigned int *strings_length, GLenum buffer_mode)
{
    unsigned int i, buffer_idx, count, length, highest_output_slot, stride;

    count = length = 0;
    highest_output_slot = 0;
    for (buffer_idx = 0; buffer_idx < WINED3D_MAX_STREAM_OUTPUT_BUFFERS; ++buffer_idx)
    {
        stride = 0;

        for (i = 0; i < so_desc->element_count; ++i)
        {
            const struct wined3d_stream_output_element *e = &so_desc->elements[i];

            highest_output_slot = FUNC3(highest_output_slot, e->output_slot);
            if (e->output_slot != buffer_idx)
                continue;

            if (e->stream_idx)
            {
                FUNC0("Unhandled stream %u.\n", e->stream_idx);
                continue;
            }

            stride += e->component_count;

            if (e->register_idx == WINED3D_STREAM_OUTPUT_GAP)
            {
                FUNC1(varyings, &count,
                        &strings, &length, buffer, e->component_count);
                continue;
            }

            if (e->component_idx || e->component_count != 4)
            {
                if (so_desc->rasterizer_stream_idx != WINED3D_NO_RASTERIZER_STREAM)
                {
                    FUNC0("Unsupported component range %u-%u.\n", e->component_idx, e->component_count);
                    FUNC1(varyings, &count,
                            &strings, &length, buffer, e->component_count);
                    continue;
                }

                FUNC4(buffer, "shader_in_out.reg%u_%u_%u",
                        e->register_idx, e->component_idx, e->component_idx + e->component_count - 1);
                FUNC2(varyings, &count, &strings, &length, buffer);
            }
            else
            {
                FUNC4(buffer, "shader_in_out.reg%u", e->register_idx);
                FUNC2(varyings, &count, &strings, &length, buffer);
            }
        }

        if (buffer_idx < so_desc->buffer_stride_count
                && stride < so_desc->buffer_strides[buffer_idx] / 4)
        {
            unsigned int component_count = so_desc->buffer_strides[buffer_idx] / 4 - stride;
            FUNC1(varyings, &count,
                    &strings, &length, buffer, component_count);
        }

        if (highest_output_slot <= buffer_idx)
            break;

        if (buffer_mode == GL_INTERLEAVED_ATTRIBS)
        {
            FUNC4(buffer, "gl_NextBuffer");
            FUNC2(varyings, &count, &strings, &length, buffer);
        }
    }

    if (varying_count)
        *varying_count = count;
    if (strings_length)
        *strings_length = length;
}