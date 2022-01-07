
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_string_buffer {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;


 int shader_addline (struct wined3d_string_buffer*,char*,int ) ;
 int shader_glsl_get_version (struct wined3d_gl_info const*) ;

__attribute__((used)) static void shader_glsl_add_version_declaration(struct wined3d_string_buffer *buffer,
        const struct wined3d_gl_info *gl_info)
{
    shader_addline(buffer, "#version %u\n", shader_glsl_get_version(gl_info));
}
