
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int acc; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 int DISPATCH_CONSTRUCT ;
 int DISPATCH_JSCRIPT_CALLEREXECSSOURCE ;
 int JS_E_INVALID_ACTION ;
 int JS_E_INVALID_PROPERTY ;
 int JS_E_OBJECT_EXPECTED ;
 int TRACE (char*,unsigned int const) ;
 int clear_acc (TYPE_1__*) ;
 int disp_call_value (TYPE_1__*,int ,int *,int,unsigned int const,int ,int *) ;
 int get_object (int ) ;
 unsigned int get_op_uint (TYPE_1__*,int ) ;
 scalar_t__ is_null (int ) ;
 int is_object_instance (int ) ;
 int stack_args (TYPE_1__*,unsigned int const) ;
 int stack_topn (TYPE_1__*,unsigned int const) ;
 int throw_type_error (TYPE_1__*,int ,int *) ;

__attribute__((used)) static HRESULT interp_new(script_ctx_t *ctx)
{
    const unsigned argc = get_op_uint(ctx, 0);
    jsval_t constr;

    TRACE("%d\n", argc);

    constr = stack_topn(ctx, argc);



    if(is_null(constr))
        return throw_type_error(ctx, JS_E_OBJECT_EXPECTED, ((void*)0));
    else if(!is_object_instance(constr))
        return throw_type_error(ctx, JS_E_INVALID_ACTION, ((void*)0));
    else if(!get_object(constr))
        return throw_type_error(ctx, JS_E_INVALID_PROPERTY, ((void*)0));

    clear_acc(ctx);
    return disp_call_value(ctx, get_object(constr), ((void*)0), DISPATCH_CONSTRUCT | DISPATCH_JSCRIPT_CALLEREXECSSOURCE,
                           argc, stack_args(ctx, argc), &ctx->acc);
}
