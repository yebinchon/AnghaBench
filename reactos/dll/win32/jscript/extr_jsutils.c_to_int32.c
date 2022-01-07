
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef scalar_t__ UINT32 ;
typedef scalar_t__ INT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 double fmod (double,double const) ;
 scalar_t__ is_finite (double) ;
 int to_number (int *,int ,double*) ;

HRESULT to_int32(script_ctx_t *ctx, jsval_t v, INT *ret)
{
    double n;
    HRESULT hres;

    const double p32 = (double)0xffffffff + 1;

    hres = to_number(ctx, v, &n);
    if(FAILED(hres))
        return hres;

    if(is_finite(n))
        n = n > 0 ? fmod(n, p32) : -fmod(-n, p32);
    else
        n = 0;

    *ret = (UINT32)n;
    return S_OK;
}
