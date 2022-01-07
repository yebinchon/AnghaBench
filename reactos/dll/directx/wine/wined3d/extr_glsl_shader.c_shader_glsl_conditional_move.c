
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wined3d_shader_instruction {int handler_idx; TYPE_2__* ctx; struct wined3d_shader_dst_param* dst; TYPE_4__* src; } ;
struct TYPE_7__ {scalar_t__ type; int data_type; TYPE_1__* idx; } ;
struct wined3d_shader_dst_param {unsigned int write_mask; TYPE_3__ reg; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_8__ {int swizzle; TYPE_3__ reg; } ;
struct TYPE_6__ {int buffer; } ;
struct TYPE_5__ {scalar_t__ offset; } ;
typedef unsigned int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FIXME (char*,int) ;
 scalar_t__ TRUE ;



 unsigned int WINED3DSP_WRITEMASK_0 ;
 int shader_addline (int ,char*,char const*,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,TYPE_4__*,unsigned int,struct glsl_src_param*) ;
 unsigned int shader_glsl_append_dst (int ,struct wined3d_shader_instruction const*) ;
 unsigned int shader_glsl_append_dst_ext (int ,struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param*,int ) ;
 unsigned int shader_glsl_get_write_mask (struct wined3d_shader_dst_param*,char*) ;
 unsigned int shader_glsl_swizzle_get_component (int ,unsigned int) ;
 scalar_t__ shader_is_scalar (TYPE_3__*) ;

__attribute__((used)) static void shader_glsl_conditional_move(const struct wined3d_shader_instruction *ins)
{
    const char *condition_prefix, *condition_suffix;
    struct wined3d_shader_dst_param dst;
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    struct glsl_src_param src2_param;
    BOOL temp_destination = FALSE;
    DWORD cmp_channel = 0;
    unsigned int i, j;
    char mask_char[6];
    DWORD write_mask;

    switch (ins->handler_idx)
    {
        case 130:
            condition_prefix = "";
            condition_suffix = " >= 0.0";
            break;

        case 129:
            condition_prefix = "";
            condition_suffix = " > 0.5";
            break;

        case 128:
            condition_prefix = "bool(";
            condition_suffix = ")";
            break;

        default:
            FIXME("Unhandled instruction %#x.\n", ins->handler_idx);
            condition_prefix = "<unhandled prefix>";
            condition_suffix = "<unhandled suffix>";
            break;
    }

    if (shader_is_scalar(&ins->dst[0].reg) || shader_is_scalar(&ins->src[0].reg))
    {
        write_mask = shader_glsl_append_dst(ins->ctx->buffer, ins);
        shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src0_param);
        shader_glsl_add_src_param(ins, &ins->src[1], write_mask, &src1_param);
        shader_glsl_add_src_param(ins, &ins->src[2], write_mask, &src2_param);

        shader_addline(ins->ctx->buffer, "%s%s%s ? %s : %s);\n",
                condition_prefix, src0_param.param_str, condition_suffix,
                src1_param.param_str, src2_param.param_str);
        return;
    }

    dst = ins->dst[0];




    if ((ins->src[0].reg.idx[0].offset == dst.reg.idx[0].offset
                && ins->src[0].reg.type == dst.reg.type)
            || (ins->src[1].reg.idx[0].offset == dst.reg.idx[0].offset
                && ins->src[1].reg.type == dst.reg.type)
            || (ins->src[2].reg.idx[0].offset == dst.reg.idx[0].offset
                && ins->src[2].reg.type == dst.reg.type))
        temp_destination = TRUE;


    for (i = 0; i < 4; ++i)
    {
        write_mask = 0;

        for (j = 0; j < 4; ++j)
        {
            if (shader_glsl_swizzle_get_component(ins->src[0].swizzle, j) == i)
            {
                write_mask |= WINED3DSP_WRITEMASK_0 << j;
                cmp_channel = WINED3DSP_WRITEMASK_0 << j;
            }
        }
        dst.write_mask = ins->dst[0].write_mask & write_mask;

        if (temp_destination)
        {
            if (!(write_mask = shader_glsl_get_write_mask(&dst, mask_char)))
                continue;
            shader_addline(ins->ctx->buffer, "tmp0%s = (", mask_char);
        }
        else if (!(write_mask = shader_glsl_append_dst_ext(ins->ctx->buffer, ins, &dst, dst.reg.data_type)))
            continue;

        shader_glsl_add_src_param(ins, &ins->src[0], cmp_channel, &src0_param);
        shader_glsl_add_src_param(ins, &ins->src[1], write_mask, &src1_param);
        shader_glsl_add_src_param(ins, &ins->src[2], write_mask, &src2_param);

        shader_addline(ins->ctx->buffer, "%s%s%s ? %s : %s);\n",
                condition_prefix, src0_param.param_str, condition_suffix,
                src1_param.param_str, src2_param.param_str);
    }

    if (temp_destination)
    {
        shader_glsl_get_write_mask(&ins->dst[0], mask_char);
        shader_glsl_append_dst(ins->ctx->buffer, ins);
        shader_addline(ins->ctx->buffer, "tmp0%s);\n", mask_char);
    }
}
