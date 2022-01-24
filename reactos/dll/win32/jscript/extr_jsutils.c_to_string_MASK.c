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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HINT_STRING ; 
#define  JSV_BOOL 133 
#define  JSV_NULL 132 
#define  JSV_NUMBER 131 
#define  JSV_OBJECT 130 
#define  JSV_STRING 129 
#define  JSV_UNDEFINED 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC13(script_ctx_t *ctx, jsval_t val, jsstr_t **str)
{
    static const WCHAR nullW[] = {'n','u','l','l',0};
    static const WCHAR trueW[] = {'t','r','u','e',0};
    static const WCHAR falseW[] = {'f','a','l','s','e',0};

    switch(FUNC11(val)) {
    case JSV_UNDEFINED:
        *str = FUNC9();
        return S_OK;
    case JSV_NULL:
        *str = FUNC8(nullW);
        break;
    case JSV_NUMBER:
        return FUNC3(FUNC5(val), str);
    case JSV_STRING:
        *str = FUNC7(FUNC6(val));
        break;
    case JSV_OBJECT: {
        jsval_t prim;
        HRESULT hres;

        hres = FUNC12(ctx, val, &prim, HINT_STRING);
        if(FUNC0(hres))
            return hres;

        hres = FUNC13(ctx, prim, str);
        FUNC10(prim);
        return hres;
    }
    case JSV_BOOL:
        *str = FUNC8(FUNC4(val) ? trueW : falseW);
        break;
    default:
        FUNC1("unsupported %s\n", FUNC2(val));
        return E_NOTIMPL;
    }

    return *str ? S_OK : E_OUTOFMEMORY;
}