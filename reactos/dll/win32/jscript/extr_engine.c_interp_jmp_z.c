
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
 int stack_pop (int *) ;
 int to_boolean (int ,scalar_t__*) ;

__attribute__((used)) static HRESULT interp_jmp_z(script_ctx_t *ctx)
{
    const unsigned arg = get_op_uint(ctx, 0);
    BOOL b;
    jsval_t v;
    HRESULT hres;

    TRACE("\n");

    v = stack_pop(ctx);
    hres = to_boolean(v, &b);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    if(b)
        jmp_next(ctx);
    else
        jmp_abs(ctx, arg);
    return S_OK;
}
