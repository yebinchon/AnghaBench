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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, jsdisp_t *cmp_func, jsval_t v1, jsval_t v2, INT *cmp)
{
    HRESULT hres;

    if(cmp_func) {
        jsval_t args[2];
        jsval_t res;
        double n;

        args[0] = v1;
        args[1] = v2;

        hres = FUNC5(cmp_func, NULL, DISPATCH_METHOD, 2, args, &res);
        if(FUNC0(hres))
            return hres;

        hres = FUNC9(ctx, res, &n);
        FUNC8(res);
        if(FUNC0(hres))
            return hres;

        if(n == 0)
            *cmp = 0;
        *cmp = n > 0.0 ? 1 : -1;
    }else if(FUNC4(v1)) {
        *cmp = FUNC4(v2) ? 0 : 1;
    }else if(FUNC4(v2)) {
        *cmp = -1;
    }else if(FUNC3(v1) && FUNC3(v2)) {
        double d = FUNC2(v1)-FUNC2(v2);
        if(d > 0.0)
            *cmp = 1;
        else
            *cmp = d < -0.0 ? -1 : 0;
    }else {
        jsstr_t *x, *y;

        hres = FUNC10(ctx, v1, &x);
        if(FUNC0(hres))
            return hres;

        hres = FUNC10(ctx, v2, &y);
        if(FUNC1(hres)) {
            *cmp = FUNC6(x, y);
            FUNC7(y);
        }
        FUNC7(x);
        if(FUNC0(hres))
            return hres;
    }

    return S_OK;
}