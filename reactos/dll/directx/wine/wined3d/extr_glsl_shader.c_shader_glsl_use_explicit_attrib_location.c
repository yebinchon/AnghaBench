
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int BOOL ;


 size_t ARB_EXPLICIT_ATTRIB_LOCATION ;
 int needs_legacy_glsl_syntax (struct wined3d_gl_info const*) ;
 scalar_t__ shader_glsl_use_layout_qualifier (struct wined3d_gl_info const*) ;

__attribute__((used)) static BOOL shader_glsl_use_explicit_attrib_location(const struct wined3d_gl_info *gl_info)
{
    return gl_info->supported[ARB_EXPLICIT_ATTRIB_LOCATION]
            && shader_glsl_use_layout_qualifier(gl_info) && !needs_legacy_glsl_syntax(gl_info);
}
