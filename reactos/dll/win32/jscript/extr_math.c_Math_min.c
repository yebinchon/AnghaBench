
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef unsigned int DWORD ;
typedef scalar_t__ DOUBLE ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ INFINITY ;
 int S_OK ;
 int TRACE (char*) ;
 scalar_t__ isnan (scalar_t__) ;
 int jsval_number (scalar_t__) ;
 int to_number (int *,int ,scalar_t__*) ;

__attribute__((used)) static HRESULT Math_min(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DOUBLE min, d;
    DWORD i;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_number(INFINITY);
        return S_OK;
    }

    hres = to_number(ctx, argv[0], &min);
    if(FAILED(hres))
        return hres;

    for(i=1; i < argc; i++) {
        hres = to_number(ctx, argv[i], &d);
        if(FAILED(hres))
            return hres;

        if(d < min || isnan(d))
            min = d;
    }

    if(r)
        *r = jsval_number(min);
    return S_OK;
}
