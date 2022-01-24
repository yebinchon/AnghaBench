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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    jsval_t val;
    DWORD length;
    HRESULT hres;

    FUNC2("\n");

    hres = FUNC3(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres))
        return hres;

    if(!length) {
        hres = FUNC8(jsthis, 0);
        if(FUNC0(hres))
            return hres;

        if(r)
            *r = FUNC7();
        return S_OK;
    }

    length--;
    hres = FUNC5(jsthis, length, &val);
    if(FUNC1(hres))
        hres = FUNC4(jsthis, length);
    else if(hres == DISP_E_UNKNOWNNAME) {
        val = FUNC7();
        hres = S_OK;
    }else
        return hres;

    if(FUNC1(hres))
        hres = FUNC8(jsthis, length);

    if(FUNC0(hres)) {
        FUNC6(val);
        return hres;
    }

    if(r)
        *r = val;
    else
        FUNC6(val);
    return hres;
}