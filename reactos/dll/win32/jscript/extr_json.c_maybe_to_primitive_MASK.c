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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  JSCLASS_BOOLEAN ; 
 int /*<<< orphan*/  JSCLASS_NUMBER ; 
 int /*<<< orphan*/  JSCLASS_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, jsval_t val, jsval_t *r)
{
    jsdisp_t *obj;
    HRESULT hres;

    if(!FUNC5(val) || !FUNC2(val) || !(obj = FUNC3(FUNC2(val))))
        return FUNC8(val, r);

    if(FUNC4(obj, JSCLASS_NUMBER)) {
        double n;
        hres = FUNC12(ctx, val, &n);
        FUNC6(obj);
        if(FUNC0(hres))
            *r = FUNC9(n);
        return hres;
    }

    if(FUNC4(obj, JSCLASS_STRING)) {
        jsstr_t *str;
        hres = FUNC13(ctx, val, &str);
        FUNC6(obj);
        if(FUNC0(hres))
            *r = FUNC11(str);
        return hres;
    }

    if(FUNC4(obj, JSCLASS_BOOLEAN)) {
        *r = FUNC7(FUNC1(obj));
        FUNC6(obj);
        return S_OK;
    }

    *r = FUNC10(obj);
    return S_OK;
}