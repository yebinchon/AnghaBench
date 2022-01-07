
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
 int NAN ;
 int S_OK ;
 int TRACE (char*) ;
 int floor (double) ;
 int jsval_number (int ) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT Math_floor(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    double x;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_number(NAN);
        return S_OK;
    }

    hres = to_number(ctx, argv[0], &x);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_number(floor(x));
    return S_OK;
}
