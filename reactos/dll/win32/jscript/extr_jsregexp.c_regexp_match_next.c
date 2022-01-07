
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_14__ {int tmp_heap; } ;
typedef TYPE_1__ script_ctx_t ;
struct TYPE_15__ {int match_len; int cp; } ;
typedef TYPE_2__ match_state_t ;
typedef int jsstr_t ;
typedef int jsdisp_t ;
typedef int heap_pool_t ;
typedef int WCHAR ;
struct TYPE_16__ {TYPE_12__* jsregexp; } ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_3__ RegExpInstance ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ E_OUTOFMEMORY ;
 int REG_GLOB ;
 int REM_ALLOC_RESULT ;
 int REM_CHECK_GLOBAL ;
 int REM_NO_PARENS ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 TYPE_2__* alloc_match_state (TYPE_12__*,int *,int const*) ;
 scalar_t__ do_regexp_match_next (TYPE_1__*,TYPE_3__*,int,int *,int const*,TYPE_2__*) ;
 int heap_free (TYPE_2__*) ;
 int heap_pool_clear (int *) ;
 int * heap_pool_mark (int *) ;
 int * jsstr_flatten (int *) ;
 TYPE_3__* regexp_from_jsdisp (int *) ;

HRESULT regexp_match_next(script_ctx_t *ctx, jsdisp_t *dispex,
        DWORD rem_flags, jsstr_t *jsstr, match_state_t **ret)
{
    RegExpInstance *regexp = regexp_from_jsdisp(dispex);
    match_state_t *match;
    heap_pool_t *mark;
    const WCHAR *str;
    HRESULT hres;

    if((rem_flags & REM_CHECK_GLOBAL) && !(regexp->jsregexp->flags & REG_GLOB)) {
        if(rem_flags & REM_ALLOC_RESULT)
            *ret = ((void*)0);
        return S_FALSE;
    }

    str = jsstr_flatten(jsstr);
    if(!str)
        return E_OUTOFMEMORY;

    if(rem_flags & REM_ALLOC_RESULT) {
        match = alloc_match_state(regexp->jsregexp, ((void*)0), str);
        if(!match)
            return E_OUTOFMEMORY;
        *ret = match;
    }

    mark = heap_pool_mark(&ctx->tmp_heap);

    if(rem_flags & REM_NO_PARENS) {
        match = alloc_match_state(regexp->jsregexp, &ctx->tmp_heap, ((void*)0));
        if(!match) {
            heap_pool_clear(mark);
            return E_OUTOFMEMORY;
        }
        match->cp = (*ret)->cp;
        match->match_len = (*ret)->match_len;
    }else {
        match = *ret;
    }

    hres = do_regexp_match_next(ctx, regexp, rem_flags, jsstr, str, match);

    if(rem_flags & REM_NO_PARENS) {
        (*ret)->cp = match->cp;
        (*ret)->match_len = match->match_len;
    }

    heap_pool_clear(mark);

    if(hres != S_OK && (rem_flags & REM_ALLOC_RESULT)) {
        heap_free(match);
        *ret = ((void*)0);
    }

    return hres;
}
