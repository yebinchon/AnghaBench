#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_1__ script_ctx_t ;
struct TYPE_15__ {int /*<<< orphan*/  match_len; int /*<<< orphan*/  cp; } ;
typedef  TYPE_2__ match_state_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  heap_pool_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_16__ {TYPE_12__* jsregexp; } ;
struct TYPE_13__ {int flags; } ;
typedef  TYPE_3__ RegExpInstance ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 int REG_GLOB ; 
 int REM_ALLOC_RESULT ; 
 int REM_CHECK_GLOBAL ; 
 int REM_NO_PARENS ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 TYPE_2__* FUNC0 (TYPE_12__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,TYPE_3__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 

HRESULT FUNC7(script_ctx_t *ctx, jsdisp_t *dispex,
        DWORD rem_flags, jsstr_t *jsstr, match_state_t **ret)
{
    RegExpInstance *regexp = FUNC6(dispex);
    match_state_t *match;
    heap_pool_t *mark;
    const WCHAR *str;
    HRESULT hres;

    if((rem_flags & REM_CHECK_GLOBAL) && !(regexp->jsregexp->flags & REG_GLOB)) {
        if(rem_flags & REM_ALLOC_RESULT)
            *ret = NULL;
        return S_FALSE;
    }

    str = FUNC5(jsstr);
    if(!str)
        return E_OUTOFMEMORY;

    if(rem_flags & REM_ALLOC_RESULT) {
        match = FUNC0(regexp->jsregexp, NULL, str);
        if(!match)
            return E_OUTOFMEMORY;
        *ret = match;
    }

    mark = FUNC4(&ctx->tmp_heap);

    if(rem_flags & REM_NO_PARENS) {
        match = FUNC0(regexp->jsregexp, &ctx->tmp_heap, NULL);
        if(!match) {
            FUNC3(mark);
            return E_OUTOFMEMORY;
        }
        match->cp = (*ret)->cp;
        match->match_len = (*ret)->match_len;
    }else {
        match = *ret;
    }

    hres = FUNC1(ctx, regexp, rem_flags, jsstr, str, match);

    if(rem_flags & REM_NO_PARENS) {
        (*ret)->cp = match->cp;
        (*ret)->match_len = match->match_len;
    }

    FUNC3(mark);

    if(hres != S_OK && (rem_flags & REM_ALLOC_RESULT)) {
        FUNC2(match);
        *ret = NULL;
    }

    return hres;
}