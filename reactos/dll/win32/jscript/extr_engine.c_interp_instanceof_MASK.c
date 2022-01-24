#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_7__ {struct TYPE_7__* prototype; } ;
typedef  TYPE_1__ jsdisp_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSCLASS_FUNCTION ; 
 int /*<<< orphan*/  JS_E_FUNCTION_EXPECTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static HRESULT FUNC16(script_ctx_t *ctx)
{
    jsdisp_t *obj, *iter, *tmp = NULL;
    jsval_t prot, v;
    BOOL ret = FALSE;
    HRESULT hres;

    static const WCHAR prototypeW[] = {'p','r','o','t','o','t', 'y', 'p','e',0};

    v = FUNC12(ctx);
    if(!FUNC7(v) || !FUNC4(v)) {
        FUNC11(v);
        return FUNC14(ctx, JS_E_FUNCTION_EXPECTED, NULL);
    }

    obj = FUNC5(FUNC4(v));
    FUNC2(FUNC4(v));
    if(!obj) {
        FUNC1("non-jsdisp objects not supported\n");
        return E_FAIL;
    }

    if(FUNC6(obj, JSCLASS_FUNCTION)) {
        hres = FUNC8(obj, prototypeW, &prot);
    }else {
        hres = FUNC14(ctx, JS_E_FUNCTION_EXPECTED, NULL);
    }
    FUNC9(obj);
    if(FUNC0(hres))
        return hres;

    v = FUNC12(ctx);

    if(FUNC7(prot)) {
        if(FUNC7(v))
            tmp = FUNC5(FUNC4(v));
        for(iter = tmp; !ret && iter; iter = iter->prototype) {
            hres = FUNC3(FUNC4(prot), FUNC15(iter), &ret);
            if(FUNC0(hres))
                break;
        }

        if(tmp)
            FUNC9(tmp);
    }else {
        FUNC1("prototype is not an object\n");
        hres = E_FAIL;
    }

    FUNC11(prot);
    FUNC11(v);
    if(FUNC0(hres))
        return hres;

    return FUNC13(ctx, FUNC10(ret));
}