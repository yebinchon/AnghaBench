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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DWORD ;
typedef  scalar_t__ DISPID ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/  IID_NULL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int fdexNameCaseSensitive ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC12(script_ctx_t *ctx, IDispatch *disp, const WCHAR *name, BSTR name_bstr, DWORD flags, DISPID *id)
{
    IDispatchEx *dispex;
    jsdisp_t *jsdisp;
    BSTR bstr;
    HRESULT hres;

    jsdisp = FUNC8(disp);
    if(jsdisp) {
        hres = FUNC9(jsdisp, name, flags, id);
        FUNC10(jsdisp);
        return hres;
    }

    if(name_bstr) {
        bstr = name_bstr;
    }else {
        bstr = FUNC5(name);
        if(!bstr)
            return E_OUTOFMEMORY;
    }

    *id = 0;
    hres = FUNC3(disp, &IID_IDispatchEx, (void**)&dispex);
    if(FUNC4(hres)) {
        hres = FUNC0(dispex, bstr, FUNC11(ctx, flags|fdexNameCaseSensitive), id);
        FUNC1(dispex);
    }else {
        FUNC7("using IDispatch\n");
        hres = FUNC2(disp, &IID_NULL, &bstr, 1, 0, id);
    }

    if(name_bstr != bstr)
        FUNC6(bstr);
    return hres;
}