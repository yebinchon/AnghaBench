#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_3__ {int /*<<< orphan*/  safearray; } ;
typedef  TYPE_1__ VBArrayInstance ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ DISP_E_BADINDEX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  JS_E_SUBSCRIPT_OUT_OF_RANGE ; 
 int /*<<< orphan*/  JS_E_VBARRAY_EXPECTED ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC8(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    int dim;
    HRESULT hres;

    FUNC2("\n");

    vbarray = FUNC7(vthis);
    if(!vbarray)
        return FUNC5(ctx, JS_E_VBARRAY_EXPECTED, NULL);

    if(argc) {
        hres = FUNC6(ctx, argv[0], &dim);
        if(FUNC0(hres))
            return hres;
    } else
        dim = 1;

    hres = FUNC1(vbarray->safearray, dim, &dim);
    if(hres == DISP_E_BADINDEX)
        return FUNC4(ctx, JS_E_SUBSCRIPT_OUT_OF_RANGE, NULL);
    else if(FUNC0(hres))
        return hres;

    if(r)
        *r = FUNC3(dim);
    return S_OK;
}