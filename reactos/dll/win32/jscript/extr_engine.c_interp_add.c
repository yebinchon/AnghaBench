
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int ,int ) ;
 int add_eval (int *,int ,int ,int *) ;
 int debugstr_jsval (int ) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_add(script_ctx_t *ctx)
{
    jsval_t l, r, ret;
    HRESULT hres;

    r = stack_pop(ctx);
    l = stack_pop(ctx);

    TRACE("%s + %s\n", debugstr_jsval(l), debugstr_jsval(r));

    hres = add_eval(ctx, l, r, &ret);
    jsval_release(l);
    jsval_release(r);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, ret);
}
