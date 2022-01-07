
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_2__ {int dst; } ;
struct wined3d_shader_instruction {int flags; TYPE_1__ declaration; } ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int WINED3D_DATA_SAMPLER ;
 int WINED3D_SM4_SAMPLER_COMPARISON ;
 int WINED3D_SM4_SAMPLER_MODE_MASK ;
 int WINED3D_SM4_SAMPLER_MODE_SHIFT ;
 int shader_sm4_read_dst_param (struct wined3d_sm4_data*,int const**,int const*,int ,int *) ;

__attribute__((used)) static void shader_sm4_read_dcl_sampler(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    ins->flags = (opcode_token & WINED3D_SM4_SAMPLER_MODE_MASK) >> WINED3D_SM4_SAMPLER_MODE_SHIFT;
    if (ins->flags & ~WINED3D_SM4_SAMPLER_COMPARISON)
        FIXME("Unhandled sampler mode %#x.\n", ins->flags);
    shader_sm4_read_dst_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_SAMPLER, &ins->declaration.dst);
}
