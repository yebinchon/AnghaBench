
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int compiler_ctx_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef int BSTR ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 int FIXME (char*,int ) ;
 int S_OK ;
 int compiler_alloc_bstr_len (int *,char const*,int) ;
 int debugstr_w (char const*) ;
 scalar_t__ iswalnum (char const) ;
 int iswalpha (char const) ;
 scalar_t__ iswspace (char const) ;

__attribute__((used)) static HRESULT parse_arguments(compiler_ctx_t *ctx, const WCHAR *args, BSTR *arg_array, unsigned *args_size)
{
    const WCHAR *ptr = args, *ptr2;
    unsigned arg_cnt = 0;

    while(iswspace(*ptr))
        ptr++;
    if(!*ptr) {
        if(args_size)
            *args_size = 0;
        return S_OK;
    }

    while(1) {
        if(!iswalpha(*ptr) && *ptr != '_') {
            FIXME("expected alpha or '_': %s\n", debugstr_w(ptr));
            return E_FAIL;
        }

        ptr2 = ptr;
        while(iswalnum(*ptr) || *ptr == '_')
            ptr++;

        if(*ptr && *ptr != ',' && !iswspace(*ptr)) {
            FIXME("unexpected har %s\n", debugstr_w(ptr));
            return E_FAIL;
        }

        if(arg_array) {
            arg_array[arg_cnt] = compiler_alloc_bstr_len(ctx, ptr2, ptr-ptr2);
            if(!arg_array[arg_cnt])
                return E_OUTOFMEMORY;
        }
        arg_cnt++;

        while(iswspace(*ptr))
            ptr++;
        if(!*ptr)
            break;
        if(*ptr != ',') {
            FIXME("expected ',': %s\n", debugstr_w(ptr));
            return E_FAIL;
        }

        ptr++;
        while(iswspace(*ptr))
            ptr++;
    }

    if(args_size)
        *args_size = arg_cnt;
    return S_OK;
}
