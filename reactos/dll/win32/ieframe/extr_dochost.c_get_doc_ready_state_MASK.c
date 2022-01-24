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
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_6__ {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_5__ {int /*<<< orphan*/  document; } ;
typedef  int /*<<< orphan*/  READYSTATE ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  EXCEPINFO ;
typedef  TYPE_1__ DocHost ;
typedef  TYPE_2__ DISPPARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_PROPERTYGET ; 
 int /*<<< orphan*/  DISPID_READYSTATE ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 scalar_t__ S_OK ; 
 scalar_t__ VT_I4 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC8(DocHost *This, READYSTATE *ret)
{
    DISPPARAMS dp = {NULL,NULL,0,0};
    IDispatch *disp;
    EXCEPINFO ei;
    VARIANT var;
    HRESULT hres;

    hres = FUNC3(This->document, &IID_IDispatch, (void**)&disp);
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(disp, DISPID_READYSTATE, &IID_NULL, LOCALE_SYSTEM_DEFAULT, DISPATCH_PROPERTYGET,
            &dp, &var, &ei, NULL);
    FUNC2(disp);
    if(FUNC0(hres)) {
        FUNC7("Invoke(DISPID_READYSTATE failed: %08x\n", hres);
        return hres;
    }

    if(FUNC5(&var) != VT_I4) {
        FUNC7("V_VT(var) = %d\n", FUNC5(&var));
        FUNC6(&var);
        return E_FAIL;
    }

    *ret = FUNC4(&var);
    return S_OK;
}