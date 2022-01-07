
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_jump {int type; int return_value; } ;






 int TRACE (char*) ;
 int debug_dump_instr (int ) ;

__attribute__((used)) static void debug_dump_ir_jump(const struct hlsl_ir_jump *jump)
{
    switch (jump->type)
    {
        case 131:
            TRACE("break");
            break;
        case 130:
            TRACE("continue");
            break;
        case 129:
            TRACE("discard");
            break;
        case 128:
            TRACE("return ");
            if (jump->return_value)
                debug_dump_instr(jump->return_value);
            TRACE(";");
            break;
    }
}
