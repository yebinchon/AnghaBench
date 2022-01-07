
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int arb_vs_native_constants; int arb_vs_float_constants; int arb_ps_native_constants; int arb_ps_float_constants; } ;
struct wined3d_gl_info {scalar_t__* supported; TYPE_1__ limits; } ;
struct shader_caps {float ps_1x_max_value; int wined3d_caps; scalar_t__ varying_count; void* ps_uniform_count; void* ps_version; scalar_t__ cs_version; scalar_t__ gs_version; scalar_t__ ds_version; scalar_t__ hs_version; void* vs_uniform_count; void* vs_version; } ;
typedef int UINT ;
struct TYPE_4__ {int max_sm_vs; int max_sm_ps; } ;
typedef int DWORD ;


 size_t ARB_FRAGMENT_PROGRAM ;
 size_t ARB_VERTEX_PROGRAM ;
 size_t NV_FRAGMENT_PROGRAM2 ;
 size_t NV_VERTEX_PROGRAM3 ;
 int TRACE (char*) ;
 int WINED3D_MAX_PS_CONSTS_F ;
 int WINED3D_MAX_VS_CONSTS_F ;
 int WINED3D_SHADER_CAP_SRGB_WRITE ;
 int WINED3D_SHADER_CAP_VS_CLIPPING ;
 void* min (int,int) ;
 scalar_t__ use_nv_clip (struct wined3d_gl_info const*) ;
 TYPE_2__ wined3d_settings ;

__attribute__((used)) static void shader_arb_get_caps(const struct wined3d_gl_info *gl_info, struct shader_caps *caps)
{
    if (gl_info->supported[ARB_VERTEX_PROGRAM])
    {
        DWORD vs_consts;
        UINT vs_version;





        if (gl_info->limits.arb_vs_native_constants < 96)
            vs_consts = gl_info->limits.arb_vs_float_constants;
        else
            vs_consts = min(gl_info->limits.arb_vs_float_constants, gl_info->limits.arb_vs_native_constants);

        if (gl_info->supported[NV_VERTEX_PROGRAM3])
        {
            vs_version = 3;
            TRACE("Hardware vertex shader version 3.0 enabled (NV_VERTEX_PROGRAM3)\n");
        }
        else if (vs_consts >= 256)
        {

            vs_version = 2;
            TRACE("Hardware vertex shader version 2.0 enabled (ARB_PROGRAM)\n");
        }
        else
        {
            vs_version = 1;
            TRACE("Hardware vertex shader version 1.1 enabled (ARB_PROGRAM)\n");
        }
        caps->vs_version = min(wined3d_settings.max_sm_vs, vs_version);
        caps->vs_uniform_count = min(WINED3D_MAX_VS_CONSTS_F, vs_consts);
    }
    else
    {
        caps->vs_version = 0;
        caps->vs_uniform_count = 0;
    }

    caps->hs_version = 0;
    caps->ds_version = 0;
    caps->gs_version = 0;
    caps->cs_version = 0;

    if (gl_info->supported[ARB_FRAGMENT_PROGRAM])
    {
        DWORD ps_consts;
        UINT ps_version;



        if (gl_info->limits.arb_ps_native_constants < 24)
            ps_consts = gl_info->limits.arb_ps_float_constants;
        else
            ps_consts = min(gl_info->limits.arb_ps_float_constants, gl_info->limits.arb_ps_native_constants);

        if (gl_info->supported[NV_FRAGMENT_PROGRAM2])
        {
            ps_version = 3;
            TRACE("Hardware pixel shader version 3.0 enabled (NV_FRAGMENT_PROGRAM2)\n");
        }
        else if (ps_consts >= 32)
        {

            ps_version = 2;
            TRACE("Hardware pixel shader version 2.0 enabled (ARB_PROGRAM)\n");
        }
        else
        {
            ps_version = 1;
            TRACE("Hardware pixel shader version 1.4 enabled (ARB_PROGRAM)\n");
        }
        caps->ps_version = min(wined3d_settings.max_sm_ps, ps_version);
        caps->ps_uniform_count = min(WINED3D_MAX_PS_CONSTS_F, ps_consts);
        caps->ps_1x_max_value = 8.0f;
    }
    else
    {
        caps->ps_version = 0;
        caps->ps_uniform_count = 0;
        caps->ps_1x_max_value = 0.0f;
    }

    caps->varying_count = 0;
    caps->wined3d_caps = WINED3D_SHADER_CAP_SRGB_WRITE;
    if (use_nv_clip(gl_info))
        caps->wined3d_caps |= WINED3D_SHADER_CAP_VS_CLIPPING;
}
