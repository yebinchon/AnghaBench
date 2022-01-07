
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_5__ {size_t paren_count; char const* cp; int match_len; TYPE_1__* parens; } ;
typedef TYPE_2__ match_state_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
struct TYPE_4__ {int index; int length; } ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int create_array (int *,size_t,int **) ;
 int jsdisp_propput_idx (int *,size_t,int ) ;
 int jsdisp_propput_name (int *,char const*,int ) ;
 int jsdisp_release (int *) ;
 int * jsstr_addref (int *) ;
 int * jsstr_alloc_len (char const*,int) ;
 int * jsstr_empty () ;
 char* jsstr_flatten (int *) ;
 int jsstr_release (int *) ;
 int * jsstr_substr (int *,int,int ) ;
 int jsval_number (int) ;
 int jsval_string (int *) ;
 int * to_disp (int *) ;

__attribute__((used)) static HRESULT create_match_array(script_ctx_t *ctx, jsstr_t *input_str,
        const match_state_t *result, IDispatch **ret)
{
    const WCHAR *input;
    jsdisp_t *array;
    jsstr_t *str;
    DWORD i;
    HRESULT hres = S_OK;

    static const WCHAR indexW[] = {'i','n','d','e','x',0};
    static const WCHAR inputW[] = {'i','n','p','u','t',0};
    static const WCHAR lastIndexW[] = {'l','a','s','t','I','n','d','e','x',0};
    static const WCHAR zeroW[] = {'0',0};

    input = jsstr_flatten(input_str);
    if(!input)
        return E_OUTOFMEMORY;

    hres = create_array(ctx, result->paren_count+1, &array);
    if(FAILED(hres))
        return hres;

    for(i=0; i < result->paren_count; i++) {
        if(result->parens[i].index != -1)
            str = jsstr_substr(input_str, result->parens[i].index, result->parens[i].length);
        else
            str = jsstr_empty();
        if(!str) {
            hres = E_OUTOFMEMORY;
            break;
        }

        hres = jsdisp_propput_idx(array, i+1, jsval_string(str));
        jsstr_release(str);
        if(FAILED(hres))
            break;
    }

    while(SUCCEEDED(hres)) {
        hres = jsdisp_propput_name(array, indexW, jsval_number(result->cp-input-result->match_len));
        if(FAILED(hres))
            break;

        hres = jsdisp_propput_name(array, lastIndexW, jsval_number(result->cp-input));
        if(FAILED(hres))
            break;

        hres = jsdisp_propput_name(array, inputW, jsval_string(jsstr_addref(input_str)));
        if(FAILED(hres))
            break;

        str = jsstr_alloc_len(result->cp-result->match_len, result->match_len);
        if(!str) {
            hres = E_OUTOFMEMORY;
            break;
        }
        hres = jsdisp_propput_name(array, zeroW, jsval_string(str));
        jsstr_release(str);
        break;
    }

    if(FAILED(hres)) {
        jsdisp_release(array);
        return hres;
    }

    *ret = to_disp(array);
    return S_OK;
}
