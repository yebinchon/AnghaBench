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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DOUBLE ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *arr, *jsthis;
    DOUBLE range;
    DWORD length, start, end, idx;
    HRESULT hres;

    FUNC2("\n");

    hres = FUNC5(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres))
        return hres;

    if(argc) {
        hres = FUNC12(ctx, argv[0], &range);
        if(FUNC0(hres))
            return hres;

        range = FUNC4(range);
        if(-range>length || FUNC6(range)) start = 0;
        else if(range < 0) start = range+length;
        else if(range <= length) start = range;
        else start = length;
    }
    else start = 0;

    if(argc > 1) {
        hres = FUNC12(ctx, argv[1], &range);
        if(FUNC0(hres))
            return hres;

        range = FUNC4(range);
        if(-range>length) end = 0;
        else if(range < 0) end = range+length;
        else if(range <= length) end = range;
        else end = length;
    }
    else end = length;

    hres = FUNC3(ctx, (end>start)?end-start:0, &arr);
    if(FUNC0(hres))
        return hres;

    for(idx=start; idx<end; idx++) {
        jsval_t v;

        hres = FUNC7(jsthis, idx, &v);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;

        if(FUNC1(hres)) {
            hres = FUNC8(arr, idx-start, v);
            FUNC11(v);
        }

        if(FUNC0(hres)) {
            FUNC9(arr);
            return hres;
        }
    }

    if(r)
        *r = FUNC10(arr);
    else
        FUNC9(arr);

    return S_OK;
}