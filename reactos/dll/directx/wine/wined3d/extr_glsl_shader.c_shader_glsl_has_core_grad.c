
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int BOOL ;


 size_t EXT_GPU_SHADER4 ;
 int shader_glsl_get_version (struct wined3d_gl_info const*) ;

__attribute__((used)) static BOOL shader_glsl_has_core_grad(const struct wined3d_gl_info *gl_info)
{
    return shader_glsl_get_version(gl_info) >= 130 || gl_info->supported[EXT_GPU_SHADER4];
}
