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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  scalar_t__ hint_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  DISPID_VALUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HINT_NUMBER ; 
 scalar_t__ HINT_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSCLASS_DATE ; 
 int /*<<< orphan*/  JS_E_TO_PRIMITIVE ; 
 scalar_t__ NO_HINT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HRESULT FUNC15(script_ctx_t *ctx, jsval_t val, jsval_t *ret, hint_t hint)
{
    if(FUNC8(val)) {
        jsdisp_t *jsdisp;
        jsval_t prim;
        DISPID id;
        HRESULT hres;

        static const WCHAR toStringW[] = {'t','o','S','t','r','i','n','g',0};
        static const WCHAR valueOfW[] = {'v','a','l','u','e','O','f',0};

        if(!FUNC5(val)) {
            *ret = FUNC13();
            return S_OK;
        }

        jsdisp = FUNC6(FUNC5(val));
        if(!jsdisp)
            return FUNC4(ctx, FUNC5(val), DISPID_VALUE, ret);

        if(hint == NO_HINT)
            hint = FUNC7(jsdisp, JSCLASS_DATE) ? HINT_STRING : HINT_NUMBER;

        /* Native implementation doesn't throw TypeErrors, returns strange values */

        hres = FUNC10(jsdisp, hint == HINT_STRING ? toStringW : valueOfW, 0, &id);
        if(FUNC2(hres)) {
            hres = FUNC9(jsdisp, id, DISPATCH_METHOD, 0, NULL, &prim);
            if(FUNC0(hres)) {
                FUNC3("call error - forwarding exception\n");
                FUNC11(jsdisp);
                return hres;
            }else if(!FUNC8(prim)) {
                FUNC11(jsdisp);
                *ret = prim;
                return S_OK;
            }else {
                FUNC1(FUNC5(prim));
            }
        }

        hres = FUNC10(jsdisp, hint == HINT_STRING ? valueOfW : toStringW, 0, &id);
        if(FUNC2(hres)) {
            hres = FUNC9(jsdisp, id, DISPATCH_METHOD, 0, NULL, &prim);
            if(FUNC0(hres)) {
                FUNC3("call error - forwarding exception\n");
                FUNC11(jsdisp);
                return hres;
            }else if(!FUNC8(prim)) {
                FUNC11(jsdisp);
                *ret = prim;
                return S_OK;
            }else {
                FUNC1(FUNC5(prim));
            }
        }

        FUNC11(jsdisp);

        FUNC3("failed\n");
        return FUNC14(ctx, JS_E_TO_PRIMITIVE, NULL);
    }

    return FUNC12(val, ret);

}