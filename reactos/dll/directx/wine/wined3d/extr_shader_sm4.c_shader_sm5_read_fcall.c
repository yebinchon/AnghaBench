
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_sm4_data {TYPE_3__* src_param; } ;
struct wined3d_shader_instruction {int dummy; } ;
struct TYPE_4__ {int fp_body_idx; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__ reg; } ;
typedef int DWORD ;


 int WINED3D_DATA_OPAQUE ;
 int shader_sm4_read_src_param (struct wined3d_sm4_data*,int const**,int const*,int ,TYPE_3__*) ;

__attribute__((used)) static void shader_sm5_read_fcall(struct wined3d_shader_instruction *ins,
        DWORD opcode, DWORD opcode_token, const DWORD *tokens, unsigned int token_count,
        struct wined3d_sm4_data *priv)
{
    priv->src_param[0].reg.u.fp_body_idx = *tokens++;
    shader_sm4_read_src_param(priv, &tokens, &tokens[token_count], WINED3D_DATA_OPAQUE, &priv->src_param[0]);
}
