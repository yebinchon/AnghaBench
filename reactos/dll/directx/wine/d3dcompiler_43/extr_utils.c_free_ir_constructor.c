
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_constructor {unsigned int args_count; int * args; } ;


 int d3dcompiler_free (struct hlsl_ir_constructor*) ;
 int free_instr (int ) ;

__attribute__((used)) static void free_ir_constructor(struct hlsl_ir_constructor *constructor)
{
    unsigned int i;
    for (i = 0; i < constructor->args_count; ++i)
        free_instr(constructor->args[i]);
    d3dcompiler_free(constructor);
}
