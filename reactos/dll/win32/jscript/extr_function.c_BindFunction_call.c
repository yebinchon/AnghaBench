
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_7__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {unsigned int argc; int this; TYPE_3__* target; int * args; } ;
struct TYPE_5__ {int (* call ) (int *,TYPE_3__*,int ,unsigned int,unsigned int,int *,int *) ;} ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int FunctionInstance ;
typedef TYPE_2__ BindFunction ;


 int E_OUTOFMEMORY ;
 int TRACE (char*,TYPE_2__*) ;
 int * heap_alloc (int) ;
 int heap_free (int *) ;
 int memcpy (int *,int *,unsigned int) ;
 int stub1 (int *,TYPE_3__*,int ,unsigned int,unsigned int,int *,int *) ;

__attribute__((used)) static HRESULT BindFunction_call(script_ctx_t *ctx, FunctionInstance *func, IDispatch *this_obj, unsigned flags,
         unsigned argc, jsval_t *argv, jsval_t *r)
{
    BindFunction *function = (BindFunction*)func;
    jsval_t *call_args = ((void*)0);
    unsigned call_argc;
    HRESULT hres;

    TRACE("%p\n", function);

    call_argc = function->argc + argc;
    if(call_argc) {
        call_args = heap_alloc(function->argc * sizeof(*function->args));
        if(!call_args)
            return E_OUTOFMEMORY;

        if(function->argc)
            memcpy(call_args, function->args, function->argc * sizeof(*call_args));
        if(argc)
            memcpy(call_args + function->argc, argv, argc * sizeof(*call_args));
    }

    hres = function->target->vtbl->call(ctx, function->target, function->this, flags, call_argc, call_args, r);

    heap_free(call_args);
    return hres;
}
