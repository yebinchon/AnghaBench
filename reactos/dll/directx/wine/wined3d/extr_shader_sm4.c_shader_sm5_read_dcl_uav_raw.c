
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_2__ {int dst; } ;
struct wined3d_shader_instruction {int flags; TYPE_1__ declaration; } ;
typedef int DWORD ;


 int WINED3D_DATA_UAV ;
 int WINED3D_SM5_UAV_FLAGS_MASK ;
 int WINED3D_SM5_UAV_FLAGS_SHIFT ;
 int shader_sm4_read_dst_param (struct wined3d_sm4_data*,int const**,int const*,int ,int *) ;

__attribute__((used)) static void shader_sm5_read_dcl_uav_raw(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    shader_sm4_read_dst_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_UAV, &ins->declaration.dst);
    ins->flags = (opcode_token & WINED3D_SM5_UAV_FLAGS_MASK) >> WINED3D_SM5_UAV_FLAGS_SHIFT;
}
