
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_instruction {int flags; TYPE_3__* src; int * dst; } ;
typedef int WORD ;
struct TYPE_5__ {TYPE_1__* idx; } ;
struct TYPE_6__ {TYPE_2__ reg; } ;
struct TYPE_4__ {int offset; } ;
typedef int DWORD ;


 int TEX_BIAS ;
 int TEX_LOD ;
 int TEX_PROJ ;
 int WINED3DSI_TEXLD_BIAS ;
 int WINED3DSI_TEXLD_PROJECT ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,int *,char*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,TYPE_3__*,int ,char*) ;
 int shader_hw_sample (struct wined3d_shader_instruction const*,int ,char*,char*,int ,int *,int *) ;

__attribute__((used)) static void shader_hw_texldl(const struct wined3d_shader_instruction *ins)
{
    DWORD sampler_idx = ins->src[1].reg.idx[0].offset;
    char reg_dest[40];
    char reg_coord[40];
    WORD flags = TEX_LOD;

    shader_arb_get_dst_param(ins, &ins->dst[0], reg_dest);
    shader_arb_get_src_param(ins, &ins->src[0], 0, reg_coord);

    if (ins->flags & WINED3DSI_TEXLD_PROJECT) flags |= TEX_PROJ;
    if (ins->flags & WINED3DSI_TEXLD_BIAS) flags |= TEX_BIAS;

    shader_hw_sample(ins, sampler_idx, reg_dest, reg_coord, flags, ((void*)0), ((void*)0));
}
