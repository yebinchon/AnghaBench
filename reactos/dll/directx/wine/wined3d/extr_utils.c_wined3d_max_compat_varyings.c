
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;


 int MAX_TEXTURES ;
 size_t WINED3D_GL_LEGACY_CONTEXT ;

unsigned int wined3d_max_compat_varyings(const struct wined3d_gl_info *gl_info)
{


    return gl_info->supported[WINED3D_GL_LEGACY_CONTEXT] ? MAX_TEXTURES * 4 : (MAX_TEXTURES + 2) * 4 + 1;
}
