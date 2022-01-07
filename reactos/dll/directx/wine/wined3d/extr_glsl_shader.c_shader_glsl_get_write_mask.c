
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_dst_param {int reg; int write_mask; } ;
typedef int DWORD ;


 int WINED3DSP_WRITEMASK_0 ;
 int shader_glsl_write_mask_to_str (int ,char*) ;
 scalar_t__ shader_is_scalar (int *) ;

__attribute__((used)) static DWORD shader_glsl_get_write_mask(const struct wined3d_shader_dst_param *param, char *write_mask)
{
    DWORD mask = param->write_mask;

    if (shader_is_scalar(&param->reg))
    {
        mask = WINED3DSP_WRITEMASK_0;
        *write_mask = '\0';
    }
    else
    {
        shader_glsl_write_mask_to_str(mask, write_mask);
    }

    return mask;
}
