
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_ir_var {scalar_t__ semantic; int name; int data_type; scalar_t__ modifiers; } ;


 int TRACE (char*,int ,...) ;
 int debug_hlsl_type (int ) ;
 int debug_modifiers (scalar_t__) ;
 int debugstr_a (scalar_t__) ;

__attribute__((used)) static void debug_dump_ir_var(const struct hlsl_ir_var *var)
{
    if (var->modifiers)
        TRACE("%s ", debug_modifiers(var->modifiers));
    TRACE("%s %s", debug_hlsl_type(var->data_type), var->name);
    if (var->semantic)
        TRACE(" : %s", debugstr_a(var->semantic));
}
