
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 unsigned int get_op_uint (int *,int ) ;
 int jmp_abs (int *,unsigned int const) ;
 int jmp_next (int *) ;
 int jsval_release (int ) ;
 int jsval_strict_equal (int ,int ,scalar_t__*) ;
 int stack_pop (int *) ;
 int stack_popn (int *,int) ;
 int stack_top (int *) ;

__attribute__((used)) static HRESULT interp_case(script_ctx_t *ctx)
{
    const unsigned arg = get_op_uint(ctx, 0);
    jsval_t v;
    BOOL b;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);
    hres = jsval_strict_equal(stack_top(ctx), v, &b);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    if(b) {
        stack_popn(ctx, 1);
        jmp_abs(ctx, arg);
    }else {
        jmp_next(ctx);
    }
    return S_OK;
}
