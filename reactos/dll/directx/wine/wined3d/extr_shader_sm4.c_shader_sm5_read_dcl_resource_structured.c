
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_4__ {int byte_stride; int reg; } ;
struct TYPE_3__ {TYPE_2__ structured_resource; } ;
struct wined3d_shader_instruction {TYPE_1__ declaration; } ;
typedef int DWORD ;


 int FIXME (char*,int) ;
 int WINED3D_DATA_RESOURCE ;
 int shader_sm4_read_dst_param (struct wined3d_sm4_data*,int const**,int const*,int ,int *) ;

__attribute__((used)) static void shader_sm5_read_dcl_resource_structured(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    shader_sm4_read_dst_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_RESOURCE,
            &ins->declaration.structured_resource.reg);
    ins->declaration.structured_resource.byte_stride = *tokens;
    if (ins->declaration.structured_resource.byte_stride % 4)
        FIXME("Byte stride %u is not multiple of 4.\n", ins->declaration.structured_resource.byte_stride);
}
