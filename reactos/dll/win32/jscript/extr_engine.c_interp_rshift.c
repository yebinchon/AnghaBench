
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int INT ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int jsval_number (int) ;
 int stack_pop_int (int *,int*) ;
 int stack_pop_uint (int *,int*) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_rshift(script_ctx_t *ctx)
{
    DWORD r;
    INT l;
    HRESULT hres;

    hres = stack_pop_uint(ctx, &r);
    if(FAILED(hres))
        return hres;

    hres = stack_pop_int(ctx, &l);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_number(l >> (r&0x1f)));
}
