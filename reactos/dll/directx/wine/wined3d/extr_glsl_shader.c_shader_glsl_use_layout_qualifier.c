
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {int dummy; } ;
typedef int BOOL ;


 int shader_glsl_get_version (struct wined3d_gl_info const*) ;

__attribute__((used)) static BOOL shader_glsl_use_layout_qualifier(const struct wined3d_gl_info *gl_info)
{



    return shader_glsl_get_version(gl_info) >= 140;
}
