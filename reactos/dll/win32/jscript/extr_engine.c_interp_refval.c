
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
 int exprval_propget (int *,int *,int *) ;
 int stack_push (int *,int ) ;
 int stack_topn_exprval (int *,int ,int *) ;
 int throw_reference_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT interp_refval(script_ctx_t *ctx)
{
    exprval_t ref;
    jsval_t v;
    HRESULT hres;

    TRACE("\n");

    if(!stack_topn_exprval(ctx, 0, &ref))
        return throw_reference_error(ctx, JS_E_ILLEGAL_ASSIGN, ((void*)0));

    hres = exprval_propget(ctx, &ref, &v);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, v);
}
