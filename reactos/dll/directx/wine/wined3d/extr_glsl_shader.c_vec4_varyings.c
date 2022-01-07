
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int glsl_varyings; } ;
struct wined3d_gl_info {int quirks; TYPE_1__ limits; } ;
typedef int DWORD ;


 int WINED3D_QUIRK_GLSL_CLIP_VARYING ;

__attribute__((used)) static unsigned int vec4_varyings(DWORD shader_major, const struct wined3d_gl_info *gl_info)
{
    unsigned int ret = gl_info->limits.glsl_varyings / 4;

    if(shader_major > 3) return ret;


    if (gl_info->quirks & WINED3D_QUIRK_GLSL_CLIP_VARYING) ret -= 1;
    return ret;
}
