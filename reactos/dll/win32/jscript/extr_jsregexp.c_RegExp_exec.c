
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_5__ {int tmp_heap; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int match_state_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int heap_pool_t ;
typedef int WORD ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*) ;
 int create_match_array (TYPE_1__*,int *,int *,int **) ;
 int heap_pool_clear (int *) ;
 int * heap_pool_mark (int *) ;
 int jsstr_empty () ;
 int jsstr_release (int *) ;
 int jsval_disp (int *) ;
 int jsval_null () ;
 int jsval_string (int ) ;
 int run_exec (TYPE_1__*,int *,int ,int **,int **,scalar_t__*) ;

__attribute__((used)) static HRESULT RegExp_exec(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    match_state_t *match;
    heap_pool_t *mark;
    BOOL b;
    jsstr_t *string;
    HRESULT hres;

    TRACE("\n");

    mark = heap_pool_mark(&ctx->tmp_heap);

    hres = run_exec(ctx, jsthis, argc ? argv[0] : jsval_string(jsstr_empty()), &string, &match, &b);
    if(FAILED(hres)) {
        heap_pool_clear(mark);
        return hres;
    }

    if(r) {
        if(b) {
            IDispatch *ret;

            hres = create_match_array(ctx, string, match, &ret);
            if(SUCCEEDED(hres))
                *r = jsval_disp(ret);
        }else {
            *r = jsval_null();
        }
    }

    heap_pool_clear(mark);
    jsstr_release(string);
    return hres;
}
