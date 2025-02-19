
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int * src; TYPE_4__* ctx; TYPE_3__* dst; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_8__ {struct wined3d_string_buffer* buffer; } ;
struct TYPE_6__ {TYPE_1__* idx; } ;
struct TYPE_7__ {TYPE_2__ reg; } ;
struct TYPE_5__ {int offset; } ;
typedef int DWORD ;


 int WINED3DSP_WRITEMASK_0 ;
 int WINED3DSP_WRITEMASK_1 ;
 int WINED3DSP_WRITEMASK_2 ;
 int shader_addline (struct wined3d_string_buffer*,char*,int,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int,struct glsl_src_param*) ;

__attribute__((used)) static void shader_glsl_texm3x2pad(const struct wined3d_shader_instruction *ins)
{
    DWORD src_mask = WINED3DSP_WRITEMASK_0 | WINED3DSP_WRITEMASK_1 | WINED3DSP_WRITEMASK_2;
    DWORD reg = ins->dst[0].reg.idx[0].offset;
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;

    shader_glsl_add_src_param(ins, &ins->src[0], src_mask, &src0_param);
    shader_addline(buffer, "tmp0.x = dot(T%u.xyz, %s);\n", reg, src0_param.param_str);
}
