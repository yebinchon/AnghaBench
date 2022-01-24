#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ei; } ;
struct TYPE_11__ {TYPE_2__ ei; int /*<<< orphan*/  lcid; TYPE_1__* jscaller; } ;
typedef  TYPE_3__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  dispex_prop_t ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_12__ {int member_2; int member_3; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  IServiceProvider_iface; } ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ DISPPARAMS ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYPUT ; 
 int /*<<< orphan*/  DISPATCH_PROPERTYPUTREF ; 
 int /*<<< orphan*/  DISPID_PROPERTYPUT ; 
 int /*<<< orphan*/  DISP_E_MEMBERNOTFOUND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ VT_DISPATCH ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

HRESULT FUNC15(script_ctx_t *ctx, IDispatch *disp, DISPID id, jsval_t val)
{
    jsdisp_t *jsdisp;
    HRESULT hres;

    jsdisp = FUNC11(disp);
    if(jsdisp) {
        dispex_prop_t *prop;

        prop = FUNC10(jsdisp, id);
        if(prop)
            hres = FUNC14(jsdisp, prop, val);
        else
            hres = DISP_E_MEMBERNOTFOUND;

        FUNC12(jsdisp);
    }else {
        DISPID dispid = DISPID_PROPERTYPUT;
        DWORD flags = DISPATCH_PROPERTYPUT;
        VARIANT var;
        DISPPARAMS dp  = {var, dispid, 1, 1};
        IDispatchEx *dispex;

        hres = FUNC13(val, &var);
        if(FUNC0(hres))
            return hres;

        if(FUNC7(&var) == VT_DISPATCH)
            flags |= DISPATCH_PROPERTYPUTREF;

        FUNC9(ctx);
        hres = FUNC4(disp, &IID_IDispatchEx, (void**)&dispex);
        if(FUNC5(hres)) {
            hres = FUNC1(dispex, id, ctx->lcid, flags, &dp, NULL, &ctx->ei.ei,
                    &ctx->jscaller->IServiceProvider_iface);
            FUNC2(dispex);
        }else {
            ULONG err = 0;

            FUNC6("using IDispatch\n");
            hres = FUNC3(disp, id, &IID_NULL, ctx->lcid, flags, &dp, NULL, &ctx->ei.ei, &err);
        }

        FUNC8(&var);
    }

    return hres;
}