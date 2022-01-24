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

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HINT_NUMBER ; 
#define  JSV_BOOL 134 
#define  JSV_NULL 133 
#define  JSV_NUMBER 132 
#define  JSV_OBJECT 131 
#define  JSV_STRING 130 
#define  JSV_UNDEFINED 129 
#define  JSV_VARIANT 128 
 double NAN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC12(script_ctx_t *ctx, jsval_t val, double *ret)
{
    switch(FUNC9(val)) {
    case JSV_UNDEFINED:
        *ret = NAN;
        return S_OK;
    case JSV_NULL:
        *ret = 0;
        return S_OK;
    case JSV_NUMBER:
        *ret = FUNC5(val);
        return S_OK;
    case JSV_STRING:
        return FUNC10(FUNC6(val), ret);
    case JSV_OBJECT: {
        jsval_t prim;
        HRESULT hres;

        hres = FUNC11(ctx, val, &prim, HINT_NUMBER);
        if(FUNC0(hres))
            return hres;

        hres = FUNC12(ctx, prim, ret);
        FUNC8(prim);
        return hres;
    }
    case JSV_BOOL:
        *ret = FUNC4(val) ? 1 : 0;
        return S_OK;
    case JSV_VARIANT:
        FUNC1("unimplemented for variant %s\n", FUNC3(FUNC7(val)));
        return E_NOTIMPL;
    };

    FUNC2(0);
    return E_FAIL;
}