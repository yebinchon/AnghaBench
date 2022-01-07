
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;


 scalar_t__ shader_glsl_use_interface_blocks (struct wined3d_gl_info const*) ;

__attribute__((used)) static const char *shader_glsl_shader_input_name(const struct wined3d_gl_info *gl_info)
{
    return shader_glsl_use_interface_blocks(gl_info) ? "shader_in.reg" : "ps_link";
}
