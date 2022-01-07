
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tag; } ;
struct symt_function_signature {int vchildren; TYPE_1__ symt; } ;
struct symt {int tag; } ;
struct symt_function_arg_type {struct symt symt; TYPE_1__* container; struct symt* arg_type; } ;
struct module {int pool; } ;
typedef int BOOL ;


 int FALSE ;
 int SymTagFunctionArgType ;
 scalar_t__ SymTagFunctionType ;
 int TRUE ;
 int assert (int) ;
 struct symt_function_arg_type* pool_alloc (int *,int) ;
 struct symt** vector_add (int *,int *) ;

BOOL symt_add_function_signature_parameter(struct module* module,
                                           struct symt_function_signature* sig_type,
                                           struct symt* param)
{
    struct symt** p;
    struct symt_function_arg_type* arg;

    assert(sig_type->symt.tag == SymTagFunctionType);
    arg = pool_alloc(&module->pool, sizeof(*arg));
    if (!arg) return FALSE;
    arg->symt.tag = SymTagFunctionArgType;
    arg->arg_type = param;
    arg->container = &sig_type->symt;
    p = vector_add(&sig_type->vchildren, &module->pool);
    if (!p) return FALSE;
    *p = &arg->symt;

    return TRUE;
}
