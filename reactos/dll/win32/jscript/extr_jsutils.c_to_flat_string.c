
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int * jsstr_flatten (int *) ;
 int jsstr_release (int *) ;
 int to_string (int *,int ,int **) ;

HRESULT to_flat_string(script_ctx_t *ctx, jsval_t val, jsstr_t **str, const WCHAR **ret_str)
{
    HRESULT hres;

    hres = to_string(ctx, val, str);
    if(FAILED(hres))
        return hres;

    *ret_str = jsstr_flatten(*str);
    if(!*ret_str) {
        jsstr_release(*str);
        return E_OUTOFMEMORY;
    }

    return S_OK;
}
