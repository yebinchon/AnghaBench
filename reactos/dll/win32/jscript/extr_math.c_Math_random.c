
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef scalar_t__ UINT ;
typedef int HRESULT ;


 int E_UNEXPECTED ;
 int RtlGenRandom (scalar_t__*,int) ;
 int S_OK ;
 int TRACE (char*) ;
 scalar_t__ UINT_MAX ;
 int jsval_number (double) ;

__attribute__((used)) static HRESULT Math_random(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    UINT x;

    TRACE("\n");

    if(!RtlGenRandom(&x, sizeof(x)))
        return E_UNEXPECTED;

    if(r)
        *r = jsval_number((double)x/(double)UINT_MAX);
    return S_OK;
}
