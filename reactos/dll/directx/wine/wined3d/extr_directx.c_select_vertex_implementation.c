
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_vertex_pipe_ops {int dummy; } ;
struct wined3d_shader_backend_ops {int dummy; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;


 size_t ARB_VERTEX_SHADER ;
 struct wined3d_vertex_pipe_ops const ffp_vertex_pipe ;
 struct wined3d_shader_backend_ops const glsl_shader_backend ;
 struct wined3d_vertex_pipe_ops const glsl_vertex_pipe ;

__attribute__((used)) static const struct wined3d_vertex_pipe_ops *select_vertex_implementation(const struct wined3d_gl_info *gl_info,
        const struct wined3d_shader_backend_ops *shader_backend_ops)
{
    if (shader_backend_ops == &glsl_shader_backend && gl_info->supported[ARB_VERTEX_SHADER])
        return &glsl_vertex_pipe;
    return &ffp_vertex_pipe;
}
