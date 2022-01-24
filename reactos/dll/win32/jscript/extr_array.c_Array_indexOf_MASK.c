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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned int FUNC8 (double,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (double,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC11(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    unsigned length, i, from = 0;
    jsval_t search, value;
    BOOL eq;
    HRESULT hres;

    FUNC1("\n");

    hres = FUNC2(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres))
        return hres;
    if(!length) {
        if(r) *r = FUNC4(-1);
        return S_OK;
    }

    search = argc ? argv[0] : FUNC7();

    if(argc > 1) {
        double from_arg;

        hres = FUNC10(ctx, argv[1], &from_arg);
        if(FUNC0(hres))
            return hres;

        if(from_arg >= 0)
            from = FUNC9(from_arg, length);
        else
            from = FUNC8(from_arg + length, 0);
    }

    for(i = from; i < length; i++) {
        hres = FUNC3(jsthis, i, &value);
        if(hres == DISP_E_UNKNOWNNAME)
            continue;
        if(FUNC0(hres))
            return hres;

        hres = FUNC6(value, search, &eq);
        FUNC5(value);
        if(FUNC0(hres))
            return hres;
        if(eq) {
            if(r) *r = FUNC4(i);
            return S_OK;
        }
    }

    if(r) *r = FUNC4(-1);
    return S_OK;
}