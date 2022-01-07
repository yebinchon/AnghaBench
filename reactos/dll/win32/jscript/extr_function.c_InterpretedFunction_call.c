
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_2__ script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_9__ {int dispex; } ;
struct TYPE_11__ {TYPE_1__ function; int scope_chain; int func_code; int code; } ;
typedef TYPE_3__ InterpretedFunction ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int FunctionInstance ;
typedef int DWORD ;


 unsigned int DISPATCH_CONSTRUCT ;
 unsigned int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ;
 int EXEC_CONSTRUCTOR ;
 int EXEC_RETURN_TO_INTERP ;
 int E_UNEXPECTED ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SCRIPTSTATE_CLOSED ;
 scalar_t__ SCRIPTSTATE_UNINITIALIZED ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,TYPE_3__*) ;
 int WARN (char*) ;
 int create_dispex (TYPE_2__*,int *,int *,int **) ;
 int create_object (TYPE_2__*,int *,int **) ;
 int exec_source (TYPE_2__*,int ,int ,int ,int ,int *,int *,int *,unsigned int,int *,int *) ;
 int jsdisp_release (int *) ;
 int * to_disp (int *) ;

__attribute__((used)) static HRESULT InterpretedFunction_call(script_ctx_t *ctx, FunctionInstance *func, IDispatch *this_obj, unsigned flags,
         unsigned argc, jsval_t *argv, jsval_t *r)
{
    InterpretedFunction *function = (InterpretedFunction*)func;
    jsdisp_t *var_disp, *new_obj = ((void*)0);
    DWORD exec_flags = 0;
    HRESULT hres;

    TRACE("%p\n", function);

    if(ctx->state == SCRIPTSTATE_UNINITIALIZED || ctx->state == SCRIPTSTATE_CLOSED) {
        WARN("Script engine state does not allow running code.\n");
        return E_UNEXPECTED;
    }

    if(flags & DISPATCH_CONSTRUCT) {
        hres = create_object(ctx, &function->function.dispex, &new_obj);
        if(FAILED(hres))
            return hres;
        this_obj = to_disp(new_obj);
    }

    if(flags & DISPATCH_JSCRIPT_CALLEREXECSSOURCE)
        exec_flags |= EXEC_RETURN_TO_INTERP;
    if(flags & DISPATCH_CONSTRUCT)
        exec_flags |= EXEC_CONSTRUCTOR;

    hres = create_dispex(ctx, ((void*)0), ((void*)0), &var_disp);
    if(SUCCEEDED(hres))
        hres = exec_source(ctx, exec_flags, function->code, function->func_code, function->scope_chain, this_obj,
                           &function->function.dispex, var_disp, argc, argv, r);
    if(new_obj)
        jsdisp_release(new_obj);

    jsdisp_release(var_disp);
    return hres;
}
