
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_shader_phase {unsigned int temporary_count; int end; int start; scalar_t__ instance_count; } ;
struct wined3d_shader {int dummy; } ;
struct shader_glsl_ctx_priv {int dummy; } ;
typedef int HRESULT ;


 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_generate_code (struct wined3d_shader const*,struct wined3d_string_buffer*,struct wined3d_shader_reg_maps const*,struct shader_glsl_ctx_priv*,int ,int ) ;

__attribute__((used)) static HRESULT shader_glsl_generate_shader_phase(const struct wined3d_shader *shader,
        struct wined3d_string_buffer *buffer, const struct wined3d_shader_reg_maps *reg_maps,
        struct shader_glsl_ctx_priv *priv_ctx, const struct wined3d_shader_phase *phase,
        const char *phase_name, unsigned phase_idx)
{
    unsigned int i;
    HRESULT hr;

    shader_addline(buffer, "void hs_%s_phase%u(%s)\n{\n",
            phase_name, phase_idx, phase->instance_count ? "int phase_instance_id" : "");
    for (i = 0; i < phase->temporary_count; ++i)
        shader_addline(buffer, "vec4 R%u;\n", i);
    hr = shader_generate_code(shader, buffer, reg_maps, priv_ctx, phase->start, phase->end);
    shader_addline(buffer, "}\n");
    return hr;
}
