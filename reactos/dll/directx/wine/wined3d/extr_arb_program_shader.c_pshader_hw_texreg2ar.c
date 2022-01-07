
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_3__* ctx; int * src; TYPE_6__* dst; } ;
struct shader_arb_ctx_priv {TYPE_5__* cur_ps_args; } ;
struct TYPE_8__ {TYPE_1__* idx; } ;
struct TYPE_12__ {TYPE_2__ reg; } ;
struct TYPE_10__ {scalar_t__ tex_transform; } ;
struct TYPE_11__ {TYPE_4__ super; } ;
struct TYPE_9__ {struct shader_arb_ctx_priv* backend_data; struct wined3d_string_buffer* buffer; } ;
struct TYPE_7__ {scalar_t__ offset; } ;
typedef scalar_t__ DWORD ;


 scalar_t__ MAX_TEXTURES ;
 int TEX_PROJ ;
 scalar_t__ WINED3D_PSARGS_PROJECTED ;
 scalar_t__ WINED3D_PSARGS_TEXTRANSFORM_SHIFT ;
 int shader_addline (struct wined3d_string_buffer*,char*,char*) ;
 int shader_arb_get_dst_param (struct wined3d_shader_instruction const*,TYPE_6__*,char*) ;
 int shader_arb_get_src_param (struct wined3d_shader_instruction const*,int *,int ,char*) ;
 int shader_hw_sample (struct wined3d_shader_instruction const*,scalar_t__,char*,char*,int ,int *,int *) ;

__attribute__((used)) static void pshader_hw_texreg2ar(const struct wined3d_shader_instruction *ins)
{
     struct wined3d_string_buffer *buffer = ins->ctx->buffer;
     DWORD flags = 0;

     DWORD reg1 = ins->dst[0].reg.idx[0].offset;
     char dst_str[50];
     char src_str[50];


     shader_arb_get_dst_param(ins, &ins->dst[0], dst_str);
     shader_arb_get_src_param(ins, &ins->src[0], 0, src_str);

     shader_addline(buffer, "MOV TA.y, %s.x;\n", src_str);
     shader_addline(buffer, "MOV TA.x, %s.w;\n", src_str);
     if (reg1 < MAX_TEXTURES)
     {
         struct shader_arb_ctx_priv *priv = ins->ctx->backend_data;
         flags = priv->cur_ps_args->super.tex_transform >> reg1 * WINED3D_PSARGS_TEXTRANSFORM_SHIFT;
     }
     shader_hw_sample(ins, reg1, dst_str, "TA", flags & WINED3D_PSARGS_PROJECTED ? TEX_PROJ : 0, ((void*)0), ((void*)0));
}
