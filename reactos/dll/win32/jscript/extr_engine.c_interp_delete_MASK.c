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
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx)
{
    jsval_t objv, namev;
    IDispatch *obj;
    jsstr_t *name;
    BOOL ret;
    HRESULT hres;

    FUNC2("\n");

    namev = FUNC7(ctx);
    objv = FUNC7(ctx);

    hres = FUNC9(ctx, objv, &obj);
    FUNC6(objv);
    if(FUNC0(hres)) {
        FUNC6(namev);
        return hres;
    }

    hres = FUNC10(ctx, namev, &name);
    FUNC6(namev);
    if(FUNC0(hres)) {
        FUNC1(obj);
        return hres;
    }

    hres = FUNC3(ctx, obj, name, &ret);
    FUNC1(obj);
    FUNC4(name);
    if(FUNC0(hres))
        return hres;

    return FUNC8(ctx, FUNC5(ret));
}