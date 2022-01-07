
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
typedef scalar_t__ DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int int_to_char (int const) ;
 scalar_t__ is_ecma_nonblank (int const) ;
 int * jsstr_alloc_buf (scalar_t__,int**) ;
 int jsstr_release (int *) ;
 int * jsstr_undefined () ;
 int jsval_string (int *) ;
 int to_flat_string (int *,int ,int **,int const**) ;

__attribute__((used)) static HRESULT JSGlobal_escape(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *ret_str, *str;
    const WCHAR *ptr, *buf;
    DWORD len = 0;
    WCHAR *ret;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_string(jsstr_undefined());
        return S_OK;
    }

    hres = to_flat_string(ctx, argv[0], &str, &buf);
    if(FAILED(hres))
        return hres;

    for(ptr = buf; *ptr; ptr++) {
        if(*ptr > 0xff)
            len += 6;
        else if(is_ecma_nonblank(*ptr))
            len++;
        else
            len += 3;
    }

    ret_str = jsstr_alloc_buf(len, &ret);
    if(!ret_str) {
        jsstr_release(str);
        return E_OUTOFMEMORY;
    }

    len = 0;
    for(ptr = buf; *ptr; ptr++) {
        if(*ptr > 0xff) {
            ret[len++] = '%';
            ret[len++] = 'u';
            ret[len++] = int_to_char(*ptr >> 12);
            ret[len++] = int_to_char((*ptr >> 8) & 0xf);
            ret[len++] = int_to_char((*ptr >> 4) & 0xf);
            ret[len++] = int_to_char(*ptr & 0xf);
        }
        else if(is_ecma_nonblank(*ptr))
            ret[len++] = *ptr;
        else {
            ret[len++] = '%';
            ret[len++] = int_to_char(*ptr >> 4);
            ret[len++] = int_to_char(*ptr & 0xf);
        }
    }

    jsstr_release(str);

    if(r)
        *r = jsval_string(ret_str);
    else
        jsstr_release(ret_str);
    return S_OK;
}
