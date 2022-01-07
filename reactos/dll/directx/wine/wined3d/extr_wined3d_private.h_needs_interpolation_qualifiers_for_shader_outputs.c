
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__ glsl_version; } ;
typedef int BOOL ;


 scalar_t__ MAKEDWORD_VERSION (int,int) ;

__attribute__((used)) static inline BOOL needs_interpolation_qualifiers_for_shader_outputs(const struct wined3d_gl_info *gl_info)
{




    return gl_info->glsl_version < MAKEDWORD_VERSION(4, 40);
}
