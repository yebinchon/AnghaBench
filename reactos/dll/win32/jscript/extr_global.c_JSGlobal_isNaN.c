
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
 int TRUE ;
 int isnan (double) ;
 int jsval_bool (int ) ;
 int to_number (int *,int ,double*) ;

__attribute__((used)) static HRESULT JSGlobal_isNaN(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    BOOL ret = TRUE;
    double n;
    HRESULT hres;

    TRACE("\n");

    if(argc) {
        hres = to_number(ctx, argv[0], &n);
        if(FAILED(hres))
            return hres;

        if(!isnan(n))
            ret = FALSE;
    }

    if(r)
        *r = jsval_bool(ret);
    return S_OK;
}
