
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsstr_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int get_string_val (int *,int *,int **) ;
 int * jsstr_flatten (int *) ;
 int jsstr_release (int *) ;

__attribute__((used)) static HRESULT get_string_flat_val(script_ctx_t *ctx, vdisp_t *jsthis, jsstr_t **jsval, const WCHAR **val)
{
    HRESULT hres;

    hres = get_string_val(ctx, jsthis, jsval);
    if(FAILED(hres))
        return hres;

    *val = jsstr_flatten(*jsval);
    if(*val)
        return S_OK;

    jsstr_release(*jsval);
    return E_OUTOFMEMORY;
}
