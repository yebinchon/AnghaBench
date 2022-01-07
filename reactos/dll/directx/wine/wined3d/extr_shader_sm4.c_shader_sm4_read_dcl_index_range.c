
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_3__ {int last_register; int first_register; } ;
struct TYPE_4__ {TYPE_1__ index_range; } ;
struct wined3d_shader_instruction {TYPE_2__ declaration; } ;
typedef int DWORD ;


 int WINED3D_DATA_OPAQUE ;
 int shader_sm4_read_dst_param (struct wined3d_sm4_data*,int const**,int const*,int ,int *) ;

__attribute__((used)) static void shader_sm4_read_dcl_index_range(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    shader_sm4_read_dst_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_OPAQUE,
            &ins->declaration.index_range.first_register);
    ins->declaration.index_range.last_register = *tokens;
}
