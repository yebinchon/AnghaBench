
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int fmod (double,double) ;
 int jsval_number (int ) ;
 int stack_pop_number (int *,double*) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_mod(script_ctx_t *ctx)
{
    double l, r;
    HRESULT hres;

    TRACE("\n");

    hres = stack_pop_number(ctx, &r);
    if(FAILED(hres))
        return hres;

    hres = stack_pop_number(ctx, &l);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_number(fmod(l, r)));
}
