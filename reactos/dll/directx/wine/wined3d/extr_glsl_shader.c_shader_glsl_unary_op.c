
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wined3d_shader_instruction {int handler_idx; TYPE_1__* ctx; int * src; } ;
struct glsl_src_param {int param_str; } ;
struct TYPE_2__ {int buffer; } ;
typedef int DWORD ;


 int ERR (char*,int ) ;


 int debug_d3dshaderinstructionhandler (int) ;
 int shader_addline (int ,char*,char const*,int ) ;
 int shader_glsl_add_src_param (struct wined3d_shader_instruction const*,int *,int ,struct glsl_src_param*) ;
 int shader_glsl_append_dst (int ,struct wined3d_shader_instruction const*) ;

__attribute__((used)) static void shader_glsl_unary_op(const struct wined3d_shader_instruction *ins)
{
    struct glsl_src_param src_param;
    DWORD write_mask;
    const char *op;

    switch (ins->handler_idx)
    {
        case 129: op = "-"; break;
        case 128: op = "~"; break;
        default:
            op = "<unhandled operator>";
            ERR("Unhandled opcode %s.\n",
                    debug_d3dshaderinstructionhandler(ins->handler_idx));
            break;
    }

    write_mask = shader_glsl_append_dst(ins->ctx->buffer, ins);
    shader_glsl_add_src_param(ins, &ins->src[0], write_mask, &src_param);
    shader_addline(ins->ctx->buffer, "%s%s);\n", op, src_param.param_str);
}
