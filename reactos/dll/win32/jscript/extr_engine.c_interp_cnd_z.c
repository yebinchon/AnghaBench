
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 unsigned int get_op_uint (int *,int ) ;
 int jmp_abs (int *,unsigned int const) ;
 int jmp_next (int *) ;
 int stack_popn (int *,int) ;
 int stack_top (int *) ;
 int to_boolean (int ,scalar_t__*) ;

__attribute__((used)) static HRESULT interp_cnd_z(script_ctx_t *ctx)
{
    const unsigned arg = get_op_uint(ctx, 0);
    BOOL b;
    HRESULT hres;

    TRACE("\n");

    hres = to_boolean(stack_top(ctx), &b);
    if(FAILED(hres))
        return hres;

    if(b) {
        stack_popn(ctx, 1);
        jmp_next(ctx);
    }else {
        jmp_abs(ctx, arg);
    }
    return S_OK;
}
