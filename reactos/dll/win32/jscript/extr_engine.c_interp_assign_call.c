
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int exprval_t ;
typedef int HRESULT ;


 int DISPATCH_PROPERTYPUT ;
 scalar_t__ FAILED (int ) ;
 int JS_E_ILLEGAL_ASSIGN ;
 int TRACE (char*,unsigned int const) ;
 int exprval_call (int *,int *,int ,unsigned int const,int ,int *) ;
 unsigned int get_op_uint (int *,int ) ;
 int stack_args (int *,unsigned int const) ;
 int stack_pop (int *) ;
 int stack_popn (int *,unsigned int const) ;
 int stack_push (int *,int ) ;
 int stack_topn_exprval (int *,unsigned int const,int *) ;
 int throw_reference_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT interp_assign_call(script_ctx_t *ctx)
{
    const unsigned argc = get_op_uint(ctx, 0);
    exprval_t ref;
    jsval_t v;
    HRESULT hres;

    TRACE("%u\n", argc);

    if(!stack_topn_exprval(ctx, argc+1, &ref))
        return throw_reference_error(ctx, JS_E_ILLEGAL_ASSIGN, ((void*)0));

    hres = exprval_call(ctx, &ref, DISPATCH_PROPERTYPUT, argc+1, stack_args(ctx, argc+1), ((void*)0));
    if(FAILED(hres))
        return hres;

    v = stack_pop(ctx);
    stack_popn(ctx, argc+2);
    return stack_push(ctx, v);
}
