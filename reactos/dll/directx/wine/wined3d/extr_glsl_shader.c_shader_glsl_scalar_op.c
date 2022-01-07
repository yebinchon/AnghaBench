
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int handler_idx; int * src; TYPE_3__* ctx; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_6__ {struct wined3d_string_buffer* buffer; TYPE_2__* reg_maps; } ;
struct TYPE_4__ {int major; int minor; } ;
struct TYPE_5__ {TYPE_1__ shader_version; } ;
typedef int DWORD ;


 int FIXME (char*,int) ;






 int WINED3DSP_WRITEMASK_3 ;
 int WINED3D_SHADER_VERSION (int,int ) ;
 int shader_addline (struct wined3d_string_buffer*,char*,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ;
 unsigned int shader_glsl_get_write_mask_size (int ) ;

__attribute__((used)) static void shader_glsl_scalar_op(const struct wined3d_shader_instruction *ins)
{
    DWORD shader_version = WINED3D_SHADER_VERSION(ins->ctx->reg_maps->shader_version.major,
            ins->ctx->reg_maps->shader_version.minor);
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    const char *prefix, *suffix;
    unsigned int dst_size;
    DWORD dst_write_mask;

    dst_write_mask = shader_glsl_append_dst(buffer, ins);
    dst_size = shader_glsl_get_write_mask_size(dst_write_mask);

    if (shader_version < WINED3D_SHADER_VERSION(4, 0))
        dst_write_mask = WINED3DSP_WRITEMASK_3;

    shader_glsl_add_src_param(ins, &ins->src[0], dst_write_mask, &src0_param);

    switch (ins->handler_idx)
    {
        case 133:
        case 132:
            prefix = "exp2(";
            suffix = ")";
            break;

        case 131:
        case 130:
            prefix = "log2(abs(";
            suffix = "))";
            break;

        case 129:
            prefix = "1.0 / ";
            suffix = "";
            break;

        case 128:
            prefix = "inversesqrt(abs(";
            suffix = "))";
            break;

        default:
            prefix = "";
            suffix = "";
            FIXME("Unhandled instruction %#x.\n", ins->handler_idx);
            break;
    }

    if (dst_size > 1 && shader_version < WINED3D_SHADER_VERSION(4, 0))
        shader_addline(buffer, "vec%u(%s%s%s));\n", dst_size, prefix, src0_param.param_str, suffix);
    else
        shader_addline(buffer, "%s%s%s);\n", prefix, src0_param.param_str, suffix);
}
