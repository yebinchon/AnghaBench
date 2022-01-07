
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__ glsl_version; } ;


 scalar_t__ MAKEDWORD_VERSION (int,int) ;

__attribute__((used)) static unsigned int shader_glsl_get_version(const struct wined3d_gl_info *gl_info)
{
    if (gl_info->glsl_version >= MAKEDWORD_VERSION(4, 40))
        return 440;
    else if (gl_info->glsl_version >= MAKEDWORD_VERSION(1, 50))
        return 150;
    else if (gl_info->glsl_version >= MAKEDWORD_VERSION(1, 30))
        return 130;
    else
        return 120;
}
