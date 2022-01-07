
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int exprval_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JS_E_ILLEGAL_ASSIGN ;
 int TRACE (char*) ;
 int exprval_propput (int *,int *,int ) ;
 int exprval_release (int *) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_pop_exprval (int *,int *) ;
 int stack_push (int *,int ) ;
 int throw_reference_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT interp_assign(script_ctx_t *ctx)
{
    exprval_t ref;
    jsval_t v;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);

    if(!stack_pop_exprval(ctx, &ref)) {
        jsval_release(v);
        return throw_reference_error(ctx, JS_E_ILLEGAL_ASSIGN, ((void*)0));
    }

    hres = exprval_propput(ctx, &ref, v);
    exprval_release(&ref);
    if(FAILED(hres)) {
        jsval_release(v);
        return hres;
    }

    return stack_push(ctx, v);
}
