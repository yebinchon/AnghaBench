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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  dispex_prop_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  fdexNameCaseSensitive ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 

HRESULT FUNC16(script_ctx_t *ctx, IDispatch *disp, jsstr_t *name, BOOL *ret)
{
    IDispatchEx *dispex;
    jsdisp_t *jsdisp;
    BSTR bstr;
    HRESULT hres;

    jsdisp = FUNC9(disp);
    if(jsdisp) {
        dispex_prop_t *prop;
        const WCHAR *ptr;

        ptr = FUNC11(name);
        if(!ptr) {
            FUNC10(jsdisp);
            return E_OUTOFMEMORY;
        }

        hres = FUNC8(jsdisp, FUNC15(ptr), ptr, &prop);
        if(prop) {
            hres = FUNC7(prop, ret);
        }else {
            *ret = TRUE;
            hres = S_OK;
        }

        FUNC10(jsdisp);
        return hres;
    }

    bstr = FUNC5(NULL, FUNC13(name));
    if(!bstr)
        return E_OUTOFMEMORY;
    FUNC12(name, bstr);

    hres = FUNC3(disp, &IID_IDispatchEx, (void**)&dispex);
    if(FUNC4(hres)) {
        hres = FUNC0(dispex, bstr, FUNC14(ctx, fdexNameCaseSensitive));
        if(FUNC4(hres))
            *ret = hres == S_OK;
        FUNC1(dispex);
    }else {
        DISPID id;

        hres = FUNC2(disp, &IID_NULL, &bstr, 1, 0, &id);
        if(FUNC4(hres)) {
            /* Property exists and we can't delete it from pure IDispatch interface, so return false. */
            *ret = FALSE;
        }else if(hres == DISP_E_UNKNOWNNAME) {
            /* Property doesn't exist, so nothing to delete */
            *ret = TRUE;
            hres = S_OK;
        }
    }

    FUNC6(bstr);
    return hres;
}