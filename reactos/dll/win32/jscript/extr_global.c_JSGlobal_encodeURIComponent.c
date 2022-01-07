
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int buf ;
typedef int WORD ;
typedef scalar_t__ WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BYTE ;


 int CP_UTF8 ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int JS_E_INVALID_URI_CHAR ;
 int S_OK ;
 int TRACE (char*) ;
 int WideCharToMultiByte (int ,int ,scalar_t__ const*,int,char*,int,int *,int *) ;
 void* int_to_char (char) ;
 scalar_t__ is_uri_unescaped (scalar_t__ const) ;
 int * jsstr_alloc_buf (int,scalar_t__**) ;
 int jsstr_release (int *) ;
 int * jsstr_undefined () ;
 int jsval_string (int *) ;
 int throw_uri_error (int *,int ,int *) ;
 int to_flat_string (int *,int ,int **,scalar_t__ const**) ;

__attribute__((used)) static HRESULT JSGlobal_encodeURIComponent(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str, *ret_str;
    char buf[4];
    const WCHAR *ptr, *uri;
    DWORD len = 0, size, i;
    WCHAR *ret;
    HRESULT hres;

    TRACE("\n");

    if(!argc) {
        if(r)
            *r = jsval_string(jsstr_undefined());
        return S_OK;
    }

    hres = to_flat_string(ctx, argv[0], &str, &uri);
    if(FAILED(hres))
        return hres;

    for(ptr = uri; *ptr; ptr++) {
        if(is_uri_unescaped(*ptr))
            len++;
        else {
            size = WideCharToMultiByte(CP_UTF8, 0, ptr, 1, ((void*)0), 0, ((void*)0), ((void*)0));
            if(!size) {
                jsstr_release(str);
                return throw_uri_error(ctx, JS_E_INVALID_URI_CHAR, ((void*)0));
            }
            len += size*3;
        }
    }

    ret_str = jsstr_alloc_buf(len, &ret);
    if(!ret_str) {
        jsstr_release(str);
        return E_OUTOFMEMORY;
    }

    for(ptr = uri; *ptr; ptr++) {
        if(is_uri_unescaped(*ptr)) {
            *ret++ = *ptr;
        }else {
            size = WideCharToMultiByte(CP_UTF8, 0, ptr, 1, buf, sizeof(buf), ((void*)0), ((void*)0));
            for(i=0; i<size; i++) {
                *ret++ = '%';
                *ret++ = int_to_char((BYTE)buf[i] >> 4);
                *ret++ = int_to_char(buf[i] & 0x0f);
            }
        }
    }

    jsstr_release(str);

    if(r)
        *r = jsval_string(ret_str);
    else
        jsstr_release(ret_str);
    return S_OK;
}
