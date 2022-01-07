
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_4__ {int tmp_heap; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int match_state_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
typedef int heap_pool_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int heap_pool_clear (int *) ;
 int * heap_pool_mark (int *) ;
 int jsstr_release (int *) ;
 int * jsstr_undefined () ;
 int jsval_bool (int ) ;
 int jsval_string (int *) ;
 int run_exec (TYPE_1__*,int *,int ,int *,int **,int *) ;

__attribute__((used)) static HRESULT RegExp_test(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    match_state_t *match;
    jsstr_t *undef_str;
    heap_pool_t *mark;
    BOOL b;
    HRESULT hres;

    TRACE("\n");

    mark = heap_pool_mark(&ctx->tmp_heap);
    hres = run_exec(ctx, jsthis, argc ? argv[0] : jsval_string(undef_str = jsstr_undefined()), ((void*)0), &match, &b);
    heap_pool_clear(mark);
    if(!argc)
        jsstr_release(undef_str);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_bool(b);
    return S_OK;
}
