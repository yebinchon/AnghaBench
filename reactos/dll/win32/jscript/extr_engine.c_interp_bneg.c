
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int INT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int jsval_number (int ) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_push (int *,int ) ;
 int to_int32 (int *,int ,int *) ;

__attribute__((used)) static HRESULT interp_bneg(script_ctx_t *ctx)
{
    jsval_t v;
    INT i;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);
    hres = to_int32(ctx, v, &i);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_number(~i));
}
