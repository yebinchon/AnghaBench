
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_5__ {int paren_count; int match_len; int const* cp; TYPE_1__* parens; } ;
typedef TYPE_2__ match_state_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int WCHAR ;
struct TYPE_4__ {int index; int length; } ;
typedef int HRESULT ;
typedef size_t DWORD ;


 int DISPATCH_METHOD ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int get_string (int ) ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int jsdisp_call_value (int *,int *,int ,unsigned int,int *,int *) ;
 int * jsstr_alloc_len (int const*,int) ;
 int * jsstr_empty () ;
 int jsstr_release (int ) ;
 int * jsstr_substr (int *,int,int ) ;
 int jsval_number (int) ;
 int jsval_release (int ) ;
 int jsval_string (int *) ;
 int to_string (int *,int ,int **) ;

__attribute__((used)) static HRESULT rep_call(script_ctx_t *ctx, jsdisp_t *func,
        jsstr_t *jsstr, const WCHAR *str, match_state_t *match, jsstr_t **ret)
{
    jsval_t *argv;
    unsigned argc;
    jsval_t val;
    jsstr_t *tmp_str;
    DWORD i;
    HRESULT hres = S_OK;

    argc = match->paren_count+3;
    argv = heap_alloc_zero(sizeof(*argv)*argc);
    if(!argv)
        return E_OUTOFMEMORY;

    tmp_str = jsstr_alloc_len(match->cp-match->match_len, match->match_len);
    if(!tmp_str)
        hres = E_OUTOFMEMORY;
    argv[0] = jsval_string(tmp_str);

    if(SUCCEEDED(hres)) {
        for(i=0; i < match->paren_count; i++) {
            if(match->parens[i].index != -1)
                tmp_str = jsstr_substr(jsstr, match->parens[i].index, match->parens[i].length);
            else
                tmp_str = jsstr_empty();
            if(!tmp_str) {
               hres = E_OUTOFMEMORY;
               break;
            }
            argv[i+1] = jsval_string(tmp_str);
        }
    }

    if(SUCCEEDED(hres)) {
        argv[match->paren_count+1] = jsval_number(match->cp-str - match->match_len);
        argv[match->paren_count+2] = jsval_string(jsstr);
    }

    if(SUCCEEDED(hres))
        hres = jsdisp_call_value(func, ((void*)0), DISPATCH_METHOD, argc, argv, &val);

    for(i=0; i <= match->paren_count; i++)
        jsstr_release(get_string(argv[i]));
    heap_free(argv);

    if(FAILED(hres))
        return hres;

    hres = to_string(ctx, val, ret);
    jsval_release(val);
    return hres;
}
