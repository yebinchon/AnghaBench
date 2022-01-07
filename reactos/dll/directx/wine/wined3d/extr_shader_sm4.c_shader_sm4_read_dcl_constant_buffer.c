
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_2__ {int src; } ;
struct wined3d_shader_instruction {int flags; TYPE_1__ declaration; } ;
typedef int DWORD ;


 int WINED3DSI_INDEXED_DYNAMIC ;
 int WINED3D_DATA_FLOAT ;
 int WINED3D_SM4_INDEX_TYPE_MASK ;
 int shader_sm4_read_src_param (struct wined3d_sm4_data*,int const**,int const*,int ,int *) ;

__attribute__((used)) static void shader_sm4_read_dcl_constant_buffer(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    shader_sm4_read_src_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_FLOAT, &ins->declaration.src);
    if (opcode_token & WINED3D_SM4_INDEX_TYPE_MASK)
        ins->flags |= WINED3DSI_INDEXED_DYNAMIC;
}
