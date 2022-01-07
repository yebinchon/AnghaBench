
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_type; } ;
struct hlsl_ir_constructor {unsigned int args_count; int * args; TYPE_1__ node; } ;


 int TRACE (char*,...) ;
 int debug_dump_instr (int ) ;
 int debug_hlsl_type (int ) ;

__attribute__((used)) static void debug_dump_ir_constructor(const struct hlsl_ir_constructor *constructor)
{
    unsigned int i;

    TRACE("%s (", debug_hlsl_type(constructor->node.data_type));
    for (i = 0; i < constructor->args_count; ++i)
    {
        debug_dump_instr(constructor->args[i]);
        TRACE(" ");
    }
    TRACE(")");
}
