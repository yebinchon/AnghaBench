
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT stack_pop_number(script_ctx_t *ctx, double *r)
{
    jsval_t v;
    HRESULT hres;

    v = stack_pop(ctx);
    hres = to_number(ctx, v, r);
    jsval_release(v);
    return hres;
}
