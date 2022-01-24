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
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_5__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
typedef  TYPE_1__ jsdisp_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  event_target; } ;
typedef  TYPE_2__ function_code_t ;
typedef  int /*<<< orphan*/  exprval_t ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IBindEventHandler ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBindEventHandler ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC14(script_ctx_t *ctx, function_code_t *func, jsdisp_t *func_obj)
{
    IBindEventHandler *target;
    exprval_t exprval;
    IDispatch *disp;
    jsval_t v;
    HRESULT hres;

    hres = FUNC11(ctx, func->event_target, &exprval);
    if(FUNC0(hres))
        return hres;

    hres = FUNC9(ctx, &exprval, &v);
    if(FUNC0(hres))
        return hres;

    if(!FUNC12(v)) {
        FUNC1("Can't bind to %s\n", FUNC8(v));
        FUNC13(v);
    }

    disp = FUNC10(v);
    hres = FUNC4(disp, &IID_IBindEventHandler, (void**)&target);
    if(FUNC6(hres)) {
        hres = FUNC2(target, func->name, (IDispatch*)&func_obj->IDispatchEx_iface);
        FUNC3(target);
        if(FUNC0(hres))
            FUNC7("BindEvent failed: %08x\n", hres);
    }else {
        FUNC1("No IBindEventHandler, not yet supported binding\n");
    }

    FUNC5(disp);
    return hres;
}