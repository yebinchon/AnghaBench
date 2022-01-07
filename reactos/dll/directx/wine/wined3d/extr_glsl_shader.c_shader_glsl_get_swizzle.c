
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_src_param {int swizzle; int reg; } ;
typedef int DWORD ;
typedef int BOOL ;


 int shader_glsl_swizzle_to_str (int ,int ,int ,char*) ;
 scalar_t__ shader_is_scalar (int *) ;

__attribute__((used)) static void shader_glsl_get_swizzle(const struct wined3d_shader_src_param *param,
        BOOL fixup, DWORD mask, char *swizzle_str)
{
    if (shader_is_scalar(&param->reg))
        *swizzle_str = '\0';
    else
        shader_glsl_swizzle_to_str(param->swizzle, fixup, mask, swizzle_str);
}
