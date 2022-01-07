
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_shader_instruction {int * src; TYPE_3__* dst; } ;
struct TYPE_5__ {TYPE_1__* idx; } ;
struct TYPE_6__ {TYPE_2__ reg; } ;
struct TYPE_4__ {int offset; } ;
typedef int DWORD ;


 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,TYPE_3__*,char*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;
 int shader_hw_sample (struct wined3d_shader_instruction const*,int ,char*,char*,int ,int *,int *) ;

__attribute__((used)) static void pshader_hw_texreg2rgb(const struct wined3d_shader_instruction *ins)
{
    DWORD reg1 = ins->dst[0].reg.idx[0].offset;
    char dst_str[50];
    char src_str[50];


    shader_arb_get_dst_param(ins, &ins->dst[0], dst_str);
    shader_arb_get_src_param(ins, &ins->src[0], 0, src_str);
    shader_hw_sample(ins, reg1, dst_str, src_str, 0, ((void*)0), ((void*)0));
}
