
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int glsl_vs_float_constants; unsigned int glsl_ps_float_constants; int glsl_varyings; } ;
struct wined3d_gl_info {TYPE_1__ limits; scalar_t__* supported; } ;
struct shader_caps {float ps_1x_max_value; int wined3d_caps; int varying_count; void* ps_uniform_count; void* vs_uniform_count; void* ps_version; void* vs_version; void* cs_version; void* gs_version; void* ds_version; void* hs_version; } ;
struct TYPE_4__ {int max_sm_cs; int max_sm_ps; int max_sm_gs; int max_sm_ds; int max_sm_hs; int max_sm_vs; } ;


 size_t ARB_FRAGMENT_SHADER ;
 size_t ARB_VERTEX_SHADER ;
 float FLT_MAX ;
 int TRACE (char*,unsigned int) ;
 int WINED3D_MAX_PS_CONSTS_F ;
 int WINED3D_MAX_VS_CONSTS_F ;
 int WINED3D_SHADER_CAP_SRGB_WRITE ;
 int WINED3D_SHADER_CAP_VS_CLIPPING ;
 void* min (int ,unsigned int) ;
 unsigned int shader_glsl_get_shader_model (struct wined3d_gl_info const*) ;
 TYPE_2__ wined3d_settings ;

__attribute__((used)) static void shader_glsl_get_caps(const struct wined3d_gl_info *gl_info, struct shader_caps *caps)
{
    unsigned int shader_model = shader_glsl_get_shader_model(gl_info);

    TRACE("Shader model %u.\n", shader_model);

    caps->vs_version = min(wined3d_settings.max_sm_vs, shader_model);
    caps->hs_version = min(wined3d_settings.max_sm_hs, shader_model);
    caps->ds_version = min(wined3d_settings.max_sm_ds, shader_model);
    caps->gs_version = min(wined3d_settings.max_sm_gs, shader_model);
    caps->ps_version = min(wined3d_settings.max_sm_ps, shader_model);
    caps->cs_version = min(wined3d_settings.max_sm_cs, shader_model);

    caps->vs_version = gl_info->supported[ARB_VERTEX_SHADER] ? caps->vs_version : 0;
    caps->ps_version = gl_info->supported[ARB_FRAGMENT_SHADER] ? caps->ps_version : 0;

    caps->vs_uniform_count = min(WINED3D_MAX_VS_CONSTS_F, gl_info->limits.glsl_vs_float_constants);
    caps->ps_uniform_count = min(WINED3D_MAX_PS_CONSTS_F, gl_info->limits.glsl_ps_float_constants);
    caps->varying_count = gl_info->limits.glsl_varyings;
    if (shader_model >= 4)
        caps->ps_1x_max_value = FLT_MAX;
    else
        caps->ps_1x_max_value = 1024.0f;




    caps->wined3d_caps = WINED3D_SHADER_CAP_VS_CLIPPING
            | WINED3D_SHADER_CAP_SRGB_WRITE;
}
