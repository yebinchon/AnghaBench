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
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    DWORD length = 0, i;
    jsval_t v, ret;
    HRESULT hres;

    FUNC2("\n");

    hres = FUNC3(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres))
        return hres;

    if(!length) {
        hres = FUNC9(jsthis, 0);
        if(FUNC0(hres))
            return hres;

        if(r)
            *r = FUNC8();
        return S_OK;
    }

    hres = FUNC5(jsthis, 0, &ret);
    if(hres == DISP_E_UNKNOWNNAME) {
        ret = FUNC8();
        hres = S_OK;
    }

    for(i=1; FUNC1(hres) && i<length; i++) {
        hres = FUNC5(jsthis, i, &v);
        if(hres == DISP_E_UNKNOWNNAME)
            hres = FUNC4(jsthis, i-1);
        else if(FUNC1(hres))
            hres = FUNC6(jsthis, i-1, v);
    }

    if(FUNC1(hres)) {
        hres = FUNC4(jsthis, length-1);
        if(FUNC1(hres))
            hres = FUNC9(jsthis, length-1);
    }

    if(FUNC0(hres))
        return hres;

    if(r)
        *r = ret;
    else
        FUNC7(ret);
    return hres;
}