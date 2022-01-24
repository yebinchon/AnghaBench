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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JS_E_OBJECT_EXPECTED ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx)
{
    const WCHAR *str;
    jsstr_t *jsstr;
    jsval_t obj, v;
    DISPID id = 0;
    BOOL ret;
    HRESULT hres;

    FUNC3("\n");

    obj = FUNC10(ctx);
    if(!FUNC6(obj) || !FUNC5(obj)) {
        FUNC9(obj);
        return FUNC12(ctx, JS_E_OBJECT_EXPECTED, NULL);
    }

    v = FUNC10(ctx);
    hres = FUNC13(ctx, v, &jsstr, &str);
    FUNC9(v);
    if(FUNC0(hres)) {
        FUNC1(FUNC5(obj));
        return hres;
    }

    hres = FUNC4(ctx, FUNC5(obj), str, NULL, 0, &id);
    FUNC1(FUNC5(obj));
    FUNC7(jsstr);
    if(FUNC2(hres))
        ret = TRUE;
    else if(hres == DISP_E_UNKNOWNNAME)
        ret = FALSE;
    else
        return hres;

    return FUNC11(ctx, FUNC8(ret));
}