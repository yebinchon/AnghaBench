
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 double floor (double) ;
 scalar_t__ isnan (double) ;
 int to_number (int *,int ,double*) ;

HRESULT to_integer(script_ctx_t *ctx, jsval_t v, double *ret)
{
    double n;
    HRESULT hres;

    hres = to_number(ctx, v, &n);
    if(FAILED(hres))
        return hres;

    if(isnan(n))
        *ret = 0;
    else
        *ret = n >= 0.0 ? floor(n) : -floor(-n);
    return S_OK;
}
