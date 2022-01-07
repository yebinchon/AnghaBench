
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scope_chain; int code; } ;
typedef TYPE_1__ InterpretedFunction ;
typedef int FunctionInstance ;


 int release_bytecode (int ) ;
 int scope_release (scalar_t__) ;

__attribute__((used)) static void InterpretedFunction_destructor(FunctionInstance *func)
{
    InterpretedFunction *function = (InterpretedFunction*)func;

    release_bytecode(function->code);
    if(function->scope_chain)
        scope_release(function->scope_chain);
}
