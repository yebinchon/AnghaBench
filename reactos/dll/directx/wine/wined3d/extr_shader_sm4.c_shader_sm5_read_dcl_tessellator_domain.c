
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_sm4_data {int dummy; } ;
struct TYPE_2__ {int tessellator_domain; } ;
struct wined3d_shader_instruction {TYPE_1__ declaration; } ;
typedef int DWORD ;


 int WINED3D_SM5_TESSELLATOR_MASK ;
 int WINED3D_SM5_TESSELLATOR_SHIFT ;

__attribute__((used)) static void shader_sm5_read_dcl_tessellator_domain(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    ins->declaration.tessellator_domain = (opcode_token & WINED3D_SM5_TESSELLATOR_MASK)
        >> WINED3D_SM5_TESSELLATOR_SHIFT;
}
