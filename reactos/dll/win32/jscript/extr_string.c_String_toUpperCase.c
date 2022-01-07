
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int get_string_val (int *,int *,int **) ;
 int * jsstr_alloc_buf (unsigned int,int **) ;
 int jsstr_flush (int *,int *) ;
 unsigned int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 int towupper (int ) ;

__attribute__((used)) static HRESULT String_toUpperCase(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str;
    HRESULT hres;

    TRACE("\n");

    hres = get_string_val(ctx, jsthis, &str);
    if(FAILED(hres))
        return hres;

    if(r) {
        unsigned len = jsstr_length(str);
        jsstr_t *ret;
        WCHAR *buf;

        ret = jsstr_alloc_buf(len, &buf);
        if(!ret) {
            jsstr_release(str);
            return E_OUTOFMEMORY;
        }

        jsstr_flush(str, buf);
        for (; len--; buf++) *buf = towupper(*buf);

        *r = jsval_string(ret);
    }
    jsstr_release(str);
    return S_OK;
}
