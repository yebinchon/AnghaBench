#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
struct TYPE_5__ {int /*<<< orphan*/  hres; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef  TYPE_2__ exprval_t ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdexEnumDefault ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC29(script_ctx_t *ctx)
{
    const HRESULT arg = FUNC14(ctx, 0);
    IDispatch *obj = NULL;
    IDispatchEx *dispex;
    exprval_t prop_ref;
    DISPID id;
    BSTR name = NULL;
    HRESULT hres;

    FUNC9("\n");

    FUNC10(FUNC15(FUNC26(ctx)));
    id = FUNC12(FUNC26(ctx));

    if(!FUNC28(ctx, 1, &prop_ref)) {
        FUNC1("invalid ref: %08x\n", prop_ref.u.hres);
        return E_FAIL;
    }

    if(FUNC16(FUNC27(ctx, 3)))
        obj = FUNC13(FUNC27(ctx, 3));

    if(obj) {
        hres = FUNC5(obj, &IID_IDispatchEx, (void**)&dispex);
        if(FUNC6(hres)) {
            hres = FUNC3(dispex, fdexEnumDefault, id, &id);
            if(hres == S_OK)
                hres = FUNC2(dispex, id, &name);
            FUNC4(dispex);
            if(FUNC0(hres))
                return hres;
        }else {
            FUNC9("No IDispatchEx\n");
        }
    }

    if(name) {
        jsstr_t *str;

        str = FUNC19(name, FUNC8(name));
        FUNC7(name);
        if(!str)
            return E_OUTOFMEMORY;

        FUNC23(ctx);
        FUNC25(ctx, FUNC21(id)); /* safe, just after pop() */

        hres = FUNC11(ctx, &prop_ref, FUNC22(str));
        FUNC20(str);
        if(FUNC0(hres))
            return hres;

        FUNC18(ctx);
    }else {
        FUNC24(ctx, 4);
        FUNC17(ctx, arg);
    }
    return S_OK;
}