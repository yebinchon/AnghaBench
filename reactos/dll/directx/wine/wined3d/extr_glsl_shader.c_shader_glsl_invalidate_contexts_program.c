
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_device {unsigned int context_count; struct wined3d_context** contexts; } ;
struct wined3d_context {struct glsl_context_data* shader_backend_data; } ;
struct glsl_shader_prog_link {int dummy; } ;
struct glsl_context_data {struct glsl_shader_prog_link const* glsl_program; } ;


 int shader_glsl_invalidate_current_program (struct wined3d_context*) ;

__attribute__((used)) static void shader_glsl_invalidate_contexts_program(struct wined3d_device *device,
        const struct glsl_shader_prog_link *program)
{
    const struct glsl_context_data *ctx_data;
    struct wined3d_context *context;
    unsigned int i;

    for (i = 0; i < device->context_count; ++i)
    {
        context = device->contexts[i];
        ctx_data = context->shader_backend_data;

        if (ctx_data->glsl_program == program)
            shader_glsl_invalidate_current_program(context);
    }
}
