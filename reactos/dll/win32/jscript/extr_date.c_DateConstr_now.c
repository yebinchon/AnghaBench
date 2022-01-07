
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;
 int date_now () ;
 int jsval_number (int ) ;

__attribute__((used)) static HRESULT DateConstr_now(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    TRACE("\n");

    if(r) *r = jsval_number(date_now());
    return S_OK;
}
