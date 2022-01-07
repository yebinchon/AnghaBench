
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
typedef int INT ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int get_string_flat_val (int *,int *,int **,int const**) ;
 scalar_t__ is_int32 (double) ;
 unsigned int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_number (int) ;
 int memcmp (int const*,int const*,unsigned int) ;
 unsigned int min (unsigned int,double) ;
 int to_flat_string (int *,int ,int **,int const**) ;
 int to_integer (int *,int ,double*) ;

__attribute__((used)) static HRESULT String_indexOf(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    unsigned pos = 0, search_len, length;
    jsstr_t *search_jsstr, *jsstr;
    const WCHAR *search_str, *str;
    INT ret = -1;
    HRESULT hres;

    TRACE("\n");

    hres = get_string_flat_val(ctx, jsthis, &jsstr, &str);
    if(FAILED(hres))
        return hres;

    if(!argc) {
        if(r)
            *r = jsval_number(-1);
        jsstr_release(jsstr);
        return S_OK;
    }

    hres = to_flat_string(ctx, argv[0], &search_jsstr, &search_str);
    if(FAILED(hres)) {
        jsstr_release(jsstr);
        return hres;
    }

    search_len = jsstr_length(search_jsstr);
    length = jsstr_length(jsstr);

    if(argc >= 2) {
        double d;

        hres = to_integer(ctx, argv[1], &d);
        if(SUCCEEDED(hres) && d > 0.0)
            pos = is_int32(d) ? min(length, d) : length;
    }

    if(SUCCEEDED(hres) && length >= search_len) {
        const WCHAR *end = str+length-search_len;
        const WCHAR *ptr;

        for(ptr = str+pos; ptr <= end; ptr++) {
            if(!memcmp(ptr, search_str, search_len*sizeof(WCHAR))) {
                ret = ptr-str;
                break;
            }
        }
    }

    jsstr_release(search_jsstr);
    jsstr_release(jsstr);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_number(ret);
    return S_OK;
}
