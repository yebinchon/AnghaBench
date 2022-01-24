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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  dispex_prop_t ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ DISP_E_MEMBERNOTFOUND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

HRESULT FUNC8(IDispatch *disp, DISPID id, BOOL *ret)
{
    IDispatchEx *dispex;
    jsdisp_t *jsdisp;
    HRESULT hres;

    jsdisp = FUNC6(disp);
    if(jsdisp) {
        dispex_prop_t *prop;

        prop = FUNC5(jsdisp, id);
        if(prop)
            hres = FUNC4(prop, ret);
        else
            hres = DISP_E_MEMBERNOTFOUND;

        FUNC7(jsdisp);
        return hres;
    }

    hres = FUNC3(disp, &IID_IDispatchEx, (void**)&dispex);
    if(FUNC0(hres)) {
        *ret = FALSE;
        return S_OK;
    }

    hres = FUNC1(dispex, id);
    FUNC2(dispex);
    if(FUNC0(hres))
        return hres;

    *ret = hres == S_OK;
    return S_OK;
}