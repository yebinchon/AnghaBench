
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_shader {struct wined3d_shader_reg_maps reg_maps; } ;
struct wined3d_context {int gl_info; } ;
struct shader_glsl_priv {int dummy; } ;
typedef int GLuint ;


 int shader_glsl_init_uniform_block_bindings (int ,struct shader_glsl_priv*,int ,struct wined3d_shader_reg_maps const*) ;
 int shader_glsl_load_icb (int ,struct shader_glsl_priv*,int ,struct wined3d_shader_reg_maps const*) ;
 int shader_glsl_load_samplers (struct wined3d_context const*,struct shader_glsl_priv*,int ,struct wined3d_shader_reg_maps const*) ;

__attribute__((used)) static void shader_glsl_load_program_resources(const struct wined3d_context *context,
        struct shader_glsl_priv *priv, GLuint program_id, const struct wined3d_shader *shader)
{
    const struct wined3d_shader_reg_maps *reg_maps = &shader->reg_maps;

    shader_glsl_init_uniform_block_bindings(context->gl_info, priv, program_id, reg_maps);
    shader_glsl_load_icb(context->gl_info, priv, program_id, reg_maps);


    shader_glsl_load_samplers(context, priv, program_id, reg_maps);
}
