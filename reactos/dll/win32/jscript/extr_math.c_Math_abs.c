
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 double NAN ;
 int S_OK ;
 int TRACE (char*) ;
 int jsval_number (double) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT Math_abs(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    double d;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_number(NAN);
        return S_OK;
    }

    hres = to_number(ctx, argv[0], &d);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_number(d < 0.0 ? -d : d);
    return S_OK;
}
