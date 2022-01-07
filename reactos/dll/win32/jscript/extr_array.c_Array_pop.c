
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*) ;
 scalar_t__ get_length (int *,int *,int **,int *) ;
 scalar_t__ jsdisp_delete_idx (int *,int ) ;
 scalar_t__ jsdisp_get_idx (int *,int ,int *) ;
 int jsval_release (int ) ;
 int jsval_undefined () ;
 scalar_t__ set_length (int *,int ) ;

__attribute__((used)) static HRESULT Array_pop(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    jsval_t val;
    DWORD length;
    HRESULT hres;

    TRACE("\n");

    hres = get_length(ctx, vthis, &jsthis, &length);
    if(FAILED(hres))
        return hres;

    if(!length) {
        hres = set_length(jsthis, 0);
        if(FAILED(hres))
            return hres;

        if(r)
            *r = jsval_undefined();
        return S_OK;
    }

    length--;
    hres = jsdisp_get_idx(jsthis, length, &val);
    if(SUCCEEDED(hres))
        hres = jsdisp_delete_idx(jsthis, length);
    else if(hres == DISP_E_UNKNOWNNAME) {
        val = jsval_undefined();
        hres = S_OK;
    }else
        return hres;

    if(SUCCEEDED(hres))
        hres = set_length(jsthis, length);

    if(FAILED(hres)) {
        jsval_release(val);
        return hres;
    }

    if(r)
        *r = val;
    else
        jsval_release(val);
    return hres;
}
