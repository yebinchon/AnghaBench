
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int last_match_index; int last_match_length; TYPE_8__* match_parens; int * last_match; int tmp_heap; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_15__ {int match_len; int const* cp; TYPE_1__* parens; int paren_count; } ;
typedef TYPE_3__ match_state_t ;
typedef int jsstr_t ;
typedef int WCHAR ;
struct TYPE_17__ {int index; scalar_t__ length; } ;
struct TYPE_16__ {int jsregexp; } ;
struct TYPE_13__ {int index; scalar_t__ length; } ;
typedef TYPE_4__ RegExpInstance ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int ARRAY_SIZE (TYPE_8__*) ;
 scalar_t__ FAILED (scalar_t__) ;
 int REM_NO_CTX_UPDATE ;
 int REM_RESET_INDEX ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int * jsstr_addref (int *) ;
 int jsstr_length (int *) ;
 int jsstr_release (int *) ;
 int memset (TYPE_8__*,int ,int) ;
 int min (int,int ) ;
 scalar_t__ regexp_execute (int ,TYPE_2__*,int *,int const*,int ,TYPE_3__*) ;
 int set_last_index (TYPE_4__*,int) ;

__attribute__((used)) static HRESULT do_regexp_match_next(script_ctx_t *ctx, RegExpInstance *regexp,
        DWORD rem_flags, jsstr_t *jsstr, const WCHAR *str, match_state_t *ret)
{
    HRESULT hres;

    hres = regexp_execute(regexp->jsregexp, ctx, &ctx->tmp_heap,
            str, jsstr_length(jsstr), ret);
    if(FAILED(hres))
        return hres;
    if(hres == S_FALSE) {
        if(rem_flags & REM_RESET_INDEX)
            set_last_index(regexp, 0);
        return S_FALSE;
    }

    if(!(rem_flags & REM_NO_CTX_UPDATE) && ctx->last_match != jsstr) {
        jsstr_release(ctx->last_match);
        ctx->last_match = jsstr_addref(jsstr);
    }

    if(!(rem_flags & REM_NO_CTX_UPDATE)) {
        DWORD i, n = min(ARRAY_SIZE(ctx->match_parens), ret->paren_count);

        for(i=0; i < n; i++) {
            if(ret->parens[i].index == -1) {
                ctx->match_parens[i].index = 0;
                ctx->match_parens[i].length = 0;
            }else {
                ctx->match_parens[i].index = ret->parens[i].index;
                ctx->match_parens[i].length = ret->parens[i].length;
            }
        }

        if(n < ARRAY_SIZE(ctx->match_parens))
            memset(ctx->match_parens+n, 0, sizeof(ctx->match_parens) - n*sizeof(ctx->match_parens[0]));
    }

    set_last_index(regexp, ret->cp-str);

    if(!(rem_flags & REM_NO_CTX_UPDATE)) {
        ctx->last_match_index = ret->cp-str-ret->match_len;
        ctx->last_match_length = ret->match_len;
    }

    return S_OK;
}
