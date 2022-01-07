
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
typedef scalar_t__ DWORD ;


 int CP_UTF8 ;
 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int MB_ERR_INVALID_CHARS ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,scalar_t__) ;
 int S_OK ;
 int TRACE (char*) ;
 int hex_to_int (char const) ;
 int * jsstr_alloc_buf (scalar_t__,char**) ;
 int jsstr_release (int *) ;
 int * jsstr_undefined () ;
 int jsval_string (int *) ;
 int to_flat_string (int *,int ,int **,char const**) ;

__attribute__((used)) static HRESULT JSGlobal_decodeURIComponent(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    const WCHAR *ptr, *uri;
    jsstr_t *str, *ret;
    WCHAR *out_ptr;
    DWORD len = 0;
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

    ptr = uri;
    while(*ptr) {
        if(*ptr == '%') {
            char octets[4];
            unsigned char mask = 0x80;
            int i, size, num_bytes = 0;
            if(hex_to_int(*(ptr+1)) < 0 || hex_to_int(*(ptr+2)) < 0) {
                FIXME("Throw URIError: Invalid hex sequence\n");
                jsstr_release(str);
                return E_FAIL;
            }
            octets[0] = (hex_to_int(*(ptr+1)) << 4) + hex_to_int(*(ptr+2));
            ptr += 3;
            while(octets[0] & mask) {
                mask = mask >> 1;
                ++num_bytes;
            }
            if(num_bytes == 1 || num_bytes > 4) {
                FIXME("Throw URIError: Invalid initial UTF character\n");
                jsstr_release(str);
                return E_FAIL;
            }
            for(i = 1; i < num_bytes; ++i) {
                if(*ptr != '%'){
                    FIXME("Throw URIError: Incomplete UTF sequence\n");
                    jsstr_release(str);
                    return E_FAIL;
                }
                if(hex_to_int(*(ptr+1)) < 0 || hex_to_int(*(ptr+2)) < 0) {
                    FIXME("Throw URIError: Invalid hex sequence\n");
                    jsstr_release(str);
                    return E_FAIL;
                }
                octets[i] = (hex_to_int(*(ptr+1)) << 4) + hex_to_int(*(ptr+2));
                ptr += 3;
            }
            size = MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, octets,
                    num_bytes ? num_bytes : 1, ((void*)0), 0);
            if(size == 0) {
                FIXME("Throw URIError: Invalid UTF sequence\n");
                jsstr_release(str);
                return E_FAIL;
            }
            len += size;
        }else {
            ++ptr;
            ++len;
        }
    }

    ret = jsstr_alloc_buf(len, &out_ptr);
    if(!ret) {
        jsstr_release(str);
        return E_OUTOFMEMORY;
    }

    ptr = uri;
    while(*ptr) {
        if(*ptr == '%') {
            char octets[4];
            unsigned char mask = 0x80;
            int i, size, num_bytes = 0;
            octets[0] = (hex_to_int(*(ptr+1)) << 4) + hex_to_int(*(ptr+2));
            ptr += 3;
            while(octets[0] & mask) {
                mask = mask >> 1;
                ++num_bytes;
            }
            for(i = 1; i < num_bytes; ++i) {
                octets[i] = (hex_to_int(*(ptr+1)) << 4) + hex_to_int(*(ptr+2));
                ptr += 3;
            }
            size = MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, octets,
                    num_bytes ? num_bytes : 1, out_ptr, len);
            len -= size;
            out_ptr += size;
        }else {
            *out_ptr++ = *ptr++;
            --len;
        }
    }

    jsstr_release(str);

    if(r)
        *r = jsval_string(ret);
    else
        jsstr_release(ret);
    return S_OK;
}
