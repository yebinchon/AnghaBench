
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int handler_idx; int * src; TYPE_1__* ctx; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_2__ {struct wined3d_string_buffer* buffer; } ;
typedef int DWORD ;


 int ERR (char*,int) ;
 int shader_addline (struct wined3d_string_buffer*,char*,unsigned int,char const*,int ,...) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ;
 unsigned int shader_glsl_get_write_mask_size (int ) ;

__attribute__((used)) static void shader_glsl_relop(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    unsigned int mask_size;
    DWORD write_mask;
    const char *op;

    write_mask = shader_glsl_append_dst(buffer, ins);
    mask_size = shader_glsl_get_write_mask_size(write_mask);
    shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src0_param);
    shader_glsl_add_src_param(ins, &ins->src[1], write_mask, &src1_param);

    if (mask_size > 1)
    {
        switch (ins->handler_idx)
        {
            case 137: op = "equal"; break;
            case 135: op = "equal"; break;
            case 136: op = "greaterThanEqual"; break;
            case 134: op = "greaterThanEqual"; break;
            case 129: op = "greaterThanEqual"; break;
            case 131: op = "lessThan"; break;
            case 133: op = "lessThan"; break;
            case 128: op = "lessThan"; break;
            case 130: op = "notEqual"; break;
            case 132: op = "notEqual"; break;
            default:
                op = "<unhandled operator>";
                ERR("Unhandled opcode %#x.\n", ins->handler_idx);
                break;
        }

        shader_addline(buffer, "uvec%u(%s(%s, %s)) * 0xffffffffu);\n",
                mask_size, op, src0_param.param_str, src1_param.param_str);
    }
    else
    {
        switch (ins->handler_idx)
        {
            case 137: op = "=="; break;
            case 135: op = "=="; break;
            case 136: op = ">="; break;
            case 134: op = ">="; break;
            case 129: op = ">="; break;
            case 131: op = "<"; break;
            case 133: op = "<"; break;
            case 128: op = "<"; break;
            case 130: op = "!="; break;
            case 132: op = "!="; break;
            default:
                op = "<unhandled operator>";
                ERR("Unhandled opcode %#x.\n", ins->handler_idx);
                break;
        }

        shader_addline(buffer, "%s %s %s ? 0xffffffffu : 0u);\n",
                src0_param.param_str, op, src1_param.param_str);
    }
}
