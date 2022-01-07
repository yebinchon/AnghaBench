
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_context {struct wined3d_shader* shader; struct wined3d_string_buffer* buffer; struct wined3d_gl_info* gl_info; struct shader_glsl_ctx_priv* backend_data; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ shader_version; } ;
struct wined3d_shader {TYPE_2__ reg_maps; } ;
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_ctx_priv {int cur_ds_args; int cur_vs_args; int cur_ps_args; } ;


 int FIXME (char*,int) ;





 int shader_glsl_generate_ds_epilogue (struct wined3d_gl_info const*,struct wined3d_string_buffer*,struct wined3d_shader const*,int ) ;
 int shader_glsl_generate_ps_epilogue (struct wined3d_gl_info const*,struct wined3d_string_buffer*,struct wined3d_shader const*,int ) ;
 int shader_glsl_generate_vs_epilogue (struct wined3d_gl_info const*,struct wined3d_string_buffer*,struct wined3d_shader const*,int ) ;

__attribute__((used)) static void shader_glsl_generate_shader_epilogue(const struct wined3d_shader_context *ctx)
{
    const struct shader_glsl_ctx_priv *priv = ctx->backend_data;
    const struct wined3d_gl_info *gl_info = ctx->gl_info;
    struct wined3d_string_buffer *buffer = ctx->buffer;
    const struct wined3d_shader *shader = ctx->shader;

    switch (shader->reg_maps.shader_version.type)
    {
        case 129:
            shader_glsl_generate_ps_epilogue(gl_info, buffer, shader, priv->cur_ps_args);
            break;
        case 128:
            shader_glsl_generate_vs_epilogue(gl_info, buffer, shader, priv->cur_vs_args);
            break;
        case 131:
            shader_glsl_generate_ds_epilogue(gl_info, buffer, shader, priv->cur_ds_args);
            break;
        case 130:
        case 132:
            break;
        default:
            FIXME("Unhandled shader type %#x.\n", shader->reg_maps.shader_version.type);
            break;
    }
}
