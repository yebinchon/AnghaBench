#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NO_HINT ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx, jsval_t lval, jsval_t rval, BOOL *ret)
{
    if(FUNC13(lval) == FUNC13(rval) || (FUNC5(lval) && FUNC5(rval)))
       return FUNC12(lval, rval, ret);

    /* FIXME: NULL disps should be handled in more general way */
    if(FUNC6(lval) && !FUNC2(lval))
        return FUNC16(ctx, FUNC9(), rval, ret);
    if(FUNC6(rval) && !FUNC2(rval))
        return FUNC16(ctx, lval, FUNC9(), ret);

    if((FUNC4(lval) && FUNC8(rval)) || (FUNC8(lval) && FUNC4(rval))) {
        *ret = TRUE;
        return S_OK;
    }

    if(FUNC7(lval) && FUNC5(rval)) {
        double n;
        HRESULT hres;

        hres = FUNC14(ctx, lval, &n);
        if(FUNC0(hres))
            return hres;

        /* FIXME: optimize */
        return FUNC16(ctx, FUNC10(n), rval, ret);
    }

    if(FUNC7(rval) && FUNC5(lval)) {
        double n;
        HRESULT hres;

        hres = FUNC14(ctx, rval, &n);
        if(FUNC0(hres))
            return hres;

        /* FIXME: optimize */
        return FUNC16(ctx, lval, FUNC10(n), ret);
    }

    if(FUNC3(rval))
        return FUNC16(ctx, lval, FUNC10(FUNC1(rval) ? 1 : 0), ret);

    if(FUNC3(lval))
        return FUNC16(ctx, FUNC10(FUNC1(lval) ? 1 : 0), rval, ret);


    if(FUNC6(rval) && (FUNC7(lval) || FUNC5(lval))) {
        jsval_t prim;
        HRESULT hres;

        hres = FUNC15(ctx, rval, &prim, NO_HINT);
        if(FUNC0(hres))
            return hres;

        hres = FUNC16(ctx, lval, prim, ret);
        FUNC11(prim);
        return hres;
    }


    if(FUNC6(lval) && (FUNC7(rval) || FUNC5(rval))) {
        jsval_t prim;
        HRESULT hres;

        hres = FUNC15(ctx, lval, &prim, NO_HINT);
        if(FUNC0(hres))
            return hres;

        hres = FUNC16(ctx, prim, rval, ret);
        FUNC11(prim);
        return hres;
    }


    *ret = FALSE;
    return S_OK;
}