
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int argc; int this; TYPE_1__* target; int * args; } ;
struct TYPE_4__ {int dispex; } ;
typedef int FunctionInstance ;
typedef TYPE_2__ BindFunction ;


 int IDispatch_Release (int ) ;
 int TRACE (char*,TYPE_2__*) ;
 int jsdisp_release (int *) ;
 int jsval_release (int ) ;

__attribute__((used)) static void BindFunction_destructor(FunctionInstance *func)
{
    BindFunction *function = (BindFunction*)func;
    unsigned i;

    TRACE("%p\n", function);

    for(i = 0; i < function->argc; i++)
        jsval_release(function->args[i]);
    jsdisp_release(&function->target->dispex);
    IDispatch_Release(function->this);
}
