
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_context {unsigned int shader_update_mask; struct glsl_context_data* shader_backend_data; } ;
struct glsl_context_data {int * glsl_program; } ;


 unsigned int WINED3D_SHADER_TYPE_COMPUTE ;
 unsigned int WINED3D_SHADER_TYPE_DOMAIN ;
 unsigned int WINED3D_SHADER_TYPE_GEOMETRY ;
 unsigned int WINED3D_SHADER_TYPE_HULL ;
 unsigned int WINED3D_SHADER_TYPE_PIXEL ;
 unsigned int WINED3D_SHADER_TYPE_VERTEX ;

__attribute__((used)) static void shader_glsl_invalidate_current_program(struct wined3d_context *context)
{
    struct glsl_context_data *ctx_data = context->shader_backend_data;

    ctx_data->glsl_program = ((void*)0);
    context->shader_update_mask = (1u << WINED3D_SHADER_TYPE_PIXEL)
            | (1u << WINED3D_SHADER_TYPE_VERTEX)
            | (1u << WINED3D_SHADER_TYPE_GEOMETRY)
            | (1u << WINED3D_SHADER_TYPE_HULL)
            | (1u << WINED3D_SHADER_TYPE_DOMAIN)
            | (1u << WINED3D_SHADER_TYPE_COMPUTE);
}
