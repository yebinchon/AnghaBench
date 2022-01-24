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
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_HINT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, jsval_t lval, jsval_t rval, BOOL greater, BOOL *ret)
{
    double ln, rn;
    jsval_t l, r;
    HRESULT hres;

    hres = FUNC9(ctx, lval, &l, NO_HINT);
    if(FUNC0(hres))
        return hres;

    hres = FUNC9(ctx, rval, &r, NO_HINT);
    if(FUNC0(hres)) {
        FUNC7(l);
        return hres;
    }

    if(FUNC3(l) && FUNC3(r)) {
        *ret = (FUNC5(FUNC2(l), FUNC2(r)) < 0) ^ greater;
        FUNC6(FUNC2(l));
        FUNC6(FUNC2(r));
        return S_OK;
    }

    hres = FUNC8(ctx, l, &ln);
    FUNC7(l);
    if(FUNC1(hres))
        hres = FUNC8(ctx, r, &rn);
    FUNC7(r);
    if(FUNC0(hres))
        return hres;

    *ret = !FUNC4(ln) && !FUNC4(rn) && ((ln < rn) ^ greater);
    return S_OK;
}