
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature_element {int register_idx; int mask; } ;
struct wined3d_shader_signature {unsigned int element_count; struct wined3d_shader_signature_element* elements; } ;
struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_shader {struct wined3d_shader_signature output_signature; } ;


 int shader_addline (struct wined3d_string_buffer*,char*,int ,char*,int ,char*) ;
 int shader_glsl_write_mask_to_str (int ,char*) ;

__attribute__((used)) static void shader_glsl_generate_default_control_point_phase(const struct wined3d_shader *shader,
        struct wined3d_string_buffer *buffer, const struct wined3d_shader_reg_maps *reg_maps)
{
    const struct wined3d_shader_signature *output_signature = &shader->output_signature;
    char reg_mask[6];
    unsigned int i;

    for (i = 0; i < output_signature->element_count; ++i)
    {
        const struct wined3d_shader_signature_element *output = &output_signature->elements[i];

        shader_glsl_write_mask_to_str(output->mask, reg_mask);
        shader_addline(buffer, "shader_out[gl_InvocationID].reg[%u]%s = shader_in[gl_InvocationID].reg[%u]%s;\n",
                output->register_idx, reg_mask, output->register_idx, reg_mask);
    }
}
