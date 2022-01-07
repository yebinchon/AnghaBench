
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int jsval_number (double) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_push (int *,int ) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT interp_tonum(script_ctx_t *ctx)
{
    jsval_t v;
    double n;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);
    hres = to_number(ctx, v, &n);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_number(n));
}
