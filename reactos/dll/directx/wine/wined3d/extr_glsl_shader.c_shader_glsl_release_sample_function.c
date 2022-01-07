
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_context {struct shader_glsl_ctx_priv* backend_data; } ;
struct shader_glsl_ctx_priv {int string_buffers; } ;
struct glsl_sample_function {int name; } ;


 int string_buffer_release (int ,int ) ;

__attribute__((used)) static void shader_glsl_release_sample_function(const struct wined3d_shader_context *ctx,
        struct glsl_sample_function *sample_function)
{
    const struct shader_glsl_ctx_priv *priv = ctx->backend_data;

    string_buffer_release(priv->string_buffers, sample_function->name);
}
