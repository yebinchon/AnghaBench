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
struct wined3d_shader_signature_element {int /*<<< orphan*/  register_idx; int /*<<< orphan*/  mask; } ;
struct wined3d_shader_signature {unsigned int element_count; struct wined3d_shader_signature_element* elements; } ;
struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_shader {struct wined3d_shader_signature output_signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(const struct wined3d_shader *shader,
        struct wined3d_string_buffer *buffer, const struct wined3d_shader_reg_maps *reg_maps)
{
    const struct wined3d_shader_signature *output_signature = &shader->output_signature;
    char reg_mask[6];
    unsigned int i;

    for (i = 0; i < output_signature->element_count; ++i)
    {
        const struct wined3d_shader_signature_element *output = &output_signature->elements[i];

        FUNC1(output->mask, reg_mask);
        FUNC0(buffer, "shader_out[gl_InvocationID].reg[%u]%s = shader_in[gl_InvocationID].reg[%u]%s;\n",
                output->register_idx, reg_mask, output->register_idx, reg_mask);
    }
}