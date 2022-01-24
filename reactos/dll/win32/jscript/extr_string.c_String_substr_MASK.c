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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (double) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    int start=0, len, length;
    jsstr_t *str;
    double d;
    HRESULT hres;

    FUNC1("\n");

    hres = FUNC2(ctx, jsthis, &str);
    if(FUNC0(hres))
        return hres;

    length = FUNC4(str);
    if(argc >= 1) {
        hres = FUNC9(ctx, argv[0], &d);
        if(FUNC0(hres)) {
            FUNC5(str);
            return hres;
        }

        if(d >= 0)
            start = FUNC3(d) ? FUNC8(length, d) : length;
    }

    if(argc >= 2) {
        hres = FUNC9(ctx, argv[1], &d);
        if(FUNC0(hres)) {
            FUNC5(str);
            return hres;
        }

        if(d >= 0.0)
            len = FUNC3(d) ? FUNC8(length-start, d) : length-start;
        else
            len = 0;
    }else {
        len = length-start;
    }

    hres = S_OK;
    if(r) {
        jsstr_t *ret = FUNC6(str, start, len);
        if(ret)
            *r = FUNC7(ret);
        else
            hres = E_OUTOFMEMORY;
    }

    FUNC5(str);
    return hres;
}