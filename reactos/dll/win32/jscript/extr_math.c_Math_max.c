
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
typedef int DOUBLE ;


 scalar_t__ FAILED (int ) ;
 int INFINITY ;
 int S_OK ;
 int TRACE (char*) ;
 scalar_t__ isnan (int ) ;
 int jsval_number (int ) ;
 int to_number (int *,int ,int *) ;

__attribute__((used)) static HRESULT Math_max(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    DOUBLE max, d;
    DWORD i;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_number(-INFINITY);
        return S_OK;
    }

    hres = to_number(ctx, argv[0], &max);
    if(FAILED(hres))
        return hres;

    for(i=1; i < argc; i++) {
        hres = to_number(ctx, argv[i], &d);
        if(FAILED(hres))
            return hres;

        if(d > max || isnan(d))
            max = d;
    }

    if(r)
        *r = jsval_number(max);
    return S_OK;
}
