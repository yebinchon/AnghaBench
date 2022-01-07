
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef scalar_t__ INT ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int get_string_val (int *,int *,int **) ;
 scalar_t__ is_int32 (double) ;
 int * jsstr_empty () ;
 scalar_t__ jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int * jsstr_substr (int *,scalar_t__,int) ;
 int jsval_string (int *) ;
 int to_integer (int *,int ,double*) ;

__attribute__((used)) static HRESULT String_charAt(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str, *ret;
    INT pos = 0;
    HRESULT hres;

    TRACE("\n");

    hres = get_string_val(ctx, jsthis, &str);
    if(FAILED(hres))
        return hres;

    if(argc) {
        double d;

        hres = to_integer(ctx, argv[0], &d);
        if(FAILED(hres)) {
            jsstr_release(str);
            return hres;
        }
        pos = is_int32(d) ? d : -1;
    }

    if(!r) {
        jsstr_release(str);
        return S_OK;
    }

    if(0 <= pos && pos < jsstr_length(str)) {
        ret = jsstr_substr(str, pos, 1);
        if(!ret)
            return E_OUTOFMEMORY;
    }else {
        ret = jsstr_empty();
    }

    *r = jsval_string(ret);
    return S_OK;
}
