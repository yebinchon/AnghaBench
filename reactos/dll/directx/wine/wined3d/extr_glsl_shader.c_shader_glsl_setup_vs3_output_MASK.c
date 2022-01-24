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
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct wined3d_shader_signature_element {unsigned int register_idx; scalar_t__ semantic_idx; unsigned int mask; int /*<<< orphan*/  semantic_name; } ;
struct wined3d_shader_signature {unsigned int element_count; struct wined3d_shader_signature_element* elements; } ;
struct TYPE_2__ {unsigned int* output_registers_mask; } ;
struct wined3d_shader_reg_maps {unsigned int input_registers; unsigned int output_registers; TYPE_1__ u; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  string_buffers; struct wined3d_string_buffer shader_buffer; } ;
typedef  unsigned int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int WINED3DSP_WRITEMASK_0 ; 
 unsigned int WINED3DSP_WRITEMASK_1 ; 
 unsigned int WINED3DSP_WRITEMASK_2 ; 
 unsigned int WINED3DSP_WRITEMASK_3 ; 
 unsigned int WINED3DSP_WRITEMASK_ALL ; 
 unsigned int* FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*) ; 
 scalar_t__ FUNC3 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wined3d_string_buffer* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct wined3d_string_buffer*,char*,...) ; 
 unsigned int FUNC11 (int,struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC12(struct shader_glsl_priv *priv,
        const struct wined3d_gl_info *gl_info, const DWORD *map,
        const struct wined3d_shader_signature *input_signature,
        const struct wined3d_shader_reg_maps *reg_maps_in,
        const struct wined3d_shader_signature *output_signature,
        const struct wined3d_shader_reg_maps *reg_maps_out)
{
    struct wined3d_string_buffer *destination = FUNC8(&priv->string_buffers);
    const char *out_array_name = FUNC5(gl_info);
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    unsigned int in_count = FUNC11(3, gl_info);
    unsigned int max_varyings = FUNC3(gl_info) ? in_count + 2 : in_count;
    DWORD in_idx, *set = NULL;
    unsigned int i, j;
    char reg_mask[6];

    set = FUNC1(max_varyings, sizeof(*set));

    for (i = 0; i < input_signature->element_count; ++i)
    {
        const struct wined3d_shader_signature_element *input = &input_signature->elements[i];

        if (!(reg_maps_in->input_registers & (1u << input->register_idx)))
            continue;

        in_idx = map[input->register_idx];
        /* Declared, but not read register */
        if (in_idx == ~0u)
            continue;
        if (in_idx >= max_varyings)
        {
            FUNC0("More input varyings declared than supported, expect issues.\n");
            continue;
        }

        if (in_idx == in_count)
            FUNC10(destination, "gl_FrontColor");
        else if (in_idx == in_count + 1)
            FUNC10(destination, "gl_FrontSecondaryColor");
        else
            FUNC10(destination, "%s[%u]", out_array_name, in_idx);

        if (!set[in_idx])
            set[in_idx] = ~0u;

        for (j = 0; j < output_signature->element_count; ++j)
        {
            const struct wined3d_shader_signature_element *output = &output_signature->elements[j];
            DWORD mask;

            if (!(reg_maps_out->output_registers & (1u << output->register_idx))
                    || input->semantic_idx != output->semantic_idx
                    || FUNC7(input->semantic_name, output->semantic_name)
                    || !(mask = input->mask & output->mask))
                continue;

            if (set[in_idx] == ~0u)
                set[in_idx] = 0;
            set[in_idx] |= mask & reg_maps_out->u.output_registers_mask[output->register_idx];
            FUNC6(mask, reg_mask);

            FUNC4(buffer, "%s%s = outputs[%u]%s;\n",
                    destination->buffer, reg_mask, output->register_idx, reg_mask);
        }
    }

    for (i = 0; i < max_varyings; ++i)
    {
        unsigned int size;

        if (!set[i] || set[i] == WINED3DSP_WRITEMASK_ALL)
            continue;

        if (set[i] == ~0u)
            set[i] = 0;

        size = 0;
        if (!(set[i] & WINED3DSP_WRITEMASK_0))
            reg_mask[size++] = 'x';
        if (!(set[i] & WINED3DSP_WRITEMASK_1))
            reg_mask[size++] = 'y';
        if (!(set[i] & WINED3DSP_WRITEMASK_2))
            reg_mask[size++] = 'z';
        if (!(set[i] & WINED3DSP_WRITEMASK_3))
            reg_mask[size++] = 'w';
        reg_mask[size] = '\0';

        if (i == in_count)
            FUNC10(destination, "gl_FrontColor");
        else if (i == in_count + 1)
            FUNC10(destination, "gl_FrontSecondaryColor");
        else
            FUNC10(destination, "%s[%u]", out_array_name, i);

        if (size == 1)
            FUNC4(buffer, "%s.%s = 0.0;\n", destination->buffer, reg_mask);
        else
            FUNC4(buffer, "%s.%s = vec%u(0.0);\n", destination->buffer, reg_mask, size);
    }

    FUNC2(set);
    FUNC9(&priv->string_buffers, destination);
}