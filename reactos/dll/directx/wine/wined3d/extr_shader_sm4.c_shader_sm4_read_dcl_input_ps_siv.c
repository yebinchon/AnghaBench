
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_3__ {int sysval_semantic; int reg; } ;
struct TYPE_4__ {TYPE_1__ register_semantic; } ;
struct wined3d_shader_instruction {int flags; TYPE_2__ declaration; } ;
typedef int DWORD ;


 int WINED3D_DATA_FLOAT ;
 int WINED3D_SM4_INTERPOLATION_MODE_MASK ;
 int WINED3D_SM4_INTERPOLATION_MODE_SHIFT ;
 int shader_sm4_read_dst_param (struct wined3d_sm4_data*,int const**,int const*,int ,int *) ;

__attribute__((used)) static void shader_sm4_read_dcl_input_ps_siv(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    ins->flags = (opcode_token & WINED3D_SM4_INTERPOLATION_MODE_MASK) >> WINED3D_SM4_INTERPOLATION_MODE_SHIFT;
    shader_sm4_read_dst_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_FLOAT,
            &ins->declaration.register_semantic.reg);
    ins->declaration.register_semantic.sysval_semantic = *tokens;
}
