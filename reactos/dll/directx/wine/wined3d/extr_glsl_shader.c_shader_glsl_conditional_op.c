
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader_instruction {int handler_idx; } ;


 int ERR (char*,int) ;



 int shader_glsl_generate_conditional_op (struct wined3d_shader_instruction const*,char const*) ;

__attribute__((used)) static void shader_glsl_conditional_op(const struct wined3d_shader_instruction *ins)
{
    const char *op;

    switch (ins->handler_idx)
    {
        case 130: op = "break;"; break;
        case 129: op = "continue;"; break;
        case 128: op = "return;"; break;
        default:
            ERR("Unhandled opcode %#x.\n", ins->handler_idx);
            return;
    }

    shader_glsl_generate_conditional_op(ins, op);
}
