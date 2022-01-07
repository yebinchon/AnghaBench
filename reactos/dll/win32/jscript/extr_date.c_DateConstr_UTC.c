
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 int date_utc (int *,unsigned int,int *,double*) ;
 int jsval_number (double) ;

__attribute__((used)) static HRESULT DateConstr_UTC(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    double n;
    HRESULT hres;

    TRACE("\n");

    hres = date_utc(ctx, argc, argv, &n);
    if(SUCCEEDED(hres) && r)
        *r = jsval_number(n);
    return hres;
}
