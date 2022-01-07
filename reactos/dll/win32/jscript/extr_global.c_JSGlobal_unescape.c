
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int WORD ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int hex_to_int (char const) ;
 int * jsstr_alloc_buf (size_t,char**) ;
 int jsstr_release (int *) ;
 int * jsstr_undefined () ;
 int jsval_string (int *) ;
 int to_flat_string (int *,int ,int **,char const**) ;

__attribute__((used)) static HRESULT JSGlobal_unescape(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
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
        if(*ptr == '%') {
            if(hex_to_int(*(ptr+1))!=-1 && hex_to_int(*(ptr+2))!=-1)
                ptr += 2;
            else if(*(ptr+1)=='u' && hex_to_int(*(ptr+2))!=-1 && hex_to_int(*(ptr+3))!=-1
                    && hex_to_int(*(ptr+4))!=-1 && hex_to_int(*(ptr+5))!=-1)
                ptr += 5;
        }

        len++;
    }

    ret_str = jsstr_alloc_buf(len, &ret);
    if(!ret_str) {
        jsstr_release(str);
        return E_OUTOFMEMORY;
    }

    len = 0;
    for(ptr = buf; *ptr; ptr++) {
        if(*ptr == '%') {
            if(hex_to_int(*(ptr+1))!=-1 && hex_to_int(*(ptr+2))!=-1) {
                ret[len] = (hex_to_int(*(ptr+1))<<4) + hex_to_int(*(ptr+2));
                ptr += 2;
            }
            else if(*(ptr+1)=='u' && hex_to_int(*(ptr+2))!=-1 && hex_to_int(*(ptr+3))!=-1
                    && hex_to_int(*(ptr+4))!=-1 && hex_to_int(*(ptr+5))!=-1) {
                ret[len] = (hex_to_int(*(ptr+2))<<12) + (hex_to_int(*(ptr+3))<<8)
                    + (hex_to_int(*(ptr+4))<<4) + hex_to_int(*(ptr+5));
                ptr += 5;
            }
            else
                ret[len] = *ptr;
        }
        else
            ret[len] = *ptr;

        len++;
    }

    jsstr_release(str);

    if(r)
        *r = jsval_string(ret_str);
    else
        jsstr_release(ret_str);
    return S_OK;
}
