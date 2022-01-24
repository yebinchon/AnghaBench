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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_HINT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, jsval_t lval, jsval_t rval, jsval_t *ret)
{
    jsval_t r, l;
    HRESULT hres;

    hres = FUNC9(ctx, lval, &l, NO_HINT);
    if(FUNC0(hres))
        return hres;

    hres = FUNC9(ctx, rval, &r, NO_HINT);
    if(FUNC0(hres)) {
        FUNC6(l);
        return hres;
    }

    if(FUNC2(l) || FUNC2(r)) {
        jsstr_t *lstr, *rstr = NULL;

        hres = FUNC10(ctx, l, &lstr);
        if(FUNC1(hres))
            hres = FUNC10(ctx, r, &rstr);

        if(FUNC1(hres)) {
            jsstr_t *ret_str;

            ret_str = FUNC3(lstr, rstr);
            if(ret_str)
                *ret = FUNC7(ret_str);
            else
                hres = E_OUTOFMEMORY;
        }

        FUNC4(lstr);
        if(rstr)
            FUNC4(rstr);
    }else {
        double nl, nr;

        hres = FUNC8(ctx, l, &nl);
        if(FUNC1(hres)) {
            hres = FUNC8(ctx, r, &nr);
            if(FUNC1(hres))
                *ret = FUNC5(nl+nr);
        }
    }

    FUNC6(r);
    FUNC6(l);
    return hres;
}