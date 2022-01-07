
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int TRACE (char*) ;
 int jsval_number (double) ;
 int stack_pop_number (int *,double*) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_minus(script_ctx_t *ctx)
{
    double n;
    HRESULT hres;

    TRACE("\n");

    hres = stack_pop_number(ctx, &n);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_number(-n));
}
