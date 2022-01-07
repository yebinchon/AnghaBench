
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
 unsigned int JSSTR_MAX_LENGTH ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int get_string_val (int *,int *,int **) ;
 int ** heap_alloc_zero (unsigned int const) ;
 int heap_free (int **) ;
 int * jsstr_alloc_buf (unsigned int,int **) ;
 int * jsstr_concat (int *,int *) ;
 int jsstr_flush (int *,int *) ;
 unsigned int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int jsval_string (int *) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT String_concat(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *ret = ((void*)0), *str;
    HRESULT hres;

    TRACE("\n");

    hres = get_string_val(ctx, jsthis, &str);
    if(FAILED(hres))
        return hres;

    switch(argc) {
    case 0:
        ret = str;
        break;
    case 1: {
        jsstr_t *arg_str;

        hres = to_string(ctx, argv[0], &arg_str);
        if(FAILED(hres)) {
            jsstr_release(str);
            return hres;
        }

        ret = jsstr_concat(str, arg_str);
        jsstr_release(str);
        if(!ret)
            return E_OUTOFMEMORY;
        break;
    }
    default: {
        const unsigned str_cnt = argc+1;
        unsigned len = 0, i;
        jsstr_t **strs;
        WCHAR *ptr;

        strs = heap_alloc_zero(str_cnt * sizeof(*strs));
        if(!strs) {
            jsstr_release(str);
            return E_OUTOFMEMORY;
        }

        strs[0] = str;
        for(i=0; i < argc; i++) {
            hres = to_string(ctx, argv[i], strs+i+1);
            if(FAILED(hres))
                break;
        }

        if(SUCCEEDED(hres)) {
            for(i=0; i < str_cnt; i++) {
                len += jsstr_length(strs[i]);
                if(len > JSSTR_MAX_LENGTH) {
                    hres = E_OUTOFMEMORY;
                    break;
                }
            }

            if(SUCCEEDED(hres)) {
                ret = jsstr_alloc_buf(len, &ptr);
                if(ret) {
                    for(i=0; i < str_cnt; i++)
                        ptr += jsstr_flush(strs[i], ptr);
                }else {
                    hres = E_OUTOFMEMORY;
                }
            }
        }

        while(i--)
            jsstr_release(strs[i]);
        heap_free(strs);
        if(FAILED(hres))
            return hres;
    }
    }

    if(r)
        *r = jsval_string(ret);
    else
        jsstr_release(ret);
    return S_OK;
}
