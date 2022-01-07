
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_backend_ops {int dummy; } ;
struct wined3d_gl_info {scalar_t__ glsl_version; scalar_t__* supported; } ;
struct TYPE_2__ {scalar_t__ glslRequested; } ;
typedef int BOOL ;


 size_t ARB_FRAGMENT_PROGRAM ;
 size_t ARB_FRAGMENT_SHADER ;
 size_t ARB_VERTEX_PROGRAM ;
 size_t ARB_VERTEX_SHADER ;
 scalar_t__ MAKEDWORD_VERSION (int,int) ;
 struct wined3d_shader_backend_ops const arb_program_shader_backend ;
 struct wined3d_shader_backend_ops const glsl_shader_backend ;
 struct wined3d_shader_backend_ops const none_shader_backend ;
 TYPE_1__ wined3d_settings ;

__attribute__((used)) static const struct wined3d_shader_backend_ops *select_shader_backend(const struct wined3d_gl_info *gl_info)
{
    BOOL glsl = wined3d_settings.glslRequested && gl_info->glsl_version >= MAKEDWORD_VERSION(1, 20);

    if (glsl && gl_info->supported[ARB_VERTEX_SHADER] && gl_info->supported[ARB_FRAGMENT_SHADER])
        return &glsl_shader_backend;
    if (gl_info->supported[ARB_VERTEX_PROGRAM] && gl_info->supported[ARB_FRAGMENT_PROGRAM])
        return &arb_program_shader_backend;
    if (glsl && (gl_info->supported[ARB_VERTEX_SHADER] || gl_info->supported[ARB_FRAGMENT_SHADER]))
        return &glsl_shader_backend;
    if (gl_info->supported[ARB_VERTEX_PROGRAM] || gl_info->supported[ARB_FRAGMENT_PROGRAM])
        return &arb_program_shader_backend;
    return &none_shader_backend;
}
