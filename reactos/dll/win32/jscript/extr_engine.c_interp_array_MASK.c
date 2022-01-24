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
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC13(script_ctx_t *ctx)
{
    jsstr_t *name_str;
    const WCHAR *name;
    jsval_t v, namev;
    IDispatch *obj;
    DISPID id;
    HRESULT hres;

    FUNC3("\n");

    namev = FUNC9(ctx);

    hres = FUNC10(ctx, &obj);
    if(FUNC0(hres)) {
        FUNC7(namev);
        return hres;
    }

    hres = FUNC12(ctx, namev, &name_str, &name);
    FUNC7(namev);
    if(FUNC0(hres)) {
        FUNC1(obj);
        return hres;
    }

    hres = FUNC4(ctx, obj, name, NULL, 0, &id);
    FUNC6(name_str);
    if(FUNC2(hres)) {
        hres = FUNC5(ctx, obj, id, &v);
    }else if(hres == DISP_E_UNKNOWNNAME) {
        v = FUNC8();
        hres = S_OK;
    }
    FUNC1(obj);
    if(FUNC0(hres))
        return hres;

    return FUNC11(ctx, v);
}