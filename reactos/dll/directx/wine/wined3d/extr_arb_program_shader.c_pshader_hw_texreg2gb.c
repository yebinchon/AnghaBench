
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int * src; TYPE_4__* dst; TYPE_2__* ctx; } ;
struct TYPE_5__ {TYPE_3__* idx; } ;
struct TYPE_8__ {TYPE_1__ reg; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {struct wined3d_string_buffer* buffer; } ;
typedef int DWORD ;


 int shader_addline (struct wined3d_string_buffer*,char*,char*) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,TYPE_4__*,char*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;
 int shader_hw_sample (struct wined3d_shader_instruction const*,int ,char*,char*,int ,int *,int *) ;

__attribute__((used)) static void pshader_hw_texreg2gb(const struct wined3d_shader_instruction *ins)
{
     struct wined3d_string_buffer *buffer = ins->ctx->buffer;

     DWORD reg1 = ins->dst[0].reg.idx[0].offset;
     char dst_str[50];
     char src_str[50];


     shader_arb_get_dst_param(ins, &ins->dst[0], dst_str);
     shader_arb_get_src_param(ins, &ins->src[0], 0, src_str);
     shader_addline(buffer, "MOV TA.x, %s.y;\n", src_str);
     shader_addline(buffer, "MOV TA.y, %s.z;\n", src_str);
     shader_hw_sample(ins, reg1, dst_str, "TA", 0, ((void*)0), ((void*)0));
}
