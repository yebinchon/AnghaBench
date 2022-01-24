#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_5__ {int /*<<< orphan*/  tmp_heap; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  match_state_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  heap_pool_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__*) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    match_state_t *match;
    heap_pool_t *mark;
    BOOL b;
    jsstr_t *string;
    HRESULT hres;

    FUNC2("\n");

    mark = FUNC5(&ctx->tmp_heap);

    hres = FUNC11(ctx, jsthis, argc ? argv[0] : FUNC10(FUNC6()), &string, &match, &b);
    if(FUNC0(hres)) {
        FUNC4(mark);
        return hres;
    }

    if(r) {
        if(b) {
            IDispatch *ret;

            hres = FUNC3(ctx, string, match, &ret);
            if(FUNC1(hres))
                *r = FUNC8(ret);
        }else {
            *r = FUNC9();
        }
    }

    FUNC4(mark);
    FUNC7(string);
    return hres;
}