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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_stream_output_element {unsigned int component_idx; int component_count; int /*<<< orphan*/  register_idx; scalar_t__ stream_idx; } ;
struct wined3d_stream_output_desc {unsigned int element_count; struct wined3d_stream_output_element* elements; } ;
struct wined3d_shader {TYPE_1__* limits; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  packed_output; } ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  WINED3D_STREAM_OUTPUT_GAP ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,char*) ; 

__attribute__((used)) static void FUNC3(struct shader_glsl_priv *priv,
        const struct wined3d_shader *shader, const struct wined3d_stream_output_desc *so_desc)
{
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    unsigned int i;

    FUNC1(buffer, "out shader_in_out\n{\n");
    for (i = 0; i < so_desc->element_count; ++i)
    {
        const struct wined3d_stream_output_element *e = &so_desc->elements[i];

        if (e->stream_idx)
        {
            FUNC0("Unhandled stream %u.\n", e->stream_idx);
            continue;
        }
        if (e->register_idx == WINED3D_STREAM_OUTPUT_GAP)
            continue;

        if (e->component_idx || e->component_count != 4)
        {
            if (e->component_count == 1)
                FUNC1(buffer, "float");
            else
                FUNC1(buffer, "vec%u", e->component_count);
            FUNC1(buffer, " reg%u_%u_%u;\n",
                    e->register_idx, e->component_idx, e->component_idx + e->component_count - 1);
        }
        else
        {
            FUNC1(buffer, "vec4 reg%u;\n", e->register_idx);
        }
    }
    FUNC1(buffer, "} shader_out;\n");

    FUNC1(buffer, "void setup_gs_output(in vec4 outputs[%u])\n{\n",
            shader->limits->packed_output);
    for (i = 0; i < so_desc->element_count; ++i)
    {
        const struct wined3d_stream_output_element *e = &so_desc->elements[i];

        if (e->stream_idx)
        {
            FUNC0("Unhandled stream %u.\n", e->stream_idx);
            continue;
        }
        if (e->register_idx == WINED3D_STREAM_OUTPUT_GAP)
            continue;

        if (e->component_idx || e->component_count != 4)
        {
            DWORD write_mask;
            char str_mask[6];

            write_mask = ((1u << e->component_count) - 1) << e->component_idx;
            FUNC2(write_mask, str_mask);
            FUNC1(buffer, "shader_out.reg%u_%u_%u = outputs[%u]%s;\n",
                    e->register_idx, e->component_idx, e->component_idx + e->component_count - 1,
                    e->register_idx, str_mask);
        }
        else
        {
            FUNC1(buffer, "shader_out.reg%u = outputs[%u];\n",
                    e->register_idx, e->register_idx);
        }
    }
    FUNC1(buffer, "}\n");
}