#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int last_match_index; int last_match_length; TYPE_8__* match_parens; int /*<<< orphan*/ * last_match; int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_2__ script_ctx_t ;
struct TYPE_15__ {int match_len; int /*<<< orphan*/  const* cp; TYPE_1__* parens; int /*<<< orphan*/  paren_count; } ;
typedef  TYPE_3__ match_state_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_17__ {int index; scalar_t__ length; } ;
struct TYPE_16__ {int /*<<< orphan*/  jsregexp; } ;
struct TYPE_13__ {int index; scalar_t__ length; } ;
typedef  TYPE_4__ RegExpInstance ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_8__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int REM_NO_CTX_UPDATE ; 
 int REM_RESET_INDEX ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, RegExpInstance *regexp,
        DWORD rem_flags, jsstr_t *jsstr, const WCHAR *str, match_state_t *ret)
{
    HRESULT hres;

    hres = FUNC7(regexp->jsregexp, ctx, &ctx->tmp_heap,
            str, FUNC3(jsstr), ret);
    if(FUNC1(hres))
        return hres;
    if(hres == S_FALSE) {
        if(rem_flags & REM_RESET_INDEX)
            FUNC8(regexp, 0);
        return S_FALSE;
    }

    if(!(rem_flags & REM_NO_CTX_UPDATE) && ctx->last_match != jsstr) {
        FUNC4(ctx->last_match);
        ctx->last_match = FUNC2(jsstr);
    }

    if(!(rem_flags & REM_NO_CTX_UPDATE)) {
        DWORD i, n = FUNC6(FUNC0(ctx->match_parens), ret->paren_count);

        for(i=0; i < n; i++) {
            if(ret->parens[i].index == -1) {
                ctx->match_parens[i].index = 0;
                ctx->match_parens[i].length = 0;
            }else {
                ctx->match_parens[i].index = ret->parens[i].index;
                ctx->match_parens[i].length = ret->parens[i].length;
            }
        }

        if(n < FUNC0(ctx->match_parens))
            FUNC5(ctx->match_parens+n, 0, sizeof(ctx->match_parens) - n*sizeof(ctx->match_parens[0]));
    }

    FUNC8(regexp, ret->cp-str);

    if(!(rem_flags & REM_NO_CTX_UPDATE)) {
        ctx->last_match_index = ret->cp-str-ret->match_len;
        ctx->last_match_length = ret->match_len;
    }

    return S_OK;
}