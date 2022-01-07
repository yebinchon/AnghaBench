
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


 int FIXME (char*,int ) ;
 int debug_d3dshaderinstructionhandler (int) ;
 int shader_addline (struct wined3d_string_buffer*,char*,int ,char const*,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (struct wined3d_string_buffer*,struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_binop(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    struct glsl_src_param src0_param;
    struct glsl_src_param src1_param;
    DWORD write_mask;
    const char *op;


    switch (ins->handler_idx)
    {
        case 138: op = "+"; break;
        case 137: op = "&"; break;
        case 136: op = "/"; break;
        case 135: op = "+"; break;
        case 134: op = "<<"; break;
        case 133: op = ">>"; break;
        case 132: op = "*"; break;
        case 131: op = "|"; break;
        case 130: op = "-"; break;
        case 129: op = ">>"; break;
        case 128: op = "^"; break;
        default:
            op = "<unhandled operator>";
            FIXME("Opcode %s not yet handled in GLSL.\n", debug_d3dshaderinstructionhandler(ins->handler_idx));
            break;
    }

    write_mask = shader_glsl_append_dst(buffer, ins);
    shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src0_param);
    shader_glsl_add_src_param(ins, &ins->src[1], write_mask, &src1_param);
    shader_addline(buffer, "%s %s %s);\n", src0_param.param_str, op, src1_param.param_str);
}
