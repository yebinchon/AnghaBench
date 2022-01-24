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
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (double) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    INT start=0, end, length;
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

        if(d >= 0)
            end = FUNC3(d) ? FUNC8(length, d) : length;
        else
            end = 0;
    }else {
        end = length;
    }

    if(start > end) {
        INT tmp = start;
        start = end;
        end = tmp;
    }

    if(r) {
        jsstr_t *ret = FUNC6(str, start, end-start);
        if(ret)
            *r = FUNC7(ret);
        else
            hres = E_OUTOFMEMORY;
    }
    FUNC5(str);
    return hres;
}