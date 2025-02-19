
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_sm4_data {int dummy; } ;
struct wined3d_shader_dst_param {int write_mask; scalar_t__ shift; scalar_t__ modifiers; int reg; } ;
typedef enum wined3d_shader_src_modifier { ____Placeholder_wined3d_shader_src_modifier } wined3d_shader_src_modifier ;
typedef enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*,...) ;
 int FALSE ;
 int TRUE ;
 int WARN (char*,int const*,int const*) ;
 int WINED3DSPSM_NONE ;
 int WINED3D_SM4_WRITEMASK_MASK ;
 int WINED3D_SM4_WRITEMASK_SHIFT ;
 int shader_sm4_read_param (struct wined3d_sm4_data*,int const**,int const*,int,int *,int*) ;

__attribute__((used)) static BOOL shader_sm4_read_dst_param(struct wined3d_sm4_data *priv, const DWORD **ptr, const DWORD *end,
        enum wined3d_data_type data_type, struct wined3d_shader_dst_param *dst_param)
{
    enum wined3d_shader_src_modifier modifier;
    DWORD token;

    if (*ptr >= end)
    {
        WARN("Invalid ptr %p >= end %p.\n", *ptr, end);
        return FALSE;
    }
    token = **ptr;

    if (!shader_sm4_read_param(priv, ptr, end, data_type, &dst_param->reg, &modifier))
    {
        ERR("Failed to read parameter.\n");
        return FALSE;
    }

    if (modifier != WINED3DSPSM_NONE)
    {
        ERR("Invalid source modifier %#x on destination register.\n", modifier);
        return FALSE;
    }

    dst_param->write_mask = (token & WINED3D_SM4_WRITEMASK_MASK) >> WINED3D_SM4_WRITEMASK_SHIFT;
    dst_param->modifiers = 0;
    dst_param->shift = 0;

    return TRUE;
}
