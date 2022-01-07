
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int acc; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ;
 int DISPATCH_METHOD ;
 int JS_E_INVALID_PROPERTY ;
 int TRACE (char*,unsigned int const,int const) ;
 int clear_acc (TYPE_1__*) ;
 int disp_call_value (TYPE_1__*,int ,int *,int,unsigned int const,int ,int *) ;
 int get_object (int ) ;
 int get_op_int (TYPE_1__*,int) ;
 unsigned int get_op_uint (TYPE_1__*,int ) ;
 int is_object_instance (int ) ;
 int stack_args (TYPE_1__*,unsigned int const) ;
 int stack_topn (TYPE_1__*,unsigned int const) ;
 int throw_type_error (TYPE_1__*,int ,int *) ;

__attribute__((used)) static HRESULT interp_call(script_ctx_t *ctx)
{
    const unsigned argn = get_op_uint(ctx, 0);
    const int do_ret = get_op_int(ctx, 1);
    jsval_t obj;

    TRACE("%d %d\n", argn, do_ret);

    obj = stack_topn(ctx, argn);
    if(!is_object_instance(obj))
        return throw_type_error(ctx, JS_E_INVALID_PROPERTY, ((void*)0));

    clear_acc(ctx);
    return disp_call_value(ctx, get_object(obj), ((void*)0), DISPATCH_METHOD | DISPATCH_JSCRIPT_CALLEREXECSSOURCE,
                           argn, stack_args(ctx, argn), do_ret ? &ctx->acc : ((void*)0));
}
