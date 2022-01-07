
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int S_OK ;
 int TRACE (char*) ;
 int is_finite (double) ;
 int jsval_bool (int ) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT JSGlobal_isFinite(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    BOOL ret = FALSE;
    HRESULT hres;

    TRACE("\n");

    if(argc) {
        double n;

        hres = to_number(ctx, argv[0], &n);
        if(FAILED(hres))
            return hres;

        ret = is_finite(n);
    }

    if(r)
        *r = jsval_bool(ret);
    return S_OK;
}
