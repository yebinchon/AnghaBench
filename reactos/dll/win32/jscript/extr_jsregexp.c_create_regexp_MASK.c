#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  dispex; int /*<<< orphan*/  jsregexp; int /*<<< orphan*/ * str; int /*<<< orphan*/  last_index_val; } ;
typedef  TYPE_2__ RegExpInstance ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT FUNC11(script_ctx_t *ctx, jsstr_t *src, DWORD flags, jsdisp_t **ret)
{
    RegExpInstance *regexp;
    const WCHAR *str;
    HRESULT hres;

    str = FUNC7(src);
    if(!str)
        return E_OUTOFMEMORY;

    FUNC1("%s %x\n", FUNC4(str, FUNC8(src)), flags);

    hres = FUNC3(ctx, NULL, &regexp);
    if(FUNC0(hres))
        return hres;

    regexp->str = FUNC6(src);
    regexp->last_index_val = FUNC9(0);

    regexp->jsregexp = FUNC10(ctx, &ctx->tmp_heap, str, FUNC8(regexp->str), flags, FALSE);
    if(!regexp->jsregexp) {
        FUNC2("regexp_new failed\n");
        FUNC5(&regexp->dispex);
        return E_FAIL;
    }

    *ret = &regexp->dispex;
    return S_OK;
}