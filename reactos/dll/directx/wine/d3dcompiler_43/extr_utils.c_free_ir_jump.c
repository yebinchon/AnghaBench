
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_jump {scalar_t__ type; int return_value; } ;


 scalar_t__ HLSL_IR_JUMP_RETURN ;
 int d3dcompiler_free (struct hlsl_ir_jump*) ;
 int free_instr (int ) ;

__attribute__((used)) static void free_ir_jump(struct hlsl_ir_jump *jump)
{
    if (jump->type == HLSL_IR_JUMP_RETURN)
        free_instr(jump->return_value);
    d3dcompiler_free(jump);
}
