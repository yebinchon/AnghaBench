
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_signature_element {unsigned int register_idx; int mask; scalar_t__ stream_idx; } ;
struct wined3d_shader_signature {unsigned int element_count; struct wined3d_shader_signature_element* elements; } ;
struct wined3d_shader_reg_maps {unsigned int output_registers; } ;
struct shader_glsl_priv {struct wined3d_string_buffer shader_buffer; } ;
typedef scalar_t__ BOOL ;


 int shader_addline (struct wined3d_string_buffer*,char*,char const*,unsigned int,char*,unsigned int,char*) ;
 int shader_glsl_write_mask_to_str (int ,char*) ;

__attribute__((used)) static void shader_glsl_setup_sm4_shader_output(struct shader_glsl_priv *priv,
        unsigned int input_count, const struct wined3d_shader_signature *output_signature,
        const struct wined3d_shader_reg_maps *reg_maps_out, const char *output_variable_name,
        BOOL rasterizer_setup)
{
    struct wined3d_string_buffer *buffer = &priv->shader_buffer;
    char reg_mask[6];
    unsigned int i;

    for (i = 0; i < output_signature->element_count; ++i)
    {
        const struct wined3d_shader_signature_element *output = &output_signature->elements[i];

        if (!(reg_maps_out->output_registers & (1u << output->register_idx)))
            continue;

        if (output->stream_idx)
            continue;

        if (output->register_idx >= input_count)
            continue;

        shader_glsl_write_mask_to_str(output->mask, reg_mask);

        shader_addline(buffer,
                rasterizer_setup ? "%s.reg%u%s = outputs[%u]%s;\n" : "%s.reg[%u]%s = outputs[%u]%s;\n",
                output_variable_name, output->register_idx, reg_mask, output->register_idx, reg_mask);
    }
}
