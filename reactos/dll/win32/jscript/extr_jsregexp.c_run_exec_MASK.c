#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_9__ {int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  match_state_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {scalar_t__ last_index; int /*<<< orphan*/  dispex; TYPE_8__* jsregexp; } ;
typedef  TYPE_2__ RegExpInstance ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  JSCLASS_REGEXP ; 
 int REG_GLOB ; 
 int /*<<< orphan*/  REM_RESET_INDEX ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, jsval_t arg,
        jsstr_t **input, match_state_t **result, BOOL *ret)
{
    RegExpInstance *regexp;
    match_state_t *match;
    DWORD last_index = 0;
    const WCHAR *string;
    jsstr_t *jsstr;
    HRESULT hres;

    if(!FUNC3(jsthis, JSCLASS_REGEXP)) {
        FUNC1("Not a RegExp\n");
        return E_NOTIMPL;
    }

    regexp = FUNC6(jsthis);

    hres = FUNC9(ctx, arg, &jsstr, &string);
    if(FUNC0(hres))
        return hres;

    if(regexp->jsregexp->flags & REG_GLOB) {
        if(regexp->last_index < 0) {
            FUNC5(jsstr);
            FUNC8(regexp, 0);
            *ret = FALSE;
            if(input)
                *input = FUNC4();
            return S_OK;
        }

        last_index = regexp->last_index;
    }

    match = FUNC2(regexp->jsregexp, &ctx->tmp_heap, string+last_index);
    if(!match) {
        FUNC5(jsstr);
        return E_OUTOFMEMORY;
    }

    hres = FUNC7(ctx, &regexp->dispex, REM_RESET_INDEX, jsstr, &match);
    if(FUNC0(hres)) {
        FUNC5(jsstr);
        return hres;
    }

    *result = match;
    *ret = hres == S_OK;
    if(input)
        *input = jsstr;
    else
        FUNC5(jsstr);
    return S_OK;
}