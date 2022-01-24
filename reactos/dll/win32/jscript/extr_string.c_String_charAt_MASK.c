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
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (double) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str, *ret;
    INT pos = 0;
    HRESULT hres;

    FUNC1("\n");

    hres = FUNC2(ctx, jsthis, &str);
    if(FUNC0(hres))
        return hres;

    if(argc) {
        double d;

        hres = FUNC9(ctx, argv[0], &d);
        if(FUNC0(hres)) {
            FUNC6(str);
            return hres;
        }
        pos = FUNC3(d) ? d : -1;
    }

    if(!r) {
        FUNC6(str);
        return S_OK;
    }

    if(0 <= pos && pos < FUNC5(str)) {
        ret = FUNC7(str, pos, 1);
        if(!ret)
            return E_OUTOFMEMORY;
    }else {
        ret = FUNC4();
    }

    *r = FUNC8(ret);
    return S_OK;
}